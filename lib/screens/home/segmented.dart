// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:flutter_gradient_text/flutter_gradient_text.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsapp/screens/home/contact_page/contacts_page.dart';
import 'package:whatsapp/screens/home/group_page/group_page.dart';

class SetButton extends StatefulWidget {
  const SetButton({super.key});

  @override
  State<SetButton> createState() => _SetButton();
}

class _SetButton extends State<SetButton> with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

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
              'Contacts & Groups',
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
                  Navigator.pushNamed(context, "/SearchPage");
                },
              ),
            ),
          ],
        ),
        body: Padding(
          // padding: EdgeInsets.symmetric(horizontal: 20),
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          child: Container(
            decoration: BoxDecoration(
                // color: Colors.amber,

                borderRadius: BorderRadius.circular(30)),
            // height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 0),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      // color: Colors.redAccent,
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromARGB(255, 232, 228, 229),
                          Color.fromARGB(255, 232, 228, 229),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    children: [
                      TabBar(
                          indicatorSize: TabBarIndicatorSize.label,
                          unselectedLabelColor: Colors.black,
                          labelColor: Colors.white,
                          indicatorColor: Colors.black,
                          indicatorWeight: 5.0,
                          indicatorPadding: const EdgeInsets.symmetric(
                              horizontal: 00, vertical: 3),
                          labelPadding:
                              const EdgeInsets.symmetric(horizontal: 5),
                          // dividerHeight: 10,

                          //  height: 40,
                          // fixedWidth: 154,
                          indicator: BoxDecoration(
                            gradient: const LinearGradient(
                              // begin: Alignment.centerLeft,
                              // end: Alignment.centerRight,
                              colors: [
                                Color.fromARGB(
                                    255, 220, 26, 116), // 0% - #FC1683
                                Color.fromARGB(
                                    255, 66, 29, 158), // 100% - #4825A1
                                // Color.fromARGB(255, 158, 25, 51), // 100% - #4825A1
                              ],
                              stops: [0.0, 1.0],
                              // transform: GradientRotation(93 * (3.141592653589793 / 180)), // Convert degrees to radians
                            ),
                            // color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(.5),
                                blurRadius: 4.0,
                                spreadRadius: 1.0,
                                offset: const Offset(
                                  0.3,
                                  4.0,
                                ),
                              ),
                            ],
                          ),
                          controller: tabController,
                          dividerColor: Colors.transparent,
                          tabs: const [
                            SizedBox(
                              width: double.infinity,
                              child: Tab(
                                text: 'Contacts',
                              ),
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: Tab(
                                text: 'Groups',
                              ),
                            ),
                          ]),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    child: TabBarView(
                      controller: tabController,
                      children: const [
                        ContactsPage(),
                        GroupPage(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
