import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:whatsapp/style.dart';

enum Actions { delete, edit }

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPage();
}

class _ChatPage extends State<ChatPage> {
  // var users = allUsers;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: const Color(0xFF4926A0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back_ios_new,
                            color: Colors.white, size: 24),
                        onPressed: () {
                          Navigator.pushNamed(context, "/home");
                        },
                      ),
                      Text(
                        "Chats",
                        style: cardheadetext,
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.search,
                          size: 24,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          // ...
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 120.0),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                color: Colors.white,
              ),
              height: double.infinity,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ListView.builder(
                        scrollDirection: Axis.vertical,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        // itemCount: users.length,
                        itemCount: 30,
                        itemBuilder: (BuildContext context, int index) {
                          // final user = users[index];
                          // return buildUserListTile(user);
                          return Slidable(
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ListTile(
                                      leading: CircleAvatar(
                                        child: Container(
                                          alignment: Alignment.center,
                                          height: 42,
                                    
                                          width: 42,
                                          decoration: const BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 128, 185, 231),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(50.0)),
                                          ),
                                          child: Text(
                                            "M",
                                            style: cardheadetext,
                                          ),
                                    
                                          // color: Colors.red,
                                          // decoration: BoxDecoration(borderRadius: BorderRadius.all(30 as Radius)),
                                        ),
                                      ),
                                      title: Text(
                                        "Mukesh Kumar",
                                        style: cardcontactstext,
                                      ),
                                      subtitle: Text(
                                        "Okay, Please do it now ",
                                        style: contectcardsubtitletext,
                                      ),
                                      trailing: Column(
                                        children: [
                                          const SizedBox(height: 10),
                                          Text(
                                            "12.55 PM",
                                            style: timeText,
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Automatic",
                                            style: automaticText,
                                          ),
                                        ],
                                      ),
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, "/personalChat");
                                    
                                        final slidable = Slidable.of(context)!;
                                        final isClosed =
                                            slidable.actionPaneType.value ==
                                                ActionPaneType.none;
                                        if (isClosed) {
                                          slidable.openCurrentActionPane();
                                        } else {
                                          slidable.close();
                                        }
                                      }),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
