import 'package:flutter/material.dart';
import 'package:whatsapp/style.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
