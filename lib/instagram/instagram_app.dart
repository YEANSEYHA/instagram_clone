import 'package:flutter/material.dart';
import 'package:instagram_clone/instagram/homepage.dart';
import 'package:instagram_clone/instagram/multi_main_page.dart';

class InstagramApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiMainPage(),
    );
  }
}
