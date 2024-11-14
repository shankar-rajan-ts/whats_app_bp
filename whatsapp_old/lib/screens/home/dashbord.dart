import 'package:flutter/material.dart';
import 'package:whatsapp/screens/nav-bar/chats/chat_page.dart';
import 'package:whatsapp/screens/nav-bar/template/nav_template_page.dart';
import 'package:whatsapp/style.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainDashbord extends StatefulWidget {
  const MainDashbord({super.key});

  @override
  State<MainDashbord> createState() => _MainDashbordState();
}

class _MainDashbordState extends State<MainDashbord> {
  int selectedIndex = 2;

  List<Widget> _pages = <Widget>[
    const MainDashbord(),
    const TemplatePage(),
    const ChatPage(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          // color: Colors.white,

          child: Center(
            child: Stack(children: [
              // _pages.elementAt(selectedIndex),
              Container(
                height: 260,
                width: double.infinity,
                decoration: const BoxDecoration(
                  // color: Colors.red,
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.black,
                  //     blurRadius: 20.0,
                  //   ),
                  // ],
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(40),
                      bottomLeft: Radius.circular(40)),
                  image: DecorationImage(
                    image: AssetImage("assets/images/Rectangle.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Align(alignment: Alignment.centerLeft),
                            Text(
                              "Hello !",
                              style: textFieldStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "Mukesh Kumar",
                                      style: subtextFieldStyle,
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        "assets/images/Userszc.svg",
                                        height: 30,
                                        width: 30,
                                      ),
                                      // Image(
                                      //   width: 32,
                                      //   height: 32,
                                      //   image: AssetImage(
                                      //     "images/Userszc.svg",
                                      //   ),
                                      // )
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 135),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.bottomCenter,
                        child: Card(
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image.asset(
                                  "assets/images/card-bg.png",
                                  fit: BoxFit.cover,
                                  height: 180,
                                  // width: 328,
                                  width: double.infinity,
                                ),
                              ),
                              SizedBox(
                                height: 180,
                                // width: 328,
                                width: double.infinity,

                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, left: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "508",
                                              style: dashcardnumbertext,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "Balance Message Count",
                                              style: dashsubtext,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          // crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Align(
                                                    // alignment: Alignment.bottomLeft,
                                                    ),
                                                Text(
                                                  "1000",
                                                  style: numbertext,
                                                ),
                                                Text(
                                                  "Total Message",
                                                  style: numbersubtext,
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              width: 40,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Align(
                                                    // alignment: Alignment.bottomLeft,
                                                    ),
                                                Text(
                                                  "492",
                                                  style: numbertext,
                                                ),
                                                Text(
                                                  "Spent Message",
                                                  style: numbersubtext,
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
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      SizedBox(
                        // height: 120,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Card.filled(
                                elevation: 0.1,
                                child: InkWell(
                                  onTap: () => Navigator.pushNamed(
                                      context, "/setButton"),
                                  child: Container(
                                    height: 120,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        color: CustomTextStyling()
                                            .homefirstcardcolor,
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(10))),
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          const Image(
                                            image: AssetImage(
                                                "assets/images/Contacts.png"),
                                            height: 44,
                                            width: 44,
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 6),
                                            child: Text(
                                              "Contacts & ",
                                              style: dashbordthreecardtext,
                                            ),
                                          ),
                                          Text(
                                            "Groups",
                                            style: dashbordthreecardtext,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            // const SizedBox(
                            //   width: 18,
                            // ),
                            // .....................card2..............................................
                            Expanded(
                              child: Card.filled(
                                elevation: 0.1,
                                child: InkWell(
                                  onTap: () => Navigator.pushNamed(
                                      context, "/templatesPage"),
                                  child: Container(
                                    height: 120,
                                    width: 96,
                                    decoration: BoxDecoration(
                                        color: CustomTextStyling()
                                            .homesecoundcardcolor,
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(10))),
                                    child: Column(
                                      // mainAxisAlignment: MainAxisAlignment.center,
                                      // crossAxisAlignment: CrossAxisAlignment.center,

                                      children: [
                                        const SizedBox(
                                          height: 17,
                                        ),
                                        const Image(
                                          image:
                                              AssetImage("assets/images/Template.png"),
                                          height: 44,
                                          width: 44,
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          "Templates",
                                          style: dashbordthreecardtext,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            // const SizedBox(
                            //   width: 18,
                            // ),
                            // ...........................................card3...................
                            Expanded(
                              child: Card.filled(
                                elevation: 0.1,
                                child: InkWell(
                                  onTap: () => Navigator.pushNamed(
                                      context, "/messageReportPage"),
                                  child: Container(
                                    height: 120,
                                    width: 96,
                                    decoration: BoxDecoration(
                                        color: CustomTextStyling()
                                            .homethardcardcolor,
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(10))),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const Image(
                                          image:
                                              AssetImage("assets/images/Message.png"),
                                          height: 44,
                                          width: 44,
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          "Message",
                                          style: dashbordthreecardtext,
                                        ),
                                        Text(
                                          "Reports",
                                          style: dashbordthreecardtext,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            // ...........................................cfbgfgdfgdfg...................
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ),
        floatingActionButton: Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              // begin: Alignment.topLeft,
              // end: Alignment.bottomCenter,
              colors: [
                // Color(0xFF4825A1).withOpacity(0.9),
                // Color(0xFFFC1683).withOpacity(0.9),

                // Color(0xFF4825A1).withOpacity(0.9),
                // Color.fromARGB(255, 27, 26, 31).withOpacity(0.9),
                Color.fromARGB(255, 220, 26, 116), // 0% - #FC1683
                Color.fromARGB(255, 66, 29, 158), // 100% - #4825A1
                // Color(0xFFFC1683).withOpacity(0.9),
                // Color(0xFFFC1683).withOpacity(0.9),
                // Color(0xFFFC1683).withOpacity(0.8),
                // const Color(0xFFFC1683).withOpacity(0.8),
                // const Color(0xFFFC1683).withOpacity(0.8),
                // const Color(0xFFFC1683).withOpacity(0.8),
                // const Color(0xFF4825A1).withOpacity(0.9),
                // const Color(0xFF4825A1).withOpacity(0.9),
                // const Color(0xFF4825A1).withOpacity(0.9),
              ],
            ),
            borderRadius: BorderRadius.circular(50),
          ),
          child: FloatingActionButton.extended(
            onPressed: () {
              Navigator.pushNamed(context, "/sendMessagePage");
            },
            backgroundColor: Colors.transparent,
            elevation: 10.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            label: Text(
              'Send Message',
              style: sendmessagetext,
            ),
            icon: const Icon(
              Icons.send,
              color: Colors.white,
              size: 22,
            ),
            foregroundColor: Colors.black45,
          ),
        ));
  }
}
