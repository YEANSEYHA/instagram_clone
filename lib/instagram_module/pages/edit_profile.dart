import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Profile"),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[_buildProfileSection(), _buildFormdataSection()]),
    );
  }

  Widget _buildProfileSection() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 100,
              child: Image.network(
                "https://static.vecteezy.com/system/resources/previews/002/002/403/original/man-with-beard-avatar-character-isolated-icon-free-vector.jpg",
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
        Text("Edit picture"),
        Divider(color: Colors.black)
      ],
    );
  }

  Widget _buildFormdataSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _buildSingleFormDataName(),
        _buildSingleFormDataUserName(),
        _buildSingleFormDataPronouns(),
        _buildSingleFormDataBio(),
        _buildSingleFormDataAddLink(),
        _buildSingleFormDataGender(),
        _buildSettingForm()
      ],
    );
  }

  Widget _buildSingleFormDataName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(bottom: 10),
          child: Text("Name"),
        ),
        Container(
          child: Text(
            "Yean Seyha",
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          child: Divider(color: Colors.black),
        )
      ],
    );
  }

  Widget _buildSingleFormDataUserName() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(bottom: 10),
          child: Text("Username"),
        ),
        Container(
          child: Text(
            "seyhayean",
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          child: Divider(color: Colors.black),
        )
      ],
    );
  }

  Widget _buildSingleFormDataPronouns() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(bottom: 10),
          child: Text("Pronouns"),
        ),
        Container(
          child: Text(
            "ben mashiro",
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          child: Divider(color: Colors.black),
        )
      ],
    );
  }

  Widget _buildSingleFormDataBio() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(bottom: 10),
          child: Text("Bio"),
        ),
        Container(
          child: Text(
            "Nothing is impossible, just do it !",
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          child: Divider(color: Colors.black),
        )
      ],
    );
  }

  Widget _buildSingleFormDataAddLink() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: Text(
            "Add Link",
            style: TextStyle(fontSize: 18),
          ),
        ),
      ],
    );
  }

  Widget _buildSingleFormDataGender() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(bottom: 10),
          child: Text("Gender"),
        ),
        Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[Text("Male"), FaIcon(FontAwesomeIcons.arrowRight)],
        )),
        Container(
          child: Divider(color: Colors.black),
        )
      ],
    );
  }

  Widget _buildSettingForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(bottom: 10),
          child: Text(
            "Switch to Professional account",
            style: TextStyle(fontSize: 18, color: Colors.blue),
          ),
        ),
        Divider(color: Colors.black),
        Container(
          padding: EdgeInsets.only(bottom: 10),
          child: Text(
            "Personal information settings",
            style: TextStyle(fontSize: 18, color: Colors.blue),
          ),
        ),
        Divider(color: Colors.black),
      ],
    );
  }
}
