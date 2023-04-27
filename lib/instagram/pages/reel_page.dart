import 'package:flutter/material.dart';
import 'package:instagram_clone/instagram/pages/Reel/reel_page_view.dart';

class ReelPage extends StatefulWidget {
  const ReelPage({super.key});

  @override
  State<ReelPage> createState() => _ReelPageState();
}

class _ReelPageState extends State<ReelPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ReelPageView(),
    );
  }
}
