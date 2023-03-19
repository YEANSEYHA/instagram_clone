import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:instagram_clone/constants/instagram_list_constant.dart';
import 'package:instagram_clone/models/post_model.dart';
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
      body: SafeArea(child: _buildColumn()),
      bottomNavigationBar: _buildBottom,
    );
  }

  Widget get _buildBottom {
    return SafeArea(
      child: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.home)),
            IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.person)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
          ],
        ),
      ),
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
          children: <Widget>[_buildStoryView(), _buildListViewInstagram()]),
    );
  }

  Widget _buildListViewInstagram() {
    return Expanded(
      flex: 1,
      child: Container(
        height: 600,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: postList.length,
          itemBuilder: (context, index) {
            return _buildSinglePost(postList[index]);
          },
        ),
      ),
    );
  }

  Widget _buildSinglePost(
    PostModel item,
  ) {
    return Container(
      height: 600,
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
                          backgroundImage: NetworkImage(item.image),
                        )),
                    Container(
                        height: 70,
                        child: Center(
                          child: Text(
                            item.name,
                            textAlign: TextAlign.center,
                          ),
                        )),
                    Spacer(
                      flex: 2,
                    ),
                    Container(height: 70, child: Center(child: Text('...'))),
                  ],
                )),
                Container(
                  height: 400,
                  child: Image.network(
                    item.image,
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
