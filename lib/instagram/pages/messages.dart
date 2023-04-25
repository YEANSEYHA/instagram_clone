import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Messages extends StatefulWidget {
  const Messages({super.key});

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Username"),
      ),
      body: _buildBody(),
    );
  }

  _buildBody() {
    return Column(
      children: <Widget>[_buildMessageSection(), Text("heloo21")],
    );
  }

  _buildMessageSection() {
    return Column(
      children: [
        Container(
          child: Text("Messages"),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
                height: 50,
                child: CircleAvatar(
                  radius: 48,
                  backgroundImage: NetworkImage(
                      "https://img.freepik.com/premium-vector/female-user-profile-avatar-is-woman-character-screen-saver-with-emotions_505620-617.jpg"),
                )),
            Container(
              width: 200,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text("Username"),
                    Text("User messages123123123123")
                  ]),
            ),
            Container(
              alignment: Alignment.center,
              height: 50,
              child: FaIcon(FontAwesomeIcons.camera),
            ),
          ],
        ),
      ],
    );
  }
}
