import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:instagram_clone/instagram_module/apps/multi_main_page.dart';
import 'package:instagram_clone/instagram_module/logics/post_logic.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () async {
      await context.read<PostLogic>().read();
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => MultiMainPage(),
        ),
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Icon(Icons.face, size: 100)),
          Text("Loading..."),
          // CircularProgressIndicator(),
        ],
      ),
    );
  }
}
