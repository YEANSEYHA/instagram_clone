import 'package:flutter/material.dart';

class SwitchTabs extends StatelessWidget {
  const SwitchTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Container(
        height: 300,
        child: Column(
          children: [
            TabBar(tabs: [
              Tab(
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
              ),
              Tab(
                icon: Icon(Icons.home, color: Colors.black),
              ),
            ]),
            Expanded(
              child: TabBarView(children: [
                Container(
                  child: Center(child: Text("First Tab1")),
                ),
                Container(
                  child: Center(child: Text("Second Tab2")),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
