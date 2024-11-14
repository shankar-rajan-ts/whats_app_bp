import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whatsapp/screens/nav-bar/chats/service_list_model.dart';
import 'package:whatsapp/style.dart';

class PersonalChat extends StatefulWidget {
  const PersonalChat({super.key});

  @override
  State<PersonalChat> createState() => _PersonalChat();
}

List<String> options = [
  'React JS',
  'Mangodb',
  'Nest JS',
  'Automation',
  'Manual',
];
// List<String> options = ['React JS', 'Mangodb', 'Nest JS'];

class _PersonalChat extends State<PersonalChat> {
  String currentOption = options[0];
  final selectedColor = Color(0xFF4926A0);
  final unselectedColor = Colors.yellow;

  int _value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,

        backgroundColor: Colors.white,
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

        // centerTitle: true,
        //  backgroundColor: Colors.grey,
        title: Text(
          "Mukesh Kumar",
          style: groudcreatetext,
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Row(
              children: [
                Container(
                  height: 28,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF2F2F2)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset(
                        'assets/images/switch.svg',
                        height: 20,
                        width: 20,
                        fit: BoxFit.none,
                      ),
                      Text("Auto", style: autoText),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 0),
                child: ClipPath(
                  clipper: UpperNipMessageClipper(
                    MessageType.receive,
                    bubbleRadius: 1,
                    sizeOfNip: 8,
                    sizeRatio: 4,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      alignment: Alignment.center,
                      height: 34,
                      // width: 42,
                      width: MediaQuery.of(context).size.width * 0.12,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                          bottomLeft: Radius.zero,
                          bottomRight: Radius.circular(8.0),
                        ),
                        color: Color(0xFFF0EEF7),
                        //   boxShadow: [
                        //   BoxShadow(
                        //       color: Color(0xFF1C1B1F).withOpacity(0.5),
                        //       // color: Color(0xFF1C1B1F).withOpacity(0.2),
                        //       // color: Colors.grey.withOpacity(0.2),
                        //       spreadRadius: 10,
                        //       blurRadius: 20,
                        //       offset: const Offset(3, 3))
                        // ],
                      ),
                      child: Text(
                        "Hii",
                        style: cancelbuttontext,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    Text(
                      "12:25 PM",
                      style: reportperagraphtext,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 62,
                      width: 213,
                      // padding: const EdgeInsets.only(
                      //     top: 10, left: 20, bottom: 1, right: 20),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                          bottomRight: Radius.zero,
                        ),
                        color: Color(0xFFECF5EE),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            "Hii Thanks for Choosing us, How can i help you?",
                            textAlign: TextAlign.start,
                            style: chatReceiveText),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Align(
                      alignment: Alignment.centerRight,
                    ),
                    Text(
                      "12:25 PM",
                      style: reportperagraphtext,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 100),
                child: ClipPath(
                  clipper: UpperNipMessageClipper(
                    MessageType.receive,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      alignment: Alignment.center,
                      height: 65,
                      width: 164,
                      // width: MediaQuery.of(context).size.width * 0.65,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                          bottomLeft: Radius.zero,
                          bottomRight: Radius.circular(8.0),
                        ),
                        color: Color(0xFFF0EEF7),
                        //   boxShadow: [
                        //   BoxShadow(
                        //       color: Color.fromARGB(255, 137, 137, 139).withOpacity(0.3),
                        //       //  color: Color(0xFF1C1B1F).withOpacity(0.3),
                        //       // color: Colors.grey.withOpacity(0.2),
                        //       spreadRadius: 10,
                        //       blurRadius: 20,
                        //       offset: const Offset(3, 3))
                        // ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          " I want to learn Web Development",
                          style: cancelbuttontext,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    Text(
                      "12:25 PM",
                      style: reportperagraphtext,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 150,
                      width: 258,
                      decoration: const BoxDecoration(
                        color: Color(0xFFECF5EE),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                          bottomRight: Radius.zero,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Service offered by bfx",
                                    style: cancelbuttontext,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Below list we describe our services ",
                                    style: dashbordthreecardtext,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Thanks for choosing bfx",
                                    style: contectcardsubtitletext,
                                  ),
                                ],
                              ),
                            ),
                            const Divider(),
                            GestureDetector(
                              onTap: () => {
                                showModalBottomSheet<void>(
                                  context: context,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20.0),
                                      topRight: Radius.circular(20.0),
                                    ),
                                  ),
                                  builder: (BuildContext context) {
                                    return const SizedBox(
                                        height: 450, child: ServiceListModel());
                                  },
                                )
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    'assets/images/format_lfdgdf.svg',
                                    height: 20,
                                    width: 20,
                                    fit: BoxFit.none,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Service List",
                                    style: serviceListText,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Align(
                      alignment: Alignment.centerRight,
                    ),
                    Text(
                      "12:25 PM",
                      style: reportperagraphtext,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 0),
                child: ClipPath(
                  clipper: UpperNipMessageClipper(
                    MessageType.receive,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: 130,
                      width: 200,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8.0),
                            topRight: Radius.circular(8.0),
                            bottomLeft: Radius.zero,
                            bottomRight: Radius.circular(8.0),
                          ),
                          color: Color(0xFFF0EEF7)),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 2,
                          ),
                          Card.filled(
                            shape: BeveledRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            child: Container(
                              height: 90,
                              width: double.infinity,
                              // width: 180,
                              decoration: BoxDecoration(
                                  color:
                                      const Color(0xFFF0EEF7).withOpacity(0.1),
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(8),
                                      bottomLeft: Radius.circular(8)),
                                  border: const Border(
                                      left: BorderSide(
                                    color: Color(0xFF4926A0),
                                    width: 2.0,
                                  )),
                                  boxShadow: [
                                    BoxShadow(
                                        color: const Color(0xFFEBE6F4)
                                            .withOpacity(0),
                                        // color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 10,
                                        blurRadius: 20,
                                        offset: const Offset(3, 3))
                                  ]),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      "You",
                                      style: youText,
                                    ),
                                    const SizedBox(
                                      height: 1,
                                    ),
                                    Text("Service offered by bfx",
                                        style: cancelbuttontext),
                                    const SizedBox(
                                      height: 1,
                                    ),
                                    Text("Service offered by bfx",
                                        style: dashbordthreecardtext),
                                    const SizedBox(
                                      height: 1,
                                    ),
                                    Text("Service offered by bfx",
                                        style: contectcardsubtitletext),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "React JS",
                                  style: cancelbuttontext,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Text(
                      "12:25 PM",
                      style: reportperagraphtext,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 88,
                      width: 258,
                      decoration: const BoxDecoration(
                        color: Color(0xFFECF5EE),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                          bottomLeft: Radius.circular(8.0),
                          bottomRight: Radius.zero,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "React JS",
                              style: cancelbuttontext,
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Text(
                              "Thanks for choosing React JS ",
                              style: dashbordthreecardtext,
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Text(
                              "Thanks for choosing bfx",
                              style: contectcardsubtitletext,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // const Align(
                    //         alignment: Alignment.center,
                    //       ),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: const Color(0xFFECF5EE),
                        // maximumSize: Size(120, 140),
                        minimumSize: const Size(125, 40),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          side: BorderSide(
                            color: Color.fromARGB(255, 240, 238, 238),
                            width: 1,
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Chapter 1',
                        style: serviceListText,
                      ),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: const Color(0xFFECF5EE),
                        // maximumSize: Size(120, 140),
                        minimumSize: const Size(125, 40),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          side: BorderSide(
                            color: Color.fromARGB(255, 240, 238, 238),
                            width: 1,
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Chapter 2',
                        style: serviceListText,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Align(
                      alignment: Alignment.centerRight,
                    ),
                    Text(
                      "12:25 PM",
                      style: reportperagraphtext,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 0),
                child: ClipPath(
                  clipper: UpperNipMessageClipper(
                    MessageType.receive,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: 160,
                      width: 230,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8.0),
                            topRight: Radius.circular(8.0),
                            bottomLeft: Radius.zero,
                            bottomRight: Radius.circular(8.0),
                          ),
                          color: Color(0xFFF0EEF7)),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 2,
                          ),
                          Card.filled(
                            shape: BeveledRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            child: Container(
                              height: 113,
                              // width: double.infinity,
                              width: 220,
                              decoration: BoxDecoration(
                                  color:
                                      const Color(0xFFF0EEF7).withOpacity(0.1),
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(8),
                                      bottomLeft: Radius.circular(8)),
                                  border: const Border(
                                      left: BorderSide(
                                    color: Color(0xFF4926A0),
                                    width: 2.0,
                                  )),
                                  boxShadow: [
                                    BoxShadow(
                                        color: const Color(0xFFEBE6F4)
                                            .withOpacity(0),
                                        // color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 10,
                                        blurRadius: 20,
                                        offset: const Offset(3, 3))
                                  ]),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 7,
                                    ),
                                    Text(
                                      "You",
                                      style: youText,
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text("React JS", style: cancelbuttontext),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text("Thanks for choosing React JS",
                                        style: dashbordthreecardtext),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text("Thanks for choosing React JS",
                                        style: contectcardsubtitletext),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Chapter 1",
                                  style: cancelbuttontext,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Text(
                      "12:25 PM",
                      style: reportperagraphtext,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 0),
                child: ClipPath(
                  clipper: UpperNipMessageClipper(
                    MessageType.receive,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: 338,
                      width: 258,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8.0),
                            topRight: Radius.circular(8.0),
                            bottomLeft: Radius.zero,
                            bottomRight: Radius.circular(8.0),
                          ),
                          color: Color(0xFFF2F2F2)),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 249,
                            // width: double.infinity,
                            width: 247,
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10)),
                                boxShadow: [
                                  BoxShadow(
                                    // color: Colors.grey.withOpacity(0),
                                    color: const Color(0xFF1C1B1F)
                                        .withOpacity(0.1),
                                    spreadRadius: 10,
                                    blurRadius: 20,
                                  )
                                ]

                                // color: Colors.red,
                                ),

                            child: const Padding(
                              padding: EdgeInsets.only(left: 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image(
                                    image: AssetImage(
                                        "assets/images/TN - Featured Image.png"),
                                    height: 249,
                                    width: double.infinity,
                                    // width: 247,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 5),
                            // padding: const EdgeInsets.only(left: 10, top: 10, right: 3),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Lorem Ipsum is simply dummy text of the  typesetting industry.",
                                  style: cancelbuttontext,
                                  textAlign: TextAlign.start,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Text(
                      "12:25 PM",
                      style: reportperagraphtext,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Wrap(children: [
            Padding(
              padding: EdgeInsets.only(
                // Dynamic bottom padding
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: Container(
                height: 45,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Container(
                  height: 60,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: 272,
                          height: 46,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16)),
                          child: TextField(
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16)),
                                borderSide:
                                    BorderSide(color: Color(0xFFDADADA)),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16)),
                                borderSide:
                                    BorderSide(color: Color(0xFFDADADA)),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16)),
                                borderSide:
                                    BorderSide(color: Color(0xFFDADADA)),
                              ),
                              hintText: "Enter message",
                              hintStyle: contectcardsubtitletext,
                              helperStyle: contectcardsubtitletext,
                            ),
                            style: inputboxtextfiles,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 46,
                        width: 46,
                        decoration: BoxDecoration(
                          color: const Color(0xFF4926A0),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: SvgPicture.asset(
                          'assets/images/send_dfsdf.svg',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
