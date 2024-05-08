import 'package:flutter/material.dart';
import 'package:rta_web/screens/home_screen.dart';
import 'package:rta_web/screens/home_screen.dart';
import 'package:rta_web/utlis/colors.dart';
import 'package:rta_web/widgets/button_widget.dart';
import 'package:rta_web/widgets/text_widget.dart';
import 'package:rta_web/widgets/textfield_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final reference = TextEditingController();
  final license = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
                height: 350,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: primary,
                    width: 2,
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
                          controller: reference,
                          label: 'Reference number',
                        ),
                      ),
                      const SizedBox(
                        height: 10,
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
                        child: SizedBox(
                          width: 300,
                          child: TextWidget(
                            maxLines: 3,
                            text:
                                'The code is provided by the enforcer upon aprehension and included on the printed receipt',
                            fontSize: 11,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Center(
                        child: ButtonWidget(
                          label: 'Enter',
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const HomeScreen()));
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
    );
  }
}
