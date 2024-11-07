// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_text/flutter_gradient_text.dart';
import 'package:flutter_svg/svg.dart';
import 'package:whatsapp/style.dart';

class EditContact extends StatefulWidget {
  const EditContact({super.key});

  @override
  State<EditContact> createState() => _EditContact();
}

class _EditContact extends State<EditContact> {
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
            "Edit Contact",
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
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    Text(
                      "Name*",
                      style: inputtexttittle,
                    ),
                    const SizedBox(height: 8),
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

                        hintText: "Enter Name",
                        helperStyle: inputboxtextfiles,
                      ),
                      style: inputboxtextfiles,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "What’s App No*",
                      style: inputtexttittle,
                    ),
                    const SizedBox(height: 10),
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
                        hintText: "Enter What’s App No",
                        helperStyle: inputboxtextfiles,
                      ),
                      style: inputboxtextfiles,
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
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
                    'Update',
                    style: deletebuttontext,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
