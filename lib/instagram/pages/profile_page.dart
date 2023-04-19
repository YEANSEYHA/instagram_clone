import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/instagram/pages/switch_tabs.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildColumn(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text(
        'Username',
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        overflow: TextOverflow.clip,
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      actions: [
        IconButton(
            onPressed: () {},
            icon: FaIcon(FontAwesomeIcons.heart),
            color: Colors.black),
        IconButton(
            onPressed: () {},
            icon: FaIcon(FontAwesomeIcons.paperPlane),
            color: Colors.black)
      ],
    );
  }

  Widget _buildColumn() {
    return Container(
      child: Column(children: <Widget>[
        _buildProfileDetail(),
        _buildProfileButtons(),
        SwitchTabs()
      ]),
    );
  }

  // Build switch tab here
  Widget _buildSwitchTabs() {
    return Scaffold(
      body: _buildBody(),
      bottomNavigationBar: _buildBottom(),
    );
  }

  Widget _buildBody() {
    return IndexedStack(
      index: _currentIndex,
      children: [Text("Hello123"), Text("Hello168")],
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
      ],
    );
  }

  Widget _buildProfileButtons() {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 150,
            child: TextButton(
              style: TextButton.styleFrom(
                  primary: Colors.black, backgroundColor: Colors.grey),
              onPressed: () {},
              child: Text('Edit profile'),
            ),
          ),
          Spacer(),
          SizedBox(
            width: 150,
            child: TextButton(
              style: TextButton.styleFrom(
                  primary: Colors.black, backgroundColor: Colors.grey),
              onPressed: () {},
              child: Text('Share profile'),
            ),
          ),
          Spacer(),
          SizedBox(
            height: 35,
            width: 60,
            child: TextButton(
              style: TextButton.styleFrom(
                  primary: Colors.black, backgroundColor: Colors.grey),
              onPressed: () {},
              child: FaIcon(FontAwesomeIcons.userPlus),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildProfileDetail() {
    return Container(
      padding: EdgeInsets.all(10),
      height: 130,
      child: Row(
        children: <Widget>[
          Container(
              child: Column(
            children: <Widget>[
              Container(
                height: 80,
                child: CircleAvatar(
                  radius: 48,
                  backgroundImage: NetworkImage(
                      "https://images.lifestyleasia.com/wp-content/uploads/sites/7/2023/01/02233736/Untitled-design-9-1600x900.png"),
                ),
              ),
              Text("Kim Jisoo")
            ],
          )),
          Spacer(),
          Container(
              height: 80,
              child: Column(
                children: <Widget>[Text("16899"), Text("Posts")],
              )),
          Spacer(),
          Container(
              height: 80,
              child: Column(
                children: <Widget>[Text("19923"), Text("Followers")],
              )),
          Spacer(),
          Container(
              height: 80,
              child: Column(
                children: <Widget>[Text("1992"), Text("Following")],
              )),
        ],
      ),
    );
  }
}
