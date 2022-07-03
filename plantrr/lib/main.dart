import 'package:flutter/material.dart';
import 'package:plantrr/screens/home.dart';
import 'package:plantrr/screens/productPage.dart';
import 'screens/index.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Index(),
        '/home': (context) => const Home(),
        '/productPage': (context) => const ProductPage(),
      },
    ));
