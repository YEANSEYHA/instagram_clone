import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:instagram_clone/constants/instagram_list_constant.dart';
import 'package:instagram_clone/constants/story_list_constant.dart';
import 'package:instagram_clone/models/post_model.dart';
import 'package:instagram_clone/models/story_model.dart';
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
      height: 450,
      child: Column(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                // Container(
                //     child: Row(
                //   children: <Widget>[
                //     Container(
                //         height: 50,
                //         child: CircleAvatar(
                //           radius: 48,
                //           backgroundImage: NetworkImage(item.image),
                //         )),
                //     Container(
                //         height: 70,
                //         child: Center(
                //           child: Text(
                //             item.name,
                //             textAlign: TextAlign.center,
                //           ),
                //         )),
                //     Spacer(
                //       flex: 2,
                //     ),
                //     Container(height: 70, child: Center(child: Text('...'))),
                //   ],
                // )),
                Container(
                  height: 380,
                  child: Image.network(
                    item.image,
                    fit: BoxFit.cover,
                  ),
                ),
                // Task Todo
                // Change Profile and find the right icons
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
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildSingleStory(StoryModel item) {
    return Container(
        child: Column(
      children: <Widget>[
        Expanded(
          child: Column(
            children: <Widget>[
              Container(
                height: 80,
                child: CircleAvatar(
                  radius: 48,
                  backgroundImage: NetworkImage(item.image),
                ),
              ),
              Text(item.name)
            ],
          ),
        )
      ],
    ));
  }

  Widget _buildStoryView() {
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: storyList.length,
        itemBuilder: (context, index) {
          return _buildSingleStory(storyList[index]);
        },
      ),
    );
  }
}
