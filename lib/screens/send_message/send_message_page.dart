import 'package:flutter/material.dart';
import 'package:flutter_gradient_text/flutter_gradient_text.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsapp/style.dart';
import 'package:whatsapp/style.dart';

class SendMessagePage extends StatefulWidget {
  const SendMessagePage({super.key});

  @override
  State<SendMessagePage> createState() => _SendMessagePage();
}

List<String> options = [
  'Individual',
  'Contact Group',
];
bool value = false;
bool? isChecked = false;

class _SendMessagePage extends State<SendMessagePage> {
  // static const values = <String>['Individual', 'Contact Group',];
  // List<String> options = ['Individual', 'Contact Group',];
  // String delectedColor = values.first;
  String currentOption = options[0];
  final selectedColor = const Color(0xFF4926A0);
  final unselectedColor = Colors.yellow;

  int _value = 1;
  @override
  Widget build(BuildContext context) {
    Theme.of(context).copyWith(
        textSelectionTheme:
            const TextSelectionThemeData(cursorColor: Colors.amber));
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
            "Send Message",
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
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Template Name*",
                          style: inputtexttittle,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                          borderSide: BorderSide(color: Color(0xFFDADADA)),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFDADADA)),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFDADADA)),
                        ),

                        // borderRadius: BorderRadius.all(Radius.circular(6)),
                        // borderSide: BorderSide(width: 1),
                        suffixIcon: const Icon(
                          Icons.arrow_drop_down,
                          color: Color(0xFF545454),
                        ),
                        hintText: "Select Template",
                        hintStyle: contectcardsubtitletext,
                        helperStyle: inputboxtextfiles,
                      ),
                      style: inputboxtextfiles,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Message",
                          style: inputtexttittle,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Column(
                      children: [
                        TextField(
                          // maxLength: 20,
                          maxLines: 5,
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                              borderSide: BorderSide(color: Color(0xFFDADADA)),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFDADADA)),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFDADADA)),
                            ),
                            // border: const OutlineInputBorder(

                            //   borderRadius: BorderRadius.all(Radius.circular(6)),
                            //   // borderSide: BorderSide(width: 1),
                            // ),
                            hintText: "Enter Message",
                            hintStyle: contectcardsubtitletext,

                            helperStyle: inputboxtextfiles,
                          ),
                          style: inputboxtextfiles,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Select Type",
                          style: inputtexttittle,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Row(children: [
                          Radio(
                            activeColor: selectedColor,
                            value: options[0],
                            groupValue: currentOption,
                            // activeColor: Colors.pink,
                            // hoverColor: Colors.yellow,
                            // focusColor: Colors.red,
                            onChanged: (value) {
                              setState(() {
                                currentOption = value.toString();
                              });
                            },
                          ),
                          Text(
                            'Individual ',
                            style: inputboxtextfiles,
                          ),
                          // more widgets ...
                        ]),
                        const SizedBox(
                          width: 22,
                        ),
                        Row(children: [
                          Radio(
                            activeColor: selectedColor,
                            value: options[1],
                            groupValue: currentOption,
                            // activeColor: Colors.pink,
                            onChanged: (value) {
                              setState(() {
                                currentOption = value.toString();
                              });
                            },
                          ),
                          Text(
                            'Contact Group',
                            style: inputboxtextfiles,
                          ),
                        ]),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Row(
                        children: [
                          Stack(
                            children: [
                              const Row(
                                children: [
                                  // const Text(
                                  //   "Mdfgdfgdfgdfg",
                                  //   style: TextStyle(
                                  //       fontSize: 11,
                                  //       fontWeight: FontWeight.w600,
                                  //       color: Colors.white),
                                  // ),
                                ],
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 2,
                                    color: const Color(0xFFFFFFFF),
                                  ),
                                  color: const Color(0xFFA3D2F4),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(30)),
                                ),
                                child: Text(
                                  "M",
                                  style: roundfonttext,
                                ),
                                // color: Colors.red,
                                // decoration: BoxDecoration(borderRadius: BorderRadius.all(30 as Radius)),
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(left: 13),
                                    alignment: Alignment.center,
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 2,
                                        color: const Color(0xFFFFFFFF),
                                      ),
                                      color: const Color(0xFFA3F4BF),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(30)),
                                    ),
                                    child: Text(
                                      "V",
                                      style: roundfonttext,
                                    ),
                                    // color: Colors.red,
                                    // decoration: BoxDecoration(borderRadius: BorderRadius.all(30 as Radius)),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(left: 27),
                                    alignment: Alignment.center,
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 2,
                                        color: const Color(0xFFFFFFFF),
                                      ),
                                      color: const Color(0xFFF4E7A3),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(30)),
                                    ),
                                    child: Text(
                                      "M",
                                      style: roundfonttext,
                                    ),
                                    // color: Colors.red,
                                    // decoration: BoxDecoration(borderRadius: BorderRadius.all(30 as Radius)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(width: 8),
                          Row(children: [
                            Text(
                              "50+ Contacts Added",
                              style: contactsAddedText,
                            )
                          ]),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Row(
                              children: [
                                Text(
                                  "View",
                                  style: viewText,
                                ),
                                SvgPicture.asset(
                                  'assets/images/navigatefdg.svg',
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Row(
                        children: [
                          Stack(
                            children: [
                              const Row(
                                children: [
                                  // const Text(
                                  //   "Mdfgdfgdfgdfg",
                                  //   style: TextStyle(
                                  //       fontSize: 11,
                                  //       fontWeight: FontWeight.w600,
                                  //       color: Colors.white),
                                  // ),
                                ],
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 2,
                                    color: const Color(0xFFFFFFFF),
                                  ),
                                  color: const Color(0xFFA3D2F4),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(30)),
                                ),
                                child: Text(
                                  "B",
                                  style: roundfonttext,
                                ),
                                // color: Colors.red,
                                // decoration: BoxDecoration(borderRadius: BorderRadius.all(30 as Radius)),
                              ),
                            ],
                          ),
                          const SizedBox(width: 8),
                          Row(children: [
                            Text(
                              "BLackflux Technologies",
                              style: contactsAddedText,
                            )
                          ]),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Row(
                              children: [
                                Text(
                                  "View",
                                  style: viewText,
                                ),
                                SvgPicture.asset(
                                  'assets/images/navigatefdg.svg',
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/addContacts");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 4.0),
                                child: Text(
                                  "+ Add Contacts",
                                  style: viewText,
                                ),
                              ),
                              // Custom underline with a gap
                              Positioned(
                                bottom: 5,
                                child: Container(
                                  height: 1.0,
                                  color: CustomTextStyling().primaryColor,
                                  width: 122,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/addGroup");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 4.0),
                                child: Text(
                                  "+ Add Group",
                                  style: viewText,
                                ),
                              ),
                              // Custom underline with a gap
                              Positioned(
                                bottom: 5,
                                child: Container(
                                  height: 1.0,
                                  color: CustomTextStyling().primaryColor,
                                  width: 122,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                            value: isChecked,
                            activeColor: const Color(0xFF4926A0),
                            // tristate: true,
                            onChanged: (newBool) {
                              setState(() {
                                isChecked = newBool;
                              });
                            }),
                        const SizedBox(
                          width: 0,
                        ),
                        Text(
                          "Would you like to schedule a message ?",
                          style: inputboxtextfiles,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Date & Time*",
                          style: inputtexttittle,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                          borderSide: BorderSide(color: Color(0xFFDADADA)),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFDADADA)),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFDADADA)),
                        ),

                        // borderRadius: BorderRadius.all(Radius.circular(6)),
                        // borderSide: BorderSide(width: 1),
                        suffixIcon: SvgPicture.asset(
                          'assets/images/calendacvc.svg',
                          height: 24,
                          width: 24,
                          fit: BoxFit.none,
                          color: const Color(0xFF545454),
                        ),
                        hintText: "Select Date & Time",
                        hintStyle: contectcardsubtitletext,
                        helperStyle: inputboxtextfiles,
                      ),
                      style: inputboxtextfiles,
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF2F2F2),
                    minimumSize: const Size(124, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: BorderSide.none,
                    ),
                    elevation: 0,
                  ),
                  child: Text(
                    "Cancel",
                    style: cancelbuttontext,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFC1683),
                    minimumSize: const Size(124, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: BorderSide.none,
                    ),
                    elevation: 0,
                  ),
                  child: Text(
                    "Send",
                    // 'Schedule',
                    style: deletebuttontext,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

// class SingingCharacter {}
