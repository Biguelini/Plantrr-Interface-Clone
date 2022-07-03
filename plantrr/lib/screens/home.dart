import 'package:flutter/material.dart';
import 'package:plantrr/components/Header.dart';
import 'package:plantrr/components/Search.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: const Header(),
            ),
            Row(
              children: const [
                Search(),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Icon(
                    Icons.sort,
                    size: 30,
                  ),
                )
              ],
            ),
            Expanded(
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                ),
                children: [
                  Image.network('https://picsum.photos/250?image=1'),
                  Image.network('https://picsum.photos/250?image=2'),
                  Image.network('https://picsum.photos/250?image=3'),
                  Image.network('https://picsum.photos/250?image=4'),
                  Image.network('https://picsum.photos/250?image=4'),
                  Image.network('https://picsum.photos/250?image=4'),
                  Image.network('https://picsum.photos/250?image=4'),
                  Image.network('https://picsum.photos/250?image=4'),
                  Image.network('https://picsum.photos/250?image=4'),
                  Image.network('https://picsum.photos/250?image=4'),
                  Image.network('https://picsum.photos/250?image=4'),
                  Image.network('https://picsum.photos/250?image=4'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
