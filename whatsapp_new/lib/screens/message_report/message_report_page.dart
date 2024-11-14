import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gradient_text/flutter_gradient_text.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsapp/style.dart';

class MessageReportPage extends StatefulWidget {
  const MessageReportPage({super.key});

  @override
  State<MessageReportPage> createState() => _MessageReportPage();
}

class _MessageReportPage extends State<MessageReportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: SvgPicture.asset(
            'assets/images/arrow_back_bbb.svg',
            height: 22,
            width: 22,
            fit: BoxFit.none,
          ),
        ),
        title: const GradientText(
          Text(
            "Message Report",
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins'),
          ),
          colors: [
            Color.fromARGB(255, 202, 27, 53),
            Color.fromARGB(255, 202, 27, 53),
            Color.fromARGB(255, 108, 29, 154),
            Color.fromARGB(255, 69, 71, 192),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Schedule Message",
                    style: groudcreatetext,
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              // Expanded(
              // child: Card(
              Row(
                children: [
                  Expanded(
                    child: Card.filled(
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            color: Color(0xFFF2F2F2),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10.0)),
                      color: Colors.white,
                      elevation: 0,
                      child: InkWell(
                        onTap: () =>
                            Navigator.pushNamed(context, "/messageDetails"),
                        // elevation: 2,
                        // color: Colors.white,
                        // shadowColor: Colors.black,
                        // shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(5.0)),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SizedBox(
                            // decoration: BoxDecoration(
                            //   color: Colors.white,
                            //   borderRadius: BorderRadius.circular(10.0),
                            //   boxShadow: const [
                            //     BoxShadow(
                            //       color: Color(0xFFF2F2F2),
                            //       spreadRadius: 0.3,
                            //       blurRadius: 1.5,
                            //     ),
                            //   ],
                            // ),
                            height: 100,
                            // width: 328,
                            width: double.infinity,

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Individual",
                                            style: reporttittletext1,
                                          ),
                                          // const SizedBox(
                                          //     width:
                                          //         20),
                                          Flexible(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 55),
                                              child: Text(
                                                "Sun, 21 Apr 7:30 PM",
                                                style: messagedatetimetext,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        "bfx_welcome",
                                        style: cardcontactstext,
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        constraints:
                                            const BoxConstraints(maxWidth: 200),
                                        child: Text(
                                          'Est integer tempor mauris et nisi mi elementum \nutmauris et nisi mi elementum...',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: reportperagraphtext,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                IconButton(
                                  iconSize: 20,
                                  icon: const Icon(
                                      Icons.arrow_forward_ios_outlined),
                                  onPressed: () {
                                    // ...
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Card.filled(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            color: Color(0xFFF2F2F2),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10.0)),
                      elevation: 0,
                      child: InkWell(
                        onTap: () =>
                            Navigator.pushNamed(context, "/messageDetails"),
                        // elevation: 2,
                        // color: Colors.white,
                        // shadowColor: Colors.black,
                        // shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(5.0)),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: SizedBox(
                            height: 100,

                            // width: 328,
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          // crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Contact Group",
                                              style: reporttittletext2,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 28),
                                              child: Text(
                                                "Sun, 21 Apr 7:30 PM",
                                                style: messagedatetimetext,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          "bfx_welcome",
                                          style: cardcontactstext,
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          constraints: const BoxConstraints(
                                              maxWidth: 200),
                                          child: Text(
                                            'Est integer tempor mauris et nisi mi elementum \nutmauris et nisi mi elementum...',
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: reportperagraphtext,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      iconSize: 20,
                                      icon: const Icon(
                                          Icons.arrow_forward_ios_outlined),
                                      onPressed: () {
                                        // ...
                                      },
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    "Delivered Message",
                    style: groudcreatetext,
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: Card.filled(
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            color: Color(0xFFF2F2F2),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10.0)),
                      color: Colors.white,
                      elevation: 0,
                      child: InkWell(
                        onTap: () =>
                            Navigator.pushNamed(context, "/messageDetails"),
                        // elevation: 2,
                        // color: Colors.white,
                        // shadowColor: Colors.black,
                        // shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(5.0)),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SizedBox(
                            // decoration: BoxDecoration(
                            //   color: Colors.white,
                            //   borderRadius: BorderRadius.circular(10.0),
                            //   boxShadow: const [
                            //     BoxShadow(
                            //       color: Color(0xFFF2F2F2),
                            //       spreadRadius: 0.3,
                            //       blurRadius: 1.5,
                            //     ),
                            //   ],
                            // ),
                            height: 100,
                            // width: 328,
                            width: double.infinity,

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "Individual",
                                            style: reporttittletext1,
                                          ),
                                          // const SizedBox(
                                          //     width:
                                          //         20),
                                          Flexible(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 55),
                                              child: Text(
                                                "Sun, 21 Apr 7:30 PM",
                                                style: messagedatetimetext,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        "bfx_welcome",
                                        style: cardcontactstext,
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        constraints:
                                            const BoxConstraints(maxWidth: 200),
                                        child: Text(
                                          'Est integer tempor mauris et nisi mi elementum \nutmauris et nisi mi elementum...',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: reportperagraphtext,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                IconButton(
                                  iconSize: 20,
                                  icon: const Icon(
                                      Icons.arrow_forward_ios_outlined),
                                  onPressed: () {
                                    // ...
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),

              Row(
                children: [
                  Expanded(
                    child: Card.filled(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            color: Color(0xFFF2F2F2),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10.0)),
                      elevation: 0,
                      child: InkWell(
                        onTap: () =>
                            Navigator.pushNamed(context, "/messageDetails"),
                        // elevation: 2,
                        // color: Colors.white,
                        // shadowColor: Colors.black,
                        // shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(5.0)),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: SizedBox(
                            height: 100,

                            // width: 328,
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          // crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Contact Group",
                                              style: reporttittletext2,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 28),
                                              child: Text(
                                                "Sun, 21 Apr 7:30 PM",
                                                style: messagedatetimetext,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          "bfx_welcome",
                                          style: cardcontactstext,
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          constraints: const BoxConstraints(
                                              maxWidth: 200),
                                          child: Text(
                                            'Est integer tempor mauris et nisi mi elementum \nutmauris et nisi mi elementum...',
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: reportperagraphtext,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      iconSize: 20,
                                      icon: const Icon(
                                          Icons.arrow_forward_ios_outlined),
                                      onPressed: () {
                                        // ...
                                      },
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
