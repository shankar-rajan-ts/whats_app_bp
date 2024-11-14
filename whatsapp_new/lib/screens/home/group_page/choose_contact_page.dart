import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gradient_text/flutter_gradient_text.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsapp/style.dart';

class ChooseContactPage extends StatefulWidget {
  const ChooseContactPage({super.key});

  @override
  State<ChooseContactPage> createState() => _ChooseContactPage();
}

bool isChecked = false; // Define isChecked as a boolean variable

class _ChooseContactPage extends State<ChooseContactPage> {
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
            "Add Contacts",
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
          Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    TextField(
                      style: inputboxtextfiles,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 12),
                          hintText: "Mukesh",
                          hintStyle: inputboxtextfiles,
                          // helperStyle: TextStyle(
                          //     color: const Color.fromARGB(255, 244, 242, 242)),
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Color(0xFF888888),
                          ),
                          fillColor: Colors.white,
                          // fillColor: const Color.fromARGB(255, 241, 239, 239),
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide:
                                const BorderSide(color: Color(0xFFDADADA)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            // borderSide: BorderSide(color: Color.fromARGB(255, 117, 117, 60)),
                            borderSide:
                                const BorderSide(color: Color(0xFFDADADA)),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 1,
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
                                child: const Text(
                                  "M",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),

                                // color: Colors.red,
                                // decoration: BoxDecoration(borderRadius: BorderRadius.all(30 as Radius)),
                              ),
                            ),
                            title: const Text(
                              "Mukesh Kumar",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: "Poppins"),
                            ),
                            subtitle: const Text(
                              "Ph No: 63528 32568 ",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12),
                            ),
                            trailing: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    // ...

                                    Checkbox(
                                        value: isChecked,
                                        activeColor:
                                            Color.fromARGB(255, 71, 56, 205),
                                        onChanged: (newBool) {
                                          setState(() {
                                            isChecked = newBool ??
                                                false; // Assign false when newBool is null
                                          });
                                        })
                                  ],
                                ),
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
            child: SizedBox(
              height: 40,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                ),
                onPressed: () {
                  print("assad");
                  Navigator.pushNamed(context, "/selectedContactsPage");
                },
                child: Text(
                  'Done',
                  style: deletebuttontext,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
