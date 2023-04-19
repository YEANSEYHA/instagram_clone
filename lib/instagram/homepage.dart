import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:instagram_clone/constants/instagram_list_constant.dart';
import 'package:instagram_clone/constants/story_list_constant.dart';
import 'package:instagram_clone/models/post_model.dart';
import 'package:instagram_clone/models/story_model.dart';

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
            IconButton(onPressed: () {}, icon: FaIcon(FontAwesomeIcons.home)),
            IconButton(
                onPressed: () {},
                icon: FaIcon(FontAwesomeIcons.magnifyingGlass)),
            IconButton(
                onPressed: () {}, icon: FaIcon(FontAwesomeIcons.squarePlus)),
            IconButton(
                onPressed: () {}, icon: FaIcon(FontAwesomeIcons.clapperboard)),
            IconButton(onPressed: () {}, icon: FaIcon(FontAwesomeIcons.user)),
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
      height: 495,
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
                    Container(
                        height: 70,
                        child:
                            Center(child: FaIcon(FontAwesomeIcons.ellipsis))),
                  ],
                )),
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
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      children: <Widget>[
                        Container(child: FaIcon(FontAwesomeIcons.heart)),
                        Spacer(),
                        Container(child: FaIcon(FontAwesomeIcons.comment)),
                        Spacer(),
                        Container(child: FaIcon(FontAwesomeIcons.paperPlane)),
                        Spacer(
                          flex: 6,
                        ),
                        Container(child: FaIcon(FontAwesomeIcons.bookmark)),
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
