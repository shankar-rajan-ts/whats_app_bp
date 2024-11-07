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
            children: [
              Row(
                children: [
                  Text(
                    "Schedule Message",
                    style: groudcreatetext,
                  )
                ],
              ),
              // Expanded(
              // child: Card(
              Row(
                children: [
                  Expanded(
                    child: Card(
                    //    shape: BeveledRectangleBorder(
                    // borderRadius: BorderRadius.circular(10),
                    // side: const BorderSide(
                    //   color: Color.fromARGB(255, 241, 238, 238),
                    //   width: 1.0,
                    // )),
                      color: Colors.white,
                      elevation: 2,
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
                            height: 105,
                            // width: 328,
                            width: double.infinity,

                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Individual",
                                      style: reporttittletext1,
                                    ),
                                    // SizedBox(
                                    //   width: 100,
                                    // ),

                                    Padding(
                                      padding: const EdgeInsets.only(left: 55),
                                      child: Text(
                                        "Sun, 21 Apr 7:30 PM",
                                        style: messagedatetimetext,
                                      ),
                                    ),
                                  ],
                                ),
                                // const SizedBox(
                                //   height: 5,
                                // ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "bfx_welcome",
                                      style: cardcontactstext,
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
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                        child: Text(
                                      'Est integer tempor mauris et nisi mi elementum \nutmauris et nisi mi elementum...',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: reportperagraphtext,
                                    )),
                                  ],
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
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: Card(
                      color: Colors.white,
                      elevation: 1,
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
                            height: 105,

                            // width: 328,
                            width: double.infinity,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Contact Group",
                                      style: reporttittletext2,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 28),
                                      child: Text(
                                        "Sun, 21 Apr 7:30 PM",
                                        style: messagedatetimetext,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "bfx_welcome",
                                      style: cardcontactstext,
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
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                        child: Text(
                                      'Est integer tempor mauris et nisi mi elementum \nutmauris et nisi mi elementum...',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: reportperagraphtext,
                                    )),
                                  ],
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
                height: 10,
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
                height: 5,
              ),
              Row(
                children: [
                  Expanded(
                    child: Card(
                      color: Colors.white,
                      elevation: 1,
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
                            height: 105,

                            // width: 328,
                            width: double.infinity,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Individual",
                                      style: reporttittletext1,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 55),
                                      child: Text(
                                        "Sun, 21 Apr 7:30 PM",
                                        style: messagedatetimetext,
                                      ),
                                    ),
                                  ],
                                ),
                                // const SizedBox(
                                //   height: 5,
                                // ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "bfx_welcome",
                                      style: cardcontactstext,
                                    ),
                                    IconButton(
                                      iconSize: 20,
                                      icon: const Icon(
                                          Icons.arrow_forward_ios_outlined),
                                      onPressed: () {
                                        Navigator.pushNamed(
                                            context, "/messageDetails");
                                      },
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                        child: Text(
                                      'Est integer tempor mauris et nisi mi elementum \nutmauris et nisi mi elementum...',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: reportperagraphtext,
                                    )),
                                  ],
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
                height: 10,
              ),

              Row(
                children: [
                  Expanded(
                    child: Card(
                      color: Colors.white,
                      elevation: 1,
                      child: InkWell(
                        onTap: () =>
                            Navigator.pushNamed(context, "/messageDetails"),

                        // elevation: 2,
                        // shadowColor: Colors.black,
                        // shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(5.0)),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            height: 105,

                            // width: 328,
                            width: double.infinity,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Contact Group",
                                      style: reporttittletext2,
                                    ),
                                    // Spacer(),

                                    Padding(
                                      padding: const EdgeInsets.only(left: 34),
                                      child: Text(
                                        "Sun, 21 Apr 7:30 PM",
                                        style: messagedatetimetext,
                                      ),
                                    ),
                                  ],
                                ),
                                // const SizedBox(
                                //   height: 5,
                                // ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "bfx_welcome",
                                      style: cardcontactstext,
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
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                        child: Text(
                                      'Est integer tempor mauris et nisi mi elementum \nutmauris et nisi mi elementum...',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: reportperagraphtext,
                                    )),
                                  ],
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
            ],
          ),
        ),
      ),
    );
  }
}
