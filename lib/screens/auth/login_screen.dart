import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:rta_web/screens/home_screen.dart';
import 'package:rta_web/screens/home_screen.dart';
import 'package:rta_web/utlis/colors.dart';
import 'package:rta_web/widgets/button_widget.dart';
import 'package:rta_web/widgets/text_widget.dart';
import 'package:rta_web/widgets/textfield_widget.dart';
import 'package:rta_web/widgets/toast_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final license = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/back.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/cdo.png',
                    height: 125,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextWidget(
                        text: 'REPUBLIC OF THE PHILIPPINES',
                        fontSize: 16,
                        fontFamily: 'Medium',
                      ),
                      TextWidget(
                        text: 'CITY OF CAGAYAN DE ORO',
                        fontSize: 16,
                        fontFamily: 'Medium',
                      ),
                      TextWidget(
                        text: 'ROADS AND TRAFFIC ADMINISTRATION',
                        fontSize: 16,
                        fontFamily: 'Medium',
                      ),
                      TextWidget(
                        text: 'OFFICIAL SYSTEM',
                        fontSize: 16,
                        fontFamily: 'Medium',
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    'assets/images/rta.png',
                    height: 125,
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Card(
                elevation: 10,
                child: Container(
                  width: 350,
                  height: 250,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: primary,
                      width: 2,
                    ),
                    image: const DecorationImage(
                      opacity: 0.05,
                      image: AssetImage(
                        'assets/images/rta.png',
                      ),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Center(
                          child: TextWidget(
                            text: 'TRAFFIC CITATION TICKET',
                            fontSize: 14,
                            fontFamily: 'Bold',
                            color: primary,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: TextFieldWidget(
                            controller: license,
                            label: 'License number',
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Center(
                          child: ButtonWidget(
                            label: 'Enter',
                            onPressed: () async {
                              DocumentSnapshot doc = await FirebaseFirestore
                                  .instance
                                  .collection('Records')
                                  .doc(license.text)
                                  .get();

                              if (doc.exists) {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => HomeScreen(
                                          data: doc,
                                        )));
                              } else {
                                showToast('Record do not exist!');
                                Navigator.pop(context);
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
