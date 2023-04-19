import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ReelPage extends StatefulWidget {
  const ReelPage({super.key});

  @override
  State<ReelPage> createState() => _ReelPageState();
}

class _ReelPageState extends State<ReelPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Reel Page"),
    );
  }
}
