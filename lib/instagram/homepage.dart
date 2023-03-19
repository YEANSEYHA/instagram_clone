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
      // body: SingleChildScrollView(
      //   child: _buildStoryView(),
      // ),
      body: _buildColumn(),
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
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[_buildStoryView(), _singleInstagramPost()],
      ),
    );
  }

  Widget _singleInstagramPost() {
    return Container(
      height: 620,
      child: ListView(
        children: [
          Container(
              height: 600,
              width: 100,
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Container(
                            child: Row(
                          children: <Widget>[
                            Container(
                                height: 50,
                                child: CircleAvatar(
                                  radius: 48,
                                  backgroundImage: NetworkImage(
                                      'https://t3.ftcdn.net/jpg/01/66/39/54/360_F_166395402_UcbaS5Z5Tj1rEbMvzhHR1U7DpCgCWd3r.jpg'),
                                )),
                            Container(
                                height: 70,
                                child: Center(
                                  child: Text(
                                    'stellar_bright888',
                                    textAlign: TextAlign.center,
                                  ),
                                )),
                            Spacer(
                              flex: 2,
                            ),
                            Container(
                                height: 70, child: Center(child: Text('...'))),
                          ],
                        )),
                        Container(
                          height: 400,
                          child: Image.network(
                            'https://i.guim.co.uk/img/media/eb6caf6db81be662905ee1230f1eddc6a9831624/0_206_5472_3283/master/5472.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=0f2236596712182911c4fef6b47c55e2',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          child: Text('Third  Row'),
                        ),
                      ],
                    ),
                  )
                ],
              )),
          Container(
              height: 300,
              width: 100,
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
              height: 300,
              width: 100,
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
        ],
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
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 80,
                          child: CircleAvatar(
                            radius: 48,
                            backgroundImage: NetworkImage(
                                'https://t3.ftcdn.net/jpg/01/66/39/54/360_F_166395402_UcbaS5Z5Tj1rEbMvzhHR1U7DpCgCWd3r.jpg'),
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
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 80,
                          child: CircleAvatar(
                            radius: 48,
                            backgroundImage: NetworkImage(
                                'https://t3.ftcdn.net/jpg/01/91/26/54/360_F_191265417_DMXnuD1ERvjYuKTbZMAEmsZ9kzRJARyD.webp'),
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
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 80,
                          child: CircleAvatar(
                            radius: 48,
                            backgroundImage: NetworkImage(
                                'https://t3.ftcdn.net/jpg/01/66/39/54/360_F_166395402_UcbaS5Z5Tj1rEbMvzhHR1U7DpCgCWd3r.jpg'),
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
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 80,
                          child: CircleAvatar(
                            radius: 48,
                            backgroundImage: NetworkImage(
                                'https://t3.ftcdn.net/jpg/01/91/26/54/360_F_191265417_DMXnuD1ERvjYuKTbZMAEmsZ9kzRJARyD.webp'),
                          ),
                        ),
                        Text('Fernado Torres')
                      ],
                    ),
                  )
                ],
              )),
          Container(
              width: 100,
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 80,
                          child: CircleAvatar(
                            radius: 48,
                            backgroundImage: NetworkImage(
                                'https://t3.ftcdn.net/jpg/01/66/39/54/360_F_166395402_UcbaS5Z5Tj1rEbMvzhHR1U7DpCgCWd3r.jpg'),
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
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 80,
                          child: CircleAvatar(
                            radius: 48,
                            backgroundImage: NetworkImage(
                                'https://t3.ftcdn.net/jpg/01/66/39/54/360_F_166395402_UcbaS5Z5Tj1rEbMvzhHR1U7DpCgCWd3r.jpg'),
                          ),
                        ),
                        Text('Eden Hazard')
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
