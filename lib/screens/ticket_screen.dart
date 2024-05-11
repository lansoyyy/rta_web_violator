import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rta_web/screens/auth/login_screen.dart';
import 'package:rta_web/utlis/colors.dart';
import 'package:rta_web/widgets/button_widget.dart';

import 'package:rta_web/widgets/text_widget.dart';
import 'package:rta_web/widgets/textfield_widget.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
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
      body: Padding(
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
                              Card(
                                elevation: 10,
                                child: Container(
                                  width: 550,
                                  height: 550,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            TextWidget(
                                              text:
                                                  'Ticket Apprehension Issued',
                                              fontSize: 18,
                                              color: Colors.red,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                TextWidget(
                                                  text: 'Time & Date Issued:',
                                                  fontSize: 13,
                                                  color: Colors.red,
                                                ),
                                                TextWidget(
                                                  text:
                                                      'November 23, 2023 | 01:36 PM',
                                                  fontSize: 13,
                                                  color: Colors.red,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        const Divider(),
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: 250,
                                              height: 450,
                                              child: Column(
                                                children: [
                                                  Center(
                                                    child: TextWidget(
                                                      text:
                                                          'No. TCT 2023 - 00311',
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 20,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Image.asset(
                                                        'assets/images/immigration-officer.png',
                                                        height: 50,
                                                      ),
                                                      const SizedBox(
                                                        width: 20,
                                                      ),
                                                      Container(
                                                        height: 115,
                                                        width: 175,
                                                        color: Colors.blue[100],
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(5.0),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              TextWidget(
                                                                text:
                                                                    'Ticket issued by:',
                                                                fontSize: 12,
                                                              ),
                                                              const SizedBox(
                                                                height: 10,
                                                              ),
                                                              TextWidget(
                                                                text:
                                                                    'Badge ID:',
                                                                fontSize: 11,
                                                              ),
                                                              TextWidget(
                                                                text: 'Name:',
                                                                fontSize: 11,
                                                              ),
                                                              TextWidget(
                                                                text:
                                                                    'Stationed:',
                                                                fontSize: 11,
                                                              ),
                                                              TextWidget(
                                                                text:
                                                                    'Position:',
                                                                fontSize: 11,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    height: 20,
                                                  ),
                                                  Center(
                                                    child: TextWidget(
                                                      text:
                                                          'Time Remaining: 68:21',
                                                      fontSize: 18,
                                                      fontFamily: 'Bold',
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  const Divider(),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                  TextWidget(
                                                    maxLines: 5,
                                                    text: '''
SCAN VIA QR CODE TO PAY or PAY CASH IN AUTHORIZED RTA OFFICER IN CITY HALL
''',
                                                    fontSize: 11,
                                                    color: Colors.grey,
                                                  ),
                                                  Container(
                                                    width: 200,
                                                    height: 150,
                                                    color: Colors.grey,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            SizedBox(
                                              width: 250,
                                              height: 450,
                                              child: Column(
                                                children: [
                                                  Center(
                                                    child: TextWidget(
                                                      text:
                                                          'TRAFFIC VIOLATIONS AND PENALTIES',
                                                      fontSize: 13,
                                                      fontFamily: 'Bold',
                                                    ),
                                                  ),
                                                  const Divider(),
                                                  Align(
                                                    alignment:
                                                        Alignment.topRight,
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        TextWidget(
                                                          text:
                                                              'FINES/PENALTIES',
                                                          fontSize: 14,
                                                          fontFamily: 'Bold',
                                                        ),
                                                        TextWidget(
                                                          text:
                                                              'OFFENSE FREQUENCY',
                                                          fontSize: 10,
                                                          color: Colors.grey,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const Divider(),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      TextWidget(
                                                        text: 'CODE',
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                      TextWidget(
                                                        text: 'VIOLATION',
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                      TextWidget(
                                                        text: '1st',
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                      TextWidget(
                                                        text: '2nd',
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                      TextWidget(
                                                        text: '3rd',
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                    ],
                                                  ),
                                                  for (int i = 0; i < 10; i++)
                                                    Column(
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            TextWidget(
                                                              text: '183',
                                                              fontSize: 11,
                                                              color:
                                                                  Colors.grey,
                                                            ),
                                                            TextWidget(
                                                              text:
                                                                  'No License',
                                                              fontSize: 11,
                                                              color:
                                                                  Colors.grey,
                                                            ),
                                                            TextWidget(
                                                              text: 'P150',
                                                              fontSize: 11,
                                                              color:
                                                                  Colors.grey,
                                                            ),
                                                            TextWidget(
                                                              text: 'P300',
                                                              fontSize: 11,
                                                              color:
                                                                  Colors.grey,
                                                            ),
                                                            TextWidget(
                                                              text: 'P450',
                                                              fontSize: 11,
                                                              color:
                                                                  Colors.grey,
                                                            ),
                                                          ],
                                                        ),
                                                        const Divider(),
                                                      ],
                                                    ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      TextWidget(
                                                        text: 'Total:',
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                      TextWidget(
                                                        text: '',
                                                        fontSize: 12,
                                                        color: Colors.black,
                                                      ),
                                                      TextWidget(
                                                        text: 'P500',
                                                        fontSize: 18,
                                                        color: Colors.red,
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 50,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
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
                                    Column(
                                      children: [
                                        Card(
                                          elevation: 10,
                                          child: Container(
                                            width: 550,
                                            height: 320,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: primary,
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(10.0),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  TextWidget(
                                                    text:
                                                        'VIOLATOR INFORMATION',
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
                                                                text:
                                                                    'Lance O. Olana',
                                                                fontSize: 18,
                                                                fontFamily:
                                                                    'Medium',
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                              const SizedBox(
                                                                width: 200,
                                                              ),
                                                              TextWidget(
                                                                text:
                                                                    'Signature here',
                                                                fontSize: 12,
                                                                fontFamily:
                                                                    'Regular',
                                                                color:
                                                                    Colors.grey,
                                                              ),
                                                            ],
                                                          ),
                                                          const SizedBox(
                                                              width: 300,
                                                              child: Divider()),
                                                          TextWidget(
                                                            text: 'Address:',
                                                            fontSize: 13,
                                                            fontFamily:
                                                                'Regular',
                                                            color: Colors.black,
                                                          ),
                                                          const SizedBox(
                                                              width: 300,
                                                              child: Divider()),
                                                          TextWidget(
                                                            text:
                                                                'License Number:',
                                                            fontSize: 13,
                                                            fontFamily:
                                                                'Regular',
                                                            color: Colors.black,
                                                          ),
                                                          const SizedBox(
                                                              width: 300,
                                                              child: Divider()),
                                                          Row(
                                                            children: [
                                                              TextWidget(
                                                                text: 'Expiry:',
                                                                fontSize: 13,
                                                                fontFamily:
                                                                    'Regular',
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                              const SizedBox(
                                                                width: 100,
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
                                                              const Icon(
                                                                Icons.check_box,
                                                                color:
                                                                    Colors.grey,
                                                              ),
                                                              const SizedBox(
                                                                width: 10,
                                                              ),
                                                              TextWidget(
                                                                text:
                                                                    'Non-Prof',
                                                                fontSize: 12,
                                                                fontFamily:
                                                                    'Regular',
                                                                color:
                                                                    Colors.grey,
                                                              ),
                                                              const SizedBox(
                                                                width: 5,
                                                              ),
                                                              const Icon(
                                                                Icons
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
                                                              const Icon(
                                                                Icons
                                                                    .check_box_outline_blank,
                                                                color:
                                                                    Colors.grey,
                                                              ),
                                                            ],
                                                          ),
                                                          const SizedBox(
                                                              width: 300,
                                                              child: Divider()),
                                                          Row(
                                                            children: [
                                                              TextWidget(
                                                                text:
                                                                    'Birthday:',
                                                                fontSize: 13,
                                                                fontFamily:
                                                                    'Regular',
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                              const SizedBox(
                                                                width: 85,
                                                              ),
                                                              TextWidget(
                                                                text:
                                                                    'Nationality:',
                                                                fontSize: 13,
                                                                fontFamily:
                                                                    'Regular',
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                            ],
                                                          ),
                                                          const SizedBox(
                                                              width: 300,
                                                              child: Divider()),
                                                          Row(
                                                            children: [
                                                              TextWidget(
                                                                text: 'Height:',
                                                                fontSize: 13,
                                                                fontFamily:
                                                                    'Regular',
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                              const SizedBox(
                                                                width: 96,
                                                              ),
                                                              TextWidget(
                                                                text: 'Weight:',
                                                                fontSize: 13,
                                                                fontFamily:
                                                                    'Regular',
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                            ],
                                                          ),
                                                          const SizedBox(
                                                              width: 300,
                                                              child: Divider()),
                                                          Row(
                                                            children: [
                                                              TextWidget(
                                                                text: 'Gender:',
                                                                fontSize: 13,
                                                                fontFamily:
                                                                    'Regular',
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                              const SizedBox(
                                                                width: 90,
                                                              ),
                                                              TextWidget(
                                                                text:
                                                                    'Rescriction:',
                                                                fontSize: 13,
                                                                fontFamily:
                                                                    'Regular',
                                                                color: Colors
                                                                    .black,
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
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Card(
                                          elevation: 10,
                                          child: Container(
                                            width: 550,
                                            height: 320,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: primary,
                                                width: 2,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(10.0),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  TextWidget(
                                                    text: 'VEHICLE INFORMATION',
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
                                                                text:
                                                                    'KAF - 444',
                                                                fontSize: 18,
                                                                fontFamily:
                                                                    'Medium',
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                            ],
                                                          ),
                                                          const SizedBox(
                                                              width: 300,
                                                              child: Divider()),
                                                          TextWidget(
                                                            text: 'Ownder:',
                                                            fontSize: 13,
                                                            fontFamily:
                                                                'Regular',
                                                            color: Colors.black,
                                                          ),
                                                          const SizedBox(
                                                              width: 300,
                                                              child: Divider()),
                                                          TextWidget(
                                                            text: 'Address:',
                                                            fontSize: 13,
                                                            fontFamily:
                                                                'Regular',
                                                            color: Colors.black,
                                                          ),
                                                          const SizedBox(
                                                              width: 300,
                                                              child: Divider()),
                                                          TextWidget(
                                                            text: 'Color:',
                                                            fontSize: 13,
                                                            fontFamily:
                                                                'Regular',
                                                            color: Colors.black,
                                                          ),
                                                          const SizedBox(
                                                              width: 300,
                                                              child: Divider()),
                                                          TextWidget(
                                                            text: 'Model:',
                                                            fontSize: 13,
                                                            fontFamily:
                                                                'Regular',
                                                            color: Colors.black,
                                                          ),
                                                          const SizedBox(
                                                              width: 300,
                                                              child: Divider()),
                                                          TextWidget(
                                                            text: 'Marking:',
                                                            fontSize: 13,
                                                            fontFamily:
                                                                'Regular',
                                                            color: Colors.black,
                                                          ),
                                                          const SizedBox(
                                                              width: 300,
                                                              child: Divider()),
                                                          TextWidget(
                                                            text:
                                                                'Place of Violation:',
                                                            fontSize: 13,
                                                            fontFamily:
                                                                'Regular',
                                                            color: Colors.black,
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
                                  ],
                                ),
                              ),
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
    );
  }
}
