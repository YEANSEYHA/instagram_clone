import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:instagram_clone/instagram/homepage.dart';
import 'package:instagram_clone/instagram/pages/add_post_page.dart';
import 'package:instagram_clone/instagram/pages/profile_page.dart';
import 'package:instagram_clone/instagram/pages/reel_page.dart';
import 'package:instagram_clone/instagram/pages/search_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MultiMainPage extends StatefulWidget {
  const MultiMainPage({super.key});

  @override
  State<MultiMainPage> createState() => _MultiMainPageState();
}

class _MultiMainPageState extends State<MultiMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      bottomNavigationBar: _buildBottom(),
    );
  }

  Widget _buildBody() {
    return IndexedStack(
      index: _currentIndex,
      children: [
        HomePage(),
        SearchPage(),
        AddPostPage(),
        ReelPage(),
        ProfilePage()
      ],
    );
  }

  int _currentIndex = 0;

  Widget _buildBottom() {
    return BottomNavigationBar(
      backgroundColor: Colors.grey[300],
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.pink,
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.home), label: "home"),
        BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.magnifyingGlass), label: "Search"),
        BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.squarePlus), label: "Msg"),
        BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.clapperboard), label: "Posts"),
        BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.user), label: "Profile"),
      ],
    );
  }
}
