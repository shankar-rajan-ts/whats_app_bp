import 'package:flutter/material.dart';
import 'package:flutter_gradient_text/flutter_gradient_text.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsapp/style.dart';

class TemplatePage extends StatefulWidget {
  const TemplatePage({super.key});

  @override
  State<TemplatePage> createState() => _TemplatePage();
}

class _TemplatePage extends State<TemplatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,

          // leading: GestureDetector(
          //   onTap: () {
          //     Navigator.of(context).pop();
          //   },
          //   child: SvgPicture.asset(
          //     'images/arrow_back_bbb.svg',
          //     height: 20,
          //     width: 20,
          //     fit: BoxFit.none,
          //   ),
          // ),
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const GradientText(
            Text(
              "Whatsapp Templates",
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
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: IconButton(
                iconSize: 25,
                icon: const Icon(Icons.search),
                onPressed: () {
                  print("assad");
                  // ShowSearch();
                  Navigator.pushNamed(context, "/");
                },
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Column(
                    children: [
                      ListView.builder(
                          //   padding:
                          // const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                          // padding: const EdgeInsets.only(bottom: 10),
                          // physics: const NeverScrollableScrollPhysics(),
                          // shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount: 5,
                          // ?.data?['getAllWhatsappTemplatesApp'].length,
                          itemBuilder: (BuildContext context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: Card.filled(
                                color: Colors.white,
                                elevation: 1.0,
                                // shadowColor: Colors.grey,
                                shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                      color: Color(0xFFF2F2F2),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: InkWell(
                                  onTap: () => Navigator.pushNamed(
                                      context, "/createTremplate"),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10.0),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Color(0xFFF2F2F2),
                                          spreadRadius: 0.3,
                                          blurRadius: 1.5,
                                        ),
                                      ],
                                    ),
                                    height: 90,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const SizedBox(
                                                height: 8,
                                              ),
                                              Text(
                                                "Text",
                                                style: text,
                                                // style:   interactiveText,
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Container(
                                                        alignment:
                                                            Alignment.center,
                                                        height: 25,
                                                        width: 37,
                                                        decoration: BoxDecoration(
                                                            color: CustomTextStyling()
                                                                .cancelbuttoncolor,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20)),
                                                        child: Text(
                                                          "Hi",
                                                          style:
                                                              inputboxtextfiles,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Container(
                                                        alignment:
                                                            Alignment.center,
                                                        height: 25,
                                                        width: 52,
                                                        decoration: BoxDecoration(
                                                            color: CustomTextStyling()
                                                                .cancelbuttoncolor,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20)),
                                                        child: Text(
                                                          "Hello",
                                                          style:
                                                              inputboxtextfiles,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Container(
                                                        alignment:
                                                            Alignment.center,
                                                        height: 25,
                                                        width: 91,
                                                        decoration: BoxDecoration(
                                                            color: CustomTextStyling()
                                                                .cancelbuttoncolor,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20)),
                                                        child: Text(
                                                          "I need help",
                                                          style:
                                                              inputboxtextfiles,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          const Spacer(),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(right: 0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                    alignment: Alignment.center,
                                                    // height: 50,
                                                    // width: 50,
                                                    decoration: BoxDecoration(
                                                        // color: Colors.pink,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(0)),
                                                    child: IconButton(
                                                      onPressed: () {
                                                        Navigator.pushNamed(
                                                            context,
                                                            "/editCreateTemplate");
                                                      },
                                                      icon: SvgPicture.asset(
                                                        "assets/images/navigate_nextfill.svg",
                                                      ),
                                                    ))
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ],
                  )
                ],
              )),
        ),
        floatingActionButton: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              // begin: Alignment.topLeft,
              // end: Alignment.bottomCenter,
              colors: [
                // Color(0xFF4825A1).withOpacity(0.9),
                // Color(0xFFFC1683).withOpacity(0.9),

                // Color(0xFF4825A1).withOpacity(0.9),
                // Color.fromARGB(255, 27, 26, 31).withOpacity(0.9),

                // Color(0xFFFC1683).withOpacity(0.9),
                // Color(0xFFFC1683).withOpacity(0.9),
                // Color(0xFFFC1683).withOpacity(0.8),
                // const Color(0xFFFC1683).withOpacity(0.8),
                const Color(0xFFFC1683).withOpacity(0.8),
                // const Color(0xFFFC1683).withOpacity(0.8),
                // const Color(0xFF4825A1).withOpacity(0.9),
                const Color(0xFF4825A1).withOpacity(0.9),
                // const Color(0xFF4825A1).withOpacity(0.9),
              ],
            ),
            borderRadius: BorderRadius.circular(50),
          ),
          child: FloatingActionButton.extended(
            onPressed: () {
              Navigator.pushNamed(context, "/createTremplate");
            },
            backgroundColor: Colors.transparent,
            elevation: 10.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            label: Text(
              'Create Template',
              style: sendmessagetext,
            ),
            icon: const Icon(
              Icons.dashboard_customize,
              color: Colors.white,
            ),
            foregroundColor: Colors.black45,
          ),
        ));
  }
}
