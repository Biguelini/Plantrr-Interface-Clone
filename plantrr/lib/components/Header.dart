import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          'Discover',
          style: TextStyle(
            color: Colors.black,
            fontFamily: "Inter",
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        CircleAvatar(
          radius: 22, // Image radius
          backgroundImage: AssetImage('images/profile.png'),
        ),
      ],
    );
  }
}
