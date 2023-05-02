import 'package:flutter/material.dart';
import 'package:instagram_clone/instagram_module/apps/multi_main_page.dart';
import 'package:instagram_clone/instagram_module/logics/post_logic.dart';
import 'package:instagram_clone/instagram_module/pages/loading_page.dart';
import 'package:provider/provider.dart';

Widget instagramWithProvider() {
  return MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => PostLogic()),
    ],
    child: InstagramApp(),
  );
}

class InstagramApp extends StatelessWidget {
  const InstagramApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoadingPage(),
    );
  }
}
