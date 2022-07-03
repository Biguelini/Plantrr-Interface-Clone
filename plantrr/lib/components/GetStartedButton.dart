import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), // <-- Radius
        ),
        minimumSize: const Size.fromHeight(50),
        elevation: 0.0,
        primary: Colors.white.withOpacity(0.35),
      ),
      onPressed: () => {Navigator.pushNamed(context, "/home")},
      child: const Text(
        "Get Started",
        style: TextStyle(
          fontFamily: "Inter",
          fontSize: 14,
        ),
      ),
    );
  }
}
