import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_text/flutter_gradient_text.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsapp/style.dart';

class TemplateCreat extends StatefulWidget {
  const TemplateCreat({super.key});

  @override
  State<TemplateCreat> createState() => _TemplateCreat();
}

List<String> genderItems = [
  'Template 1',
  'Template 2',
  'Template 3',
];
String? selectedValue;

List<String> options = [
  'Custom',
  'Variable',
  'Phone Number',
  'Url',
  'Phone Number',
  'Url',
];
// List<String> options2 = [
//   'Phone Number',
//   'Url',
// ];

class _TemplateCreat extends State<TemplateCreat> {
  String currentOption = options[0];
  final selectedColor = Color(0xFF4926A0);
  final unselectedColor = Colors.yellow;

  int _value = 1;
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
            "Templates",
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
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Template Name*",
                          style: inputtexttittle,
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
                            // border: const OutlineInputBorder(

                            //   borderRadius: BorderRadius.all(Radius.circular(6)),
                            //   // borderSide: BorderSide(width: 1),
                            // ),
                            hintText: "Blackflux",
                            hintStyle: contectcardsubtitletext,

                            helperStyle: inputboxtextfiles,
                          ),
                          style: inputboxtextfiles,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Category*",
                          style: inputtexttittle,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        DropdownButtonFormField2<String>(
                          // customButton: Container(
                          //   color: Colors.white,
                          // ),
                          // barrierColor: const Color.fromARGB(255, 218, 35, 35),
                          barrierDismissible: true,
                          // barrierLabel: 'safdsf',
                          isExpanded: true,
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 16),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                              borderSide: BorderSide(color: Color(0xFFDADADA)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFDADADA)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFDADADA)),
                            ),
                            fillColor: Colors.white,
                            filled: true,
                          ),

                          hint:
                              Text('Marketing', style: contectcardsubtitletext),
                          items: genderItems
                              .map((item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(
                                      item,
                                      style: inputboxtextfiles,
                                    ),
                                  ))
                              .toList(),
                          validator: (value) {
                            if (value == null) {
                              return 'Please select gender.';
                            }
                            return null;
                          },
                          onChanged: (value) {
                            //Do something when selected item is changed.
                          },
                          onSaved: (value) {
                            selectedValue = value.toString();
                          },

                          buttonStyleData: const ButtonStyleData(
                            padding: EdgeInsets.only(right: 8),
                          ),
                          iconStyleData: const IconStyleData(
                            icon: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.black45,
                            ),
                            iconSize: 24,
                          ),

                          dropdownStyleData: DropdownStyleData(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          menuItemStyleData: const MenuItemStyleData(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            // height: 35,
                          ),
                        ),
                        // TextField(
                        //   decoration: InputDecoration(
                        //     border: const OutlineInputBorder(
                        //       borderRadius:
                        //           BorderRadius.all(Radius.circular(6)),
                        //       borderSide: BorderSide(color: Color(0xFFDADADA)),
                        //     ),
                        //     enabledBorder: const OutlineInputBorder(
                        //       borderSide: BorderSide(color: Color(0xFFDADADA)),
                        //     ),
                        //     focusedBorder: const OutlineInputBorder(
                        //       borderSide: BorderSide(color: Color(0xFFDADADA)),
                        //     ),
                        //     // border: const OutlineInputBorder(

                        //     //   borderRadius: BorderRadius.all(Radius.circular(6)),
                        //     //   // borderSide: BorderSide(width: 1),
                        //     // ),
                        //     hintText: "Marketing",
                        //     hintStyle: contectcardsubtitletext,

                        //     helperStyle: inputboxtextfiles,
                        //   ),
                        //   style: inputboxtextfiles,
                        // ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Language*",
                          style: inputtexttittle,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        DropdownButtonFormField2<String>(
                          // customButton: Container(
                          //   color: Colors.white,
                          // ),
                          // barrierColor: const Color.fromARGB(255, 218, 35, 35),
                          barrierDismissible: true,
                          // barrierLabel: 'safdsf',
                          isExpanded: true,
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 16),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                              borderSide: BorderSide(color: Color(0xFFDADADA)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFDADADA)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFDADADA)),
                            ),
                            fillColor: Colors.white,
                            filled: true,
                          ),

                          hint: Text('English', style: contectcardsubtitletext),
                          items: genderItems
                              .map((item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(
                                      item,
                                      style: inputboxtextfiles,
                                    ),
                                  ))
                              .toList(),
                          validator: (value) {
                            if (value == null) {
                              return 'Please select gender.';
                            }
                            return null;
                          },
                          onChanged: (value) {
                            //Do something when selected item is changed.
                          },
                          onSaved: (value) {
                            selectedValue = value.toString();
                          },

                          buttonStyleData: const ButtonStyleData(
                            padding: EdgeInsets.only(right: 8),
                          ),
                          iconStyleData: const IconStyleData(
                            icon: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.black45,
                            ),
                            iconSize: 24,
                          ),

                          dropdownStyleData: DropdownStyleData(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          menuItemStyleData: const MenuItemStyleData(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            // height: 35,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Divider(),
                        Text(
                          "WhatsApp Message*",
                          style: inputtexttittle,
                        ),
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
                              // borderRadius: BorderRadius.all(Radius.circular(6)),
                              borderSide: BorderSide(color: Color(0xFFDADADA)),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              // borderRadius: BorderRadius.all(Radius.circular(6)),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(6),
                                topRight: Radius.circular(6),
                              ),
                              borderSide: BorderSide(color: Color(0xFFDADADA)),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              // borderRadius: BorderRadius.all(Radius.circular(6)),
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
                        // Divider(),
                        Container(
                          height: 42,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              border: Border(
                                left: BorderSide(
                                  color: Color(0xffDADADA),
                                  width: 1,
                                ),
                                right: BorderSide(
                                  color: Color(0xffDADADA),
                                  width: 1,
                                ),
                                bottom: BorderSide(
                                  color: Color(0xffDADADA),
                                  width: 1,
                                ),
                              ),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(6),
                                bottomRight: Radius.circular(6),
                                topLeft: Radius.circular(0),
                                topRight: Radius.circular(0),
                              )),
                          child: Padding(
                            padding: const EdgeInsets.all(.0),
                            child: Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(left: 12),
                                  height: 30,
                                  width: 34,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff888888)
                                        .withOpacity(0.4),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: SvgPicture.asset(
                                        'assets/images/format_bold_FILLcfdg.svg',
                                        height: 18,
                                        width: 18,
                                        fit: BoxFit.none,
                                      )),
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                Container(
                                  height: 30,
                                  width: 34,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff888888)
                                        .withOpacity(0.4),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: SvgPicture.asset(
                                        'assets/images/format_italic_xcx.svg',
                                        height: 18,
                                        width: 18,
                                        fit: BoxFit.none,
                                      )),
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                Container(
                                  height: 30,
                                  width: 34,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff888888)
                                        .withOpacity(0.4),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: SvgPicture.asset(
                                        'assets/images/strikethrougsasdf.svg',
                                        height: 18,
                                        width: 18,
                                        fit: BoxFit.none,
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    // Row(
                    //   children: [
                    //     Ink(
                    //       decoration: ShapeDecoration(
                    //         color: const Color(0xff888888).withOpacity(0.4),
                    //         shape: RoundedRectangleBorder(
                    //           borderRadius: BorderRadius.circular(10),
                    //         ),
                    //       ),
                    //       child: IconButton(
                    //         icon: const Icon(
                    //           Icons.format_bold_rounded,
                    //          size: 25,
                    //           color: Color(0xFF1C1B1F),
                    //         ),
                    //         onPressed: () {
                    //           print('pressed');
                    //         },
                    //       ),
                    //     ),
                    //     const SizedBox(
                    //       width: 10,
                    //     ),
                    //     Ink(
                    //       decoration: ShapeDecoration(
                    //         color: const Color(0xff888888).withOpacity(0.4),
                    //         shape: RoundedRectangleBorder(
                    //           borderRadius: BorderRadius.circular(10),
                    //         ),
                    //       ),
                    //       child: IconButton(
                    //         icon: const Icon(
                    //           Icons.format_italic_rounded,
                    //           // Icons.format_italic,
                    //           size: 25,
                    //           color: Color(0xFF1C1B1F),
                    //         ),
                    //         onPressed: () {
                    //           print('pressed');
                    //         },
                    //       ),
                    //     ),
                    //     const SizedBox(
                    //       width: 10,
                    //     ),
                    //     Ink(
                    //       // height: 40,
                    //       // width: 40,
                    //       decoration: ShapeDecoration(
                    //         color: const Color(0xff888888).withOpacity(0.4),
                    //         shape: RoundedRectangleBorder(
                    //           borderRadius: BorderRadius.circular(10),
                    //         ),
                    //       ),
                    //       child: IconButton(
                    //         icon: const Icon(
                    //           Icons.strikethrough_s,
                    //           size: 25,
                    //           color: Color(0xFF1C1B1F),
                    //         ),
                    //         style: ButtonStyle(),
                    //         onPressed: () {
                    //           print('pressed');
                    //         },
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "1. Sample Value",
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
                        // Text(
                        //   "  1. Sample Value",
                        //   style: inputtexttittle,
                        // ),
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
                            // border: const OutlineInputBorder(
                            // suffixIcon: const Icon(
                            //   Icons.arrow_drop_down,
                            //   color: Color(0xFF545454),
                            // ),
                            //   borderRadius: BorderRadius.all(Radius.circular(6)),
                            //   // borderSide: BorderSide(width: 1),
                            // ),
                            hintText: "Name",
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
                            'Custom ',
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
                            'Variable',
                            style: inputboxtextfiles,
                          ),
                          // more widgets ...
                        ]),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        DropdownButtonFormField2<String>(
                          // customButton: Container(
                          //   color: Colors.white,
                          // ),
                          // barrierColor: const Color.fromARGB(255, 218, 35, 35),
                          barrierDismissible: true,
                          // barrierLabel: 'safdsf',
                          isExpanded: true,
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 16),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6)),
                              borderSide: BorderSide(color: Color(0xFFDADADA)),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFDADADA)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFDADADA)),
                            ),
                            fillColor: Colors.white,
                            filled: true,
                          ),

                          hint: Text('Select Variable',
                              style: contectcardsubtitletext),
                          items: genderItems
                              .map((item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(
                                      item,
                                      style: inputboxtextfiles,
                                    ),
                                  ))
                              .toList(),
                          validator: (value) {
                            if (value == null) {
                              return 'Please select gender.';
                            }
                            return null;
                          },
                          onChanged: (value) {
                            //Do something when selected item is changed.
                          },
                          onSaved: (value) {
                            selectedValue = value.toString();
                          },

                          buttonStyleData: const ButtonStyleData(
                            padding: EdgeInsets.only(right: 8),
                          ),
                          iconStyleData: const IconStyleData(
                            icon: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.black45,
                            ),
                            iconSize: 24,
                          ),

                          dropdownStyleData: DropdownStyleData(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          menuItemStyleData: const MenuItemStyleData(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            // height: 35,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Divider(),
                        Text(
                          "Footer (Optional)",
                          style: inputtexttittle,
                        ),
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
                          "Footer (Optional)",
                          style: inputtexttittle,
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
                          "Select Type",
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // const SizedBox(
                        //   width: 22,
                        // ),
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
                            'Phone Number ',
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
                            'Url',
                            style: inputboxtextfiles,
                          ),
                          // more widgets ...
                        ]),
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
                        // border: const OutlineInputBorder(

                        //   borderRadius: BorderRadius.all(Radius.circular(6)),
                        //   // borderSide: BorderSide(width: 1),
                        // ),
                        hintText: "Call",
                        hintStyle: contectcardsubtitletext,

                        helperStyle: inputboxtextfiles,
                      ),
                      style: inputboxtextfiles,
                    ),

                    const SizedBox(
                      height: 15,
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
                        // border: const OutlineInputBorder(

                        //   borderRadius: BorderRadius.all(Radius.circular(6)),
                        //   // borderSide: BorderSide(width: 1),
                        // ),
                        hintText: "Number",
                        hintStyle: contectcardsubtitletext,

                        helperStyle: inputboxtextfiles,
                      ),
                      style: inputboxtextfiles,
                    ),

                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Select Type",
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // const SizedBox(
                        //   width: 22,
                        // ),
                        Row(children: [
                          Radio(
                            activeColor: selectedColor,
                            value: options[4],
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
                            'Phone Number ',
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
                            value: options[5],
                            groupValue: currentOption,
                            // activeColor: Colors.pink,
                            onChanged: (value) {
                              setState(() {
                                currentOption = value.toString();
                              });
                            },
                          ),
                          Text(
                            'Url',
                            style: inputboxtextfiles,
                          ),
                          // more widgets ...
                        ]),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    DropdownButtonFormField<String>(
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
                        hintText: "Call",
                        hintStyle: contectcardsubtitletext,
                      ),
                      style: inputboxtextfiles,

                      value: "Option1", // Set default value
                      items: [
                        "Option1",
                        "Option2",
                        "Option3",
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        // Handle the selection change here
                      },
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
                        // border: const OutlineInputBorder(

                        //   borderRadius: BorderRadius.all(Radius.circular(6)),
                        //   // borderSide: BorderSide(width: 1),
                        // ),
                        hintText: "Call",
                        hintStyle: contectcardsubtitletext,

                        helperStyle: inputboxtextfiles,
                      ),
                      style: inputboxtextfiles,
                    ),

                    const SizedBox(
                      height: 15,
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
                        // border: const OutlineInputBorder(

                        //   borderRadius: BorderRadius.all(Radius.circular(6)),
                        //   // borderSide: BorderSide(width: 1),
                        // ),
                        hintText: "Number",
                        hintStyle: contectcardsubtitletext,

                        helperStyle: inputboxtextfiles,
                      ),
                      style: inputboxtextfiles,
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
                                  "+ Add Footer CTA Button",
                                  style: viewText,
                                ),
                              ),
                              // Custom underline with a gap
                              Positioned(
                                bottom: 5,
                                child: Container(
                                  height: 1.0,
                                  color: CustomTextStyling().primaryColor,
                                  width: 153,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              height: 45,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFC1683),
                ),
                onPressed: () {
                  // print("assad");
                  Navigator.pushNamed(context, "/selectContacts");
                },
                child: Text(
                  'Update',
                  style: deletebuttontext,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
