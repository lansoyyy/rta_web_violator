import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:rta_web/screens/auth/login_screen.dart';
import 'package:rta_web/screens/ticket_screen.dart';
import 'package:rta_web/utlis/colors.dart';
import 'package:rta_web/widgets/button_widget.dart';

import 'package:rta_web/widgets/text_widget.dart';
import 'package:rta_web/widgets/textfield_widget.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomeScreen extends StatefulWidget {
  dynamic data;

  HomeScreen({
    super.key,
    required this.data,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final fname = TextEditingController();
  final lname = TextEditingController();
  final email = TextEditingController();
  final badge = TextEditingController();
  final position = TextEditingController();
  final station = TextEditingController();
  final gender = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final confirmpassword = TextEditingController();

  final admin = TextEditingController();
  final code = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
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
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                color: primary,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/rta.png',
                      height: 50,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    TextWidget(
                      text: 'ROADS AND TRAFFIC ADMINISTRATION',
                      fontSize: 18,
                      fontFamily: 'Bold',
                      color: Colors.white,
                    ),
                    const Expanded(child: SizedBox()),
                    IconButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  title: const Text(
                                    'Logout Confirmation',
                                    style: TextStyle(
                                        fontFamily: 'QBold',
                                        fontWeight: FontWeight.bold),
                                  ),
                                  content: const Text(
                                    'Are you sure you want to Logout?',
                                    style: TextStyle(fontFamily: 'QRegular'),
                                  ),
                                  actions: <Widget>[
                                    MaterialButton(
                                      onPressed: () =>
                                          Navigator.of(context).pop(true),
                                      child: const Text(
                                        'Close',
                                        style: TextStyle(
                                            fontFamily: 'QRegular',
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    MaterialButton(
                                      onPressed: () async {
                                        Navigator.of(context).pushReplacement(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const LoginScreen()));
                                      },
                                      child: const Text(
                                        'Continue',
                                        style: TextStyle(
                                            fontFamily: 'QRegular',
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ));
                      },
                      icon: const Icon(
                        Icons.logout,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                child: Card(
                  elevation: 5,
                  child: Container(
                    width: double.infinity,
                    height: 600,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/images/cdo.png',
                                            height: 125,
                                          ),
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              TextWidget(
                                                text:
                                                    'REPUBLIC OF THE PHILIPPINES',
                                                fontSize: 16,
                                                fontFamily: 'Medium',
                                              ),
                                              TextWidget(
                                                text: 'CITY OF CAGAYAN DE ORO',
                                                fontSize: 16,
                                                fontFamily: 'Medium',
                                              ),
                                              TextWidget(
                                                text:
                                                    'ROADS AND TRAFFIC ADMINISTRATION',
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
                                        height: 20,
                                      ),
                                      Card(
                                        elevation: 10,
                                        child: Container(
                                          width: 550,
                                          height: 320,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            image: const DecorationImage(
                                              opacity: 0.05,
                                              image: AssetImage(
                                                'assets/images/rta.png',
                                              ),
                                              fit: BoxFit.fitHeight,
                                            ),
                                            border: Border.all(
                                              color: primary,
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                TextWidget(
                                                  text: 'VIOLATOR INFORMATION',
                                                  fontSize: 18,
                                                  fontFamily: 'Bold',
                                                  color: primary,
                                                ),
                                                const Divider(),
                                                Row(
                                                  children: [
                                                    const CircleAvatar(
                                                      maxRadius: 30,
                                                      minRadius: 30,
                                                      backgroundColor:
                                                          Colors.grey,
                                                    ),
                                                    const SizedBox(
                                                        height: 140,
                                                        child:
                                                            VerticalDivider()),
                                                    const SizedBox(
                                                      width: 20,
                                                    ),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            TextWidget(
                                                              text: widget
                                                                  .data['name'],
                                                              fontSize: 18,
                                                              fontFamily:
                                                                  'Medium',
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                            const SizedBox(
                                                              width: 200,
                                                            ),
                                                          ],
                                                        ),
                                                        const SizedBox(
                                                            width: 400,
                                                            child: Divider()),
                                                        TextWidget(
                                                          text:
                                                              'Address: ${widget.data['address']}',
                                                          fontSize: 13,
                                                          fontFamily: 'Regular',
                                                          color: Colors.black,
                                                        ),
                                                        const SizedBox(
                                                            width: 400,
                                                            child: Divider()),
                                                        TextWidget(
                                                          text:
                                                              'License Number: ${widget.data['licenseno']}',
                                                          fontSize: 13,
                                                          fontFamily: 'Regular',
                                                          color: Colors.black,
                                                        ),
                                                        const SizedBox(
                                                            width: 400,
                                                            child: Divider()),
                                                        Row(
                                                          children: [
                                                            TextWidget(
                                                              text:
                                                                  'Expiry: ${widget.data['expiry']}',
                                                              fontSize: 13,
                                                              fontFamily:
                                                                  'Regular',
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                            const SizedBox(
                                                              width: 75,
                                                            ),
                                                            TextWidget(
                                                              text: 'Prof',
                                                              fontSize: 12,
                                                              fontFamily:
                                                                  'Regular',
                                                              color:
                                                                  Colors.grey,
                                                            ),
                                                            const SizedBox(
                                                              width: 5,
                                                            ),
                                                            Icon(
                                                              widget.data['licensetype'] ==
                                                                      'Prof'
                                                                  ? Icons
                                                                      .check_box
                                                                  : Icons
                                                                      .check_box_outline_blank,
                                                              color:
                                                                  Colors.grey,
                                                            ),
                                                            const SizedBox(
                                                              width: 10,
                                                            ),
                                                            TextWidget(
                                                              text: 'Non-Prof',
                                                              fontSize: 12,
                                                              fontFamily:
                                                                  'Regular',
                                                              color:
                                                                  Colors.grey,
                                                            ),
                                                            const SizedBox(
                                                              width: 5,
                                                            ),
                                                            Icon(
                                                              widget.data['licensetype'] ==
                                                                      'Non Prof'
                                                                  ? Icons
                                                                      .check_box
                                                                  : Icons
                                                                      .check_box_outline_blank,
                                                              color:
                                                                  Colors.grey,
                                                            ),
                                                            const SizedBox(
                                                              width: 10,
                                                            ),
                                                            TextWidget(
                                                              text: 'SP',
                                                              fontSize: 12,
                                                              fontFamily:
                                                                  'Regular',
                                                              color:
                                                                  Colors.grey,
                                                            ),
                                                            const SizedBox(
                                                              width: 5,
                                                            ),
                                                            Icon(
                                                              widget.data['licensetype'] ==
                                                                      'SP'
                                                                  ? Icons
                                                                      .check_box
                                                                  : Icons
                                                                      .check_box_outline_blank,
                                                              color:
                                                                  Colors.grey,
                                                            ),
                                                          ],
                                                        ),
                                                        const SizedBox(
                                                            width: 400,
                                                            child: Divider()),
                                                        Row(
                                                          children: [
                                                            TextWidget(
                                                              text:
                                                                  'Birthday: ${widget.data['bday']}',
                                                              fontSize: 13,
                                                              fontFamily:
                                                                  'Regular',
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                            const SizedBox(
                                                              width: 85,
                                                            ),
                                                            TextWidget(
                                                              text:
                                                                  'Nationality: ${widget.data['nationality']}',
                                                              fontSize: 13,
                                                              fontFamily:
                                                                  'Regular',
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ],
                                                        ),
                                                        const SizedBox(
                                                            width: 400,
                                                            child: Divider()),
                                                        Row(
                                                          children: [
                                                            TextWidget(
                                                              text:
                                                                  'Height: ${widget.data['height']}cm',
                                                              fontSize: 13,
                                                              fontFamily:
                                                                  'Regular',
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                            const SizedBox(
                                                              width: 96,
                                                            ),
                                                            TextWidget(
                                                              text:
                                                                  'Weight: ${widget.data['weight']}kg',
                                                              fontSize: 13,
                                                              fontFamily:
                                                                  'Regular',
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ],
                                                        ),
                                                        const SizedBox(
                                                            width: 400,
                                                            child: Divider()),
                                                        Row(
                                                          children: [
                                                            TextWidget(
                                                              text:
                                                                  'Gender: ${widget.data['gender']}',
                                                              fontSize: 13,
                                                              fontFamily:
                                                                  'Regular',
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 50,
                                ),
                                StreamBuilder<QuerySnapshot>(
                                    stream: FirebaseFirestore.instance
                                        .collection('Tickets')
                                        .where('licenseno',
                                            isEqualTo: widget.data['licenseno'])
                                        .snapshots(),
                                    builder: (BuildContext context,
                                        AsyncSnapshot<QuerySnapshot> snapshot) {
                                      if (snapshot.hasError) {
                                        print(snapshot.error);
                                        return const Center(
                                            child: Text('Error'));
                                      }
                                      if (snapshot.connectionState ==
                                          ConnectionState.waiting) {
                                        return const Padding(
                                          padding: EdgeInsets.only(top: 50),
                                          child: Center(
                                              child: CircularProgressIndicator(
                                            color: Colors.black,
                                          )),
                                        );
                                      }

                                      final data = snapshot.requireData;
                                      return Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              IconButton(
                                                onPressed: () {
                                                  setState(() {});
                                                },
                                                icon: const Icon(Icons.refresh),
                                              ),
                                              const SizedBox(
                                                width: 20,
                                              ),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        Icons.circle,
                                                        color: green,
                                                        size: 15,
                                                      ),
                                                      const SizedBox(
                                                        width: 10,
                                                      ),
                                                      TextWidget(
                                                        text: 'Paid',
                                                        fontSize: 14,
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      const Icon(
                                                        Icons.circle,
                                                        color: Colors.blue,
                                                        size: 15,
                                                      ),
                                                      const SizedBox(
                                                        width: 10,
                                                      ),
                                                      TextWidget(
                                                        text: 'Standby',
                                                        fontSize: 14,
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      const Icon(
                                                        Icons.circle,
                                                        color: Colors.amber,
                                                        size: 15,
                                                      ),
                                                      const SizedBox(
                                                        width: 10,
                                                      ),
                                                      TextWidget(
                                                        text: 'Warning',
                                                        fontSize: 14,
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      const Icon(
                                                        Icons.circle,
                                                        color: Colors.red,
                                                        size: 15,
                                                      ),
                                                      const SizedBox(
                                                        width: 10,
                                                      ),
                                                      TextWidget(
                                                        text: 'Unpaid',
                                                        fontSize: 14,
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                width: 50,
                                              ),
                                              TextWidget(
                                                text: 'Tickets Issued',
                                                fontSize: 18,
                                                fontFamily: 'Bold',
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            width: 575,
                                            child: Divider(
                                              color: Colors.grey,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          for (int i = 0;
                                              i < data.docs.length;
                                              i++)
                                            Builder(builder: (context) {
                                              return Column(
                                                children: [
                                                  GestureDetector(
                                                    onTap: () {
                                                      Navigator.of(context).push(
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  TicketScreen(
                                                                    data: data
                                                                        .docs[i],
                                                                  )));
                                                    },
                                                    child: SizedBox(
                                                      width: 575,
                                                      child:
                                                          SingleChildScrollView(
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceEvenly,
                                                          children: [
                                                            Icon(
                                                              Icons.circle,
                                                              color: data.docs[
                                                                              i]
                                                                          [
                                                                          'status'] ==
                                                                      'Paid'
                                                                  ? green
                                                                  : data.docs[i]
                                                                              [
                                                                              'status'] ==
                                                                          'Standby'
                                                                      ? Colors
                                                                          .blue
                                                                      : data.docs[i]['status'] ==
                                                                              'Warning'
                                                                          ? Colors
                                                                              .orange
                                                                          : Colors
                                                                              .red,
                                                              size: 15,
                                                            ),
                                                            TextWidget(
                                                              text:
                                                                  'No. ${data.docs[i]['refno']}',
                                                              fontSize: 12,
                                                            ),
                                                            const SizedBox(
                                                              width: 20,
                                                            ),
                                                            TextWidget(
                                                              text:
                                                                  '${data.docs[i]['name']}',
                                                              fontSize: 12,
                                                            ),
                                                            const SizedBox(
                                                              width: 20,
                                                            ),
                                                            TextWidget(
                                                              text: DateFormat
                                                                      .yMMMd()
                                                                  .add_jm()
                                                                  .format(data
                                                                      .docs[i][
                                                                          'dateTime']
                                                                      .toDate()),
                                                              fontSize: 12,
                                                            ),
                                                            const SizedBox(
                                                              width: 20,
                                                            ),
                                                            TextWidget(
                                                              text:
                                                                  'P${data.docs[i]['violations'].fold(0.0, (prev, element) {
                                                                String fine = element[
                                                                        'fine']
                                                                    .replaceAll(
                                                                        ',',
                                                                        ''); // Remove commas
                                                                return prev +
                                                                    double.parse(
                                                                        fine);
                                                              })}',
                                                              fontSize: 12,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                      width: 575,
                                                      child: Divider()),
                                                ],
                                              );
                                            }),
                                        ],
                                      );
                                    }),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
