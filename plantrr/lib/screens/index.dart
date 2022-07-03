import 'package:flutter/material.dart';
import 'package:plantrr/components/GetStartedButton.dart';

class Index extends StatelessWidget {
  const Index({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.5),
            BlendMode.dstATop,
          ),
          image: const AssetImage('images/background.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 20.0),
                  child: Row(
                    children: const [
                      Text(
                        "Go the Green way",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w700,
                          fontSize: 36,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: const [
                    Text(
                      "Beauty blooms in the heart as well as \ngarden",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Inter",
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 26, vertical: 50),
                  child: GetStartedButton(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
