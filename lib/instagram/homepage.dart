import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: _buildStoryView(),
      ),
      bottomNavigationBar: Text("Customn navigation here!!"),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text(
        'Instagram',
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        overflow: TextOverflow.clip,
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      leading: Icon(CupertinoIcons.photo_camera, color: Colors.black),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.tv_circle),
            color: Colors.black),
        IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.arrow_up_right_circle_fill,
                color: Colors.black))
      ],
    );
  }

  Widget _buildColumn() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [Text("Custom main instagram body here")],
      ),
    );
  }

  Widget _buildStoryView() {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
              width: 100,
              color: Colors.amber[600],
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 60,
                          child: Image.network(
                            'https://upload.wikimedia.org/wikipedia/commons/4/46/Eden_Hazard_at_Baku_before_2019_UEFA_Europe_League_Final.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text('Eden Hazard')
                      ],
                    ),
                  )
                ],
              )),
          Container(
              width: 100,
              color: Colors.amber[600],
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 60,
                          child: Image.network(
                            'https://resources.premierleague.com/premierleague/photo/2023/01/18/ec0fa1bf-06f9-469b-ad97-b594284eaf03/GettyImages-1456584000.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text('Kai Havartz')
                      ],
                    ),
                  )
                ],
              )),
          Container(
              width: 100,
              color: Colors.amber[600],
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 60,
                          child: Image.network(
                            'https://upload.wikimedia.org/wikipedia/sco/thumb/c/cc/Chelsea_FC.svg/2048px-Chelsea_FC.svg.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text('UserN')
                      ],
                    ),
                  )
                ],
              )),
          Container(
              width: 100,
              color: Colors.amber[600],
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 60,
                          child: Image.network(
                            'https://img.chelseafc.com//image/upload/f_auto,w_1440,c_fill,g_faces,q_90/The%205th%20Stand%20app%20editorial/Players%20stock/Joao%20Felix/Signing%20day%20BTS/FmMh5kdWAAMBNCK.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text('UserN')
                      ],
                    ),
                  )
                ],
              )),
          Container(
              width: 100,
              color: Colors.amber[600],
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 60,
                          child: Image.network(
                            'https://upload.wikimedia.org/wikipedia/commons/4/46/Eden_Hazard_at_Baku_before_2019_UEFA_Europe_League_Final.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text('Eden Hazard')
                      ],
                    ),
                  )
                ],
              )),
          Container(
              width: 100,
              color: Colors.amber[600],
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 60,
                          child: Image.network(
                            'https://resources.premierleague.com/premierleague/photo/2023/01/18/ec0fa1bf-06f9-469b-ad97-b594284eaf03/GettyImages-1456584000.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text('Kai Havartz')
                      ],
                    ),
                  )
                ],
              )),
          Container(
              width: 100,
              color: Colors.amber[600],
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 60,
                          child: Image.network(
                            'https://upload.wikimedia.org/wikipedia/sco/thumb/c/cc/Chelsea_FC.svg/2048px-Chelsea_FC.svg.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text('UserN')
                      ],
                    ),
                  )
                ],
              )),
          Container(
              width: 100,
              color: Colors.amber[600],
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 60,
                          child: Image.network(
                            'https://img.chelseafc.com//image/upload/f_auto,w_1440,c_fill,g_faces,q_90/The%205th%20Stand%20app%20editorial/Players%20stock/Joao%20Felix/Signing%20day%20BTS/FmMh5kdWAAMBNCK.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text('UserN')
                      ],
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
