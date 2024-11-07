import 'package:flutter/material.dart';
import 'package:flutter_gradient_text/flutter_gradient_text.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsapp/style.dart';

class SelectedContactsPage extends StatefulWidget {
  const SelectedContactsPage({super.key});

  @override
  State<SelectedContactsPage> createState() => _SelectedContactsPage();
}

class _SelectedContactsPage extends State<SelectedContactsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
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
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const GradientText(
          Text(
            "Add Contact",
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                TextField(
                  style: inputboxtextfiles,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 12),
                      hintText: "Search By Name (or) Mobile Number...",
                      hintStyle: contectcardsubtitletext,
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Color(0xFF888888),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: const BorderSide(color: Color(0xFFDADADA)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        // borderSide: BorderSide(color: Color.fromARGB(255, 117, 117, 60)),
                        borderSide: const BorderSide(color: Color(0xFFDADADA)),
                      )),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return Slidable(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        ListTile(
                            leading: CircleAvatar(
                              child: Container(
                                alignment: Alignment.center,
                                height: 42,

                                width: 42,
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 128, 185, 231),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50.0)),
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
                              "Ph No: 63528 32568 ",
                              style: contectcardsubtitletext,
                            ),
                            trailing: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.cancel_outlined,
                                      color: Color(0xFFFF0000), size: 24),
                                  onPressed: () {},
                                )
                              ],
                            ),
                            onTap: () {
                              final slidable = Slidable.of(context)!;
                              final isClosed = slidable.actionPaneType.value ==
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
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    print("");
                    Navigator.pushNamed(context, "/");
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 10,
                    // TextStyle(color: Colors.white),
                    backgroundColor: Colors.white,
                    minimumSize: const Size(124, 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  child: Text(
                    "Cancel",
                    style: cancelbuttontext,
                  ),
                  //   child: Text(
                  //   'Add order',
                  //   style: TextStyle(color: Colors.pink, fontSize: 20,),
                  // ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context)
                    //     .pushNamedAndRemoveUntil("/", (Route<dynamic> route) => false);
                    Navigator.pushNamed(context, "/");
                  },
                  // child: Text("sumbit"),
                  style: ElevatedButton.styleFrom(
                    elevation: 10,
                    backgroundColor: Colors.pink,
                    minimumSize: const Size(124, 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  child: Text(
                    'Save',
                    style: deletebuttontext,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}