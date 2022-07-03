import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: TextField(
          decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              suffixIcon: const Padding(
                padding: EdgeInsets.only(right: 20),
                child: Icon(
                  Icons.search,
                  size: 28,
                  color: Color(0XFFCCCCCB),
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100),
                borderSide: const BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              filled: true,
              hintStyle: const TextStyle(
                color: Color(0XFFCCCCCB),
                fontFamily: "Inter",
                fontSize: 14,
              ),
              hintText: "Search",
              fillColor: Colors.white),
        ),
      ),
    );
  }
}
