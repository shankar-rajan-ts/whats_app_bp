import 'package:flutter/material.dart';
import 'package:flutter_gradient_text/flutter_gradient_text.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsapp/style.dart';

class CreateTremplate extends StatefulWidget {
  const CreateTremplate({super.key});

  @override
  State<CreateTremplate> createState() => _CreateTremplateState();
}

List<String> options = [
  'Text Message',
  'Interactive Message',
  'Button Type',
  'List Type'
];

class _CreateTremplateState extends State<CreateTremplate> {
  String currentOption = options[0];
  final selectedColor = const Color(0xFF4926A0);
  final unselectedColor = Colors.yellow;

  int _value = 0;
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
            height: 20,
            width: 20,
            fit: BoxFit.none,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const GradientText(
          Text(
            "Create Template",
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
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/editContact");
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: SvgPicture.asset(
                'assets/images/edit_xc.svg',
                height: 24,
                width: 24,
                fit: BoxFit.none,
              ),
            ),
          )
        ],
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
                          "Incoming Message*",
                          style: inputtexttittle,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            width: 272,
                            height: 46,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0)),
                            child: TextField(
                              decoration: InputDecoration(
                                border: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6)),
                                  borderSide:
                                      BorderSide(color: Color(0xFFDADADA)),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6)),
                                  borderSide:
                                      BorderSide(color: Color(0xFFDADADA)),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6)),
                                  borderSide:
                                      BorderSide(color: Color(0xFFDADADA)),
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
                          ),
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 46,
                          width: 46,
                          decoration: BoxDecoration(
                            color: const Color(0xFFFC1683),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: SvgPicture.asset(
                              'assets/images/send_dfsdf.svg',
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 30,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: const Color(0xFFF2F2F2),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Hi",
                                    style: cancelbuttontext,
                                  ),
                                  SvgPicture.asset(
                                    'assets/images/cancelsdsd.svg',
                                    width: 20,
                                    height: 20,
                                    fit: BoxFit.none,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 30,
                              width: 82,
                              decoration: BoxDecoration(
                                  color: const Color(0xFFF2F2F2),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "Hello",
                                    style: cancelbuttontext,
                                  ),
                                  SvgPicture.asset(
                                    'assets/images/cancelsdsd.svg',
                                    width: 20,
                                    height: 20,
                                    fit: BoxFit.none,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text(
                          "Select Type*",
                          style: inputtexttittle,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 17,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
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
                            'Text Message',
                            style: inputboxtextfiles,
                          ),
                          // more widgets ...
                        ]),
                        const SizedBox(
                          width: 6,
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
                            'Interactive Message',
                            style: inputboxtextfiles,
                          ),
                          // more widgets ...
                        ]),
                      ],
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
                      height: 10,
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
                          "Header*",
                          style: inputtexttittle,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        TextField(
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

                            // borderRadius: BorderRadius.all(Radius.circular(6)),
                            // borderSide: BorderSide(width: 1),
                            // suffixIcon: const Icon(
                            //   Icons.arrow_drop_down,
                            //   color: Color(0xFF545454),
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
                          "Body*",
                          style: inputtexttittle,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
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
                        Text.rich(TextSpan(children: [
                          TextSpan(
                            text: "Footer",
                            style: inputtexttittle,
                          ),
                          const WidgetSpan(
                            child: SizedBox(
                              width: 1,
                            ),
                          ),
                          TextSpan(
                            text: "(Optional)",
                            style: inputboxtextfiles,
                          ),
                        ]))
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        TextField(
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

                            // borderRadius: BorderRadius.all(Radius.circular(6)),
                            // borderSide: BorderSide(width: 1),
                            // suffixIcon: const Icon(
                            //   Icons.arrow_drop_down,
                            //   color: Color(0xFF545454),
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
                      height: 14,
                    ),
                    Row(
                      children: [
                        Text(
                          "Interactive Type*",
                          style: inputtexttittle,
                        )
                      ],
                    ),
                    //  const SizedBox(
                    //   height: 12,
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(children: [
                          Radio(
                            activeColor: selectedColor,
                            value: options[2],
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
                            'Button Type',
                            style: inputboxtextfiles,
                          ),
                          // more widgets ...
                        ]),
                        const SizedBox(
                          width: 28,
                        ),
                        Row(children: [
                          Radio(
                            activeColor: selectedColor,
                            value: options[3],
                            groupValue: currentOption,
                            // activeColor: Colors.pink,
                            onChanged: (value) {
                              setState(() {
                                currentOption = value.toString();
                              });
                            },
                          ),
                          Text(
                            'List Type',
                            style: inputboxtextfiles,
                          ),
                          // more widgets ...
                        ]),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "1. Button",
                          style: inputtexttittle,
                        ),
                        SvgPicture.asset(
                          'assets/images/canceles.svg',
                          fit: BoxFit.cover,
                          width: 18,
                          height: 18,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        TextField(
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

                            // borderRadius: BorderRadius.all(Radius.circular(6)),
                            // borderSide: BorderSide(width: 1),
                            // suffixIcon: const Icon(
                            //   Icons.arrow_drop_down,
                            //   color: Color(0xFF545454),
                            // ),
                            hintText: "Enter Button Name",
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "2. Button",
                          style: inputtexttittle,
                        ),
                        SvgPicture.asset(
                          'assets/images/canceles.svg',
                          fit: BoxFit.cover,
                          width: 18,
                          height: 18,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        TextField(
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

                            // borderRadius: BorderRadius.all(Radius.circular(6)),
                            // borderSide: BorderSide(width: 1),
                            // suffixIcon: const Icon(
                            //   Icons.arrow_drop_down,
                            //   color: Color(0xFF545454),
                            // ),
                            hintText: "Enter Button Name",
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
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/");
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
                                  "+ Add Button",
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "List Title",
                          style: inputtexttittle,
                        ),
                        SvgPicture.asset(
                          'assets/images/canceles.svg',
                          fit: BoxFit.cover,
                          width: 18,
                          height: 18,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        TextField(
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

                            // borderRadius: BorderRadius.all(Radius.circular(6)),
                            // borderSide: BorderSide(width: 1),
                            // suffixIcon: const Icon(
                            //   Icons.arrow_drop_down,
                            //   color: Color(0xFF545454),
                            // ),
                            hintText: "Enter List Title",
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "  1. List Name",
                          style: inputtexttittle,
                        ),
                        SvgPicture.asset(
                          'assets/images/do_not_disturkjb.svg',
                          fit: BoxFit.cover,
                          width: 18,
                          height: 18,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        TextField(
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

                            // borderRadius: BorderRadius.all(Radius.circular(6)),
                            // borderSide: BorderSide(width: 1),
                            // suffixIcon: const Icon(
                            //   Icons.arrow_drop_down,
                            //   color: Color(0xFF545454),
                            // ),
                            hintText: "Enter List Name",
                            hintStyle: contectcardsubtitletext,
                            helperStyle: inputboxtextfiles,
                          ),
                          style: inputboxtextfiles,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextField(
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

                            // borderRadius: BorderRadius.all(Radius.circular(6)),
                            // borderSide: BorderSide(width: 1),
                            // suffixIcon: const Icon(
                            //   Icons.arrow_drop_down,
                            //   color: Color(0xFF545454),
                            // ),
                            hintText: "Enter List Description",
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "2. List Name",
                          style: inputtexttittle,
                        ),
                        SvgPicture.asset(
                          'assets/images/do_not_disturkjb.svg',
                          fit: BoxFit.cover,
                          width: 18,
                          height: 18,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        TextField(
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

                            // borderRadius: BorderRadius.all(Radius.circular(6)),
                            // borderSide: BorderSide(width: 1),
                            // suffixIcon: const Icon(
                            //   Icons.arrow_drop_down,
                            //   color: Color(0xFF545454),
                            // ),
                            hintText: "Enter List Name",
                            hintStyle: contectcardsubtitletext,
                            helperStyle: inputboxtextfiles,
                          ),
                          style: inputboxtextfiles,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextField(
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

                            // borderRadius: BorderRadius.all(Radius.circular(6)),
                            // borderSide: BorderSide(width: 1),
                            // suffixIcon: const Icon(
                            //   Icons.arrow_drop_down,
                            //   color: Color(0xFF545454),
                            // ),
                            hintText: "Enter List Description",
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
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/");
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
                                  "+ Add More Field",
                                  style: contactsAddedText,
                                ),
                              ),
                              // Custom underline with a gap
                              Positioned(
                                bottom: 5,
                                child: Container(
                                  height: 1.0,
                                  color: CustomTextStyling()
                                      .buttonandnumbertextcolor,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "List Title",
                          style: inputtexttittle,
                        ),
                        SvgPicture.asset(
                          'asssets/images/canceles.svg',
                          fit: BoxFit.cover,
                          width: 18,
                          height: 18,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        TextField(
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

                            // borderRadius: BorderRadius.all(Radius.circular(6)),
                            // borderSide: BorderSide(width: 1),
                            // suffixIcon: const Icon(
                            //   Icons.arrow_drop_down,
                            //   color: Color(0xFF545454),
                            // ),
                            hintText: "Enter List Title",
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "  1. List Name",
                          style: inputtexttittle,
                        ),
                        SvgPicture.asset(
                          'asssets/images/do_not_disturkjb.svg',
                          fit: BoxFit.cover,
                          width: 18,
                          height: 18,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        TextField(
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

                            // borderRadius: BorderRadius.all(Radius.circular(6)),
                            // borderSide: BorderSide(width: 1),
                            // suffixIcon: const Icon(
                            //   Icons.arrow_drop_down,
                            //   color: Color(0xFF545454),
                            // ),
                            hintText: "Enter List Name",
                            hintStyle: contectcardsubtitletext,
                            helperStyle: inputboxtextfiles,
                          ),
                          style: inputboxtextfiles,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextField(
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

                            // borderRadius: BorderRadius.all(Radius.circular(6)),
                            // borderSide: BorderSide(width: 1),
                            // suffixIcon: const Icon(
                            //   Icons.arrow_drop_down,
                            //   color: Color(0xFF545454),
                            // ),
                            hintText: "Enter List Description",
                            hintStyle: contectcardsubtitletext,
                            helperStyle: inputboxtextfiles,
                          ),
                          style: inputboxtextfiles,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/");
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
                                  "+ Add More Field",
                                  style: contactsAddedText,
                                ),
                              ),
                              // Custom underline with a gap
                              Positioned(
                                bottom: 5,
                                child: Container(
                                  height: 1.0,
                                  color: CustomTextStyling()
                                      .buttonandnumbertextcolor,
                                  width: 122,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/");
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
                                  "+ Add New List",
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
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
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
                    'Save',
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
