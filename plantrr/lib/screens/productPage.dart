import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: const IconThemeData(
            color: Color(0xff03053D),
            size: 30,
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.favorite_outline,
                color: Color(0xff03053D),
                size: 30,
              ),
              onPressed: () {
                // do something
              },
            )
          ],
        ),
        body: Stack(
          children: <Widget>[
            Image.network(
              'https://media.glamour.com/photos/5ea89429e67f360008b064d8/master/w_1172,h_1412,c_limit/Pink%20Anthurium.png',
              fit: BoxFit.cover,
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                    color: Colors.white,
                  ),
                  height: 330,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            color: Color(0XFFd9d9d9),
                          ),
                          width: MediaQuery.of(context).size.width / 4,
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 24),
                          child: Row(
                            children: const [
                              Text(
                                "Golden Barrel Cactus",
                                style: TextStyle(
                                  fontFamily: "Inter",
                                  fontWeight: FontWeight.w600,
                                  fontSize: 24,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 24),
                          child: Row(
                            children: const [
                              Text(
                                "\$20.99",
                                style: TextStyle(
                                    fontFamily: "Inter",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                    color: Color(0xFF214712)),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 24),
                          child: Row(
                            children: const [
                              Expanded(
                                child: Text(
                                  "For plant lovers, a cactus is perfect for the less green-fingered as you only need to water moderately, it is in fact better to underwater them than it is to overwater.",
                                  style: TextStyle(
                                      fontFamily: "Inter",
                                      fontWeight: FontWeight.w300,
                                      fontSize: 14,
                                      color: Color(0xFF555050)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.all(0),
                                minimumSize: const Size(40, 40),
                                elevation: 0,
                                primary: const Color(0xFFD9D9D9),
                              ),
                              onPressed: () => {},
                              child: const Icon(
                                Icons.remove,
                                size: 30,
                                color: Color(0xFF03053D),
                              ),
                            ),
                            const Text(
                              "1",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Inter",
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.all(0),
                                minimumSize: const Size(40, 40),
                                elevation: 0,
                                primary: const Color(0xFF214712),
                              ),
                              onPressed: () => {},
                              child: const Icon(
                                Icons.add,
                                size: 30,
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.all(0),
                                  minimumSize: const Size(220, 60),
                                  elevation: 0,
                                  primary: const Color(0xFF214712)),
                              onPressed: () => {},
                              child: const Text("Add to cart"),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
