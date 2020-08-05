import 'package:flutter/material.dart';
import 'package:traveler_bootcamp/pages/ProfilePage.dart';

import 'pages/HomePage.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(fontFamily: 'Sansation'),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Bootcamp Demo Previas',
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/profile': (context) => ProfilePage(),
      },
    ));
