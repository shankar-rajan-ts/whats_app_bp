import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsapp/screens/nav-bar/chats/chat_page.dart';
import 'package:whatsapp/screens/home/dashbord.dart';
import 'package:whatsapp/screens/nav-bar/template/nav_template_page.dart';
// import 'package:flutter_new_whats_app/chat-tamplate/chat/chats.dart';
// import 'package:flutter_new_whats_app/chat-tamplate/templates/template.dart';
// import 'package:flutter_new_whats_app/home/home.dart';

class HomeNav extends StatefulWidget {
  const HomeNav({super.key});

  @override
  State<HomeNav> createState() => _HomeNavState();
}

class _HomeNavState extends State<HomeNav> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        // indicatorColor: Colors.amber,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Badge(child: Icon(Icons.backup_table_sharp)),
            label: 'Templates',
          ),
          NavigationDestination(
            // selectedIcon: SvgPicture.asset(
            //   height: 16,
            //   width: 16,
            //   // fit: BoxFit.none,
            //   'images/chatimage.svg',
            //   color: Color(0xFF1D60E8),
            // ),
            // icon: SvgPicture.asset(
            //   height: 16,
            //   width: 16,
            //   'images/chatimage.svg',
            //   // fit: BoxFit.none,
            // ),
            icon: Badge(
              label: Text(
                '2',
              ),
              child: Icon(Icons.chat),
            ),
            label: 'Chats',
          ),
        ],
      ),
      body: [
        const MainDashbord(),
        const TemplatePage(),
        const ChatPage(),
      ][currentPageIndex],
    );
  }
}
