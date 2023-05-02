import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/instagram_module/pages/edit_profile.dart';
import 'package:instagram_clone/instagram_module/pages/share_profile.dart';
import 'package:instagram_clone/instagram_module/pages/switch_tabs.dart';

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
            onPressed: () {
              showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return SizedBox(
                    height: 500,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            child: Text("Create"),
                          ),
                          Container(
                            padding: EdgeInsets.all(20),
                            child: Row(
                              children: <Widget>[
                                FaIcon(FontAwesomeIcons.clapperboard),
                                SizedBox(
                                  width: 40,
                                ),
                                Text("Reel")
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(20),
                            child: Row(
                              children: <Widget>[
                                FaIcon(FontAwesomeIcons.tableCells),
                                SizedBox(
                                  width: 40,
                                ),
                                Text("Post")
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(20),
                            child: Row(
                              children: <Widget>[
                                FaIcon(FontAwesomeIcons.circle),
                                SizedBox(
                                  width: 40,
                                ),
                                Text("Story")
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(20),
                            child: Row(
                              children: <Widget>[
                                FaIcon(FontAwesomeIcons.circle),
                                SizedBox(
                                  width: 40,
                                ),
                                Text("Story Highlight")
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(20),
                            child: Row(
                              children: <Widget>[
                                FaIcon(FontAwesomeIcons.signal),
                                SizedBox(
                                  width: 40,
                                ),
                                Text("Live")
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(20),
                            child: Row(
                              children: <Widget>[
                                FaIcon(FontAwesomeIcons.bookOpen),
                                SizedBox(
                                  width: 40,
                                ),
                                Text("Guide")
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            icon: FaIcon(FontAwesomeIcons.squarePlus),
            color: Colors.black),
        IconButton(
            onPressed: () {
              showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return SizedBox(
                    height: 500,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: <Widget>[
                                FaIcon(FontAwesomeIcons.gear),
                                SizedBox(
                                  width: 40,
                                ),
                                Text("Settings and privacy")
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: <Widget>[
                                FaIcon(FontAwesomeIcons.clock),
                                SizedBox(
                                  width: 40,
                                ),
                                Text("Your activity")
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: <Widget>[
                                FaIcon(FontAwesomeIcons.boxArchive),
                                SizedBox(
                                  width: 40,
                                ),
                                Text("Archive")
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: <Widget>[
                                FaIcon(FontAwesomeIcons.qrcode),
                                SizedBox(
                                  width: 40,
                                ),
                                Text("QR code")
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: <Widget>[
                                FaIcon(FontAwesomeIcons.bookBookmark),
                                SizedBox(
                                  width: 40,
                                ),
                                Text("Saved")
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: <Widget>[
                                FaIcon(FontAwesomeIcons.creditCard),
                                SizedBox(
                                  width: 40,
                                ),
                                Text("Orders and payments")
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: <Widget>[
                                FaIcon(FontAwesomeIcons.bars),
                                SizedBox(
                                  width: 40,
                                ),
                                Text("Close friends")
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: <Widget>[
                                FaIcon(FontAwesomeIcons.star),
                                SizedBox(
                                  width: 40,
                                ),
                                Text("Favourites")
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: <Widget>[
                                FaIcon(FontAwesomeIcons.message),
                                SizedBox(
                                  width: 40,
                                ),
                                Text("Update messaging")
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            icon: FaIcon(FontAwesomeIcons.bars),
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
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EditProfile()));
              },
              child: Text('Edit profile'),
            ),
          ),
          Spacer(),
          SizedBox(
            width: 150,
            child: TextButton(
              style: TextButton.styleFrom(
                  primary: Colors.black, backgroundColor: Colors.grey),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ShareProfile()));
              },
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
