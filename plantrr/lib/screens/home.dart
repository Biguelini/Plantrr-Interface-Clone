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
        padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 20,
              ),
              child: const Header(),
            ),
            Row(
              children: const [
                Search(),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                  ),
                  child: Icon(
                    Icons.sort,
                    size: 30,
                    color: Color(0XFF03053D),
                  ),
                )
              ],
            ),
            Expanded(
                child: ScrollConfiguration(
                    behavior: MyBehavior(),
                    child: GridView.count(
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      crossAxisCount: 2,
                      childAspectRatio: (160 / 240),
                      shrinkWrap: true,
                      children: List.generate(6, (index) {
                        return GestureDetector(
                          onTap: () =>
                              {Navigator.pushNamed(context, '/productPage')},
                          child: Card(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(18),
                              child: Column(children: [
                                Image.network(
                                  'https://media.glamour.com/photos/5ea89429e67f360008b064d8/master/w_1172,h_1412,c_limit/Pink%20Anthurium.png',
                                  width: 120,
                                  height: 140,
                                  fit: BoxFit.cover,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        "Cactus",
                                        style: TextStyle(
                                          fontFamily: "Inter",
                                          fontSize: 14,
                                        ),
                                      ),
                                      Icon(
                                        Icons.favorite_border_outlined,
                                        color: Color(0XFFCCCCCB),
                                      )
                                    ],
                                  ),
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "\$14",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "Inter",
                                        fontSize: 14,
                                      ),
                                    )
                                  ],
                                )
                              ]),
                            ),
                          ),
                        );
                      }),
                    )))
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          currentIndex: 0,
          selectedItemColor: Color(0xff214712),
          unselectedItemColor: Color(0xffBCBCBC),
          selectedLabelStyle: TextStyle(
            fontFamily: "Inter",
            fontWeight: FontWeight.w700,
          ),
          unselectedLabelStyle: TextStyle(
            fontFamily: "Inter",
          ),
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite_border_outlined,
                ),
                label: "Favorites"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart_outlined,
                ),
                label: "Cart"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                ),
                label: "Profile"),
          ],
        ),
      ),
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
