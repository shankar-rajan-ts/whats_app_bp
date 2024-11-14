import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsapp/screens/nav-bar/chats/chat_page.dart';
import 'package:whatsapp/screens/home/dashbord.dart';
import 'package:whatsapp/screens/nav-bar/template/nav_template_page.dart';

class HomeNav extends StatefulWidget {
  const HomeNav({super.key});

  @override
  State<HomeNav> createState() => _HomeNavState();
}

class _HomeNavState extends State<HomeNav> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: const [
          MainDashbord(),
          TemplatePage(),
          ChatPage(),
        ],
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        // margin: const EdgeInsets.all(20),
        height: size.width * .175,
        // height: 66,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: const Color(0xFFD6D6D6).withOpacity(0.8),
              spreadRadius: 0.6,
              blurRadius: 1.0,
            ),
          ],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            listOfIcons.length,
            (index) => Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    currentIndex = index;
                  });
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 1500),
                      curve: Curves.fastLinearToSlowEaseIn,
                      margin: EdgeInsets.only(
                        bottom: index == currentIndex ? 0 : size.width * .029,
                      ),
                      width: size.width * .131,
                      height: index == currentIndex ? size.width * .013 : 0,
                      decoration: const BoxDecoration(
                        color: Color(0xFF4926A0),
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: size.width * .01),
                    Icon(
                      listOfIcons[index],
                      size: size.width * .076,
                      color: index == currentIndex
                          ? Color(0xFF4926A0)
                          : Colors.black38,
                    ),
                    // SizedBox(height: size.width * .1),
                    Text(
                      listOfLabels[index],
                      style: TextStyle(
                        color: index == currentIndex
                            ? Color(0xFF4926A0)
                            : Colors.black38,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: const Color(0xFFFFFFFFF),
    );
  }

  List<IconData> listOfIcons = [
    // SvgPicture.asset(assetName: 'assets/icons/home.svg'),
    // SvgPicture.asset(assetName: 'assets/icons/template.svg'),
    // SvgPicture.asset(assetName: 'assets/icons/chat.svg'),
    Icons.home,
    Icons.table_view_rounded,
    Icons.chat,
  ];

  List<String> listOfLabels = [
    'Home',
    'Templates',
    'Chats',
  ];
}