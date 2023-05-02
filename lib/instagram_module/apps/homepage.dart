import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/constants/story_list_constant.dart';
import 'package:instagram_clone/instagram_module/logics/post_logic.dart';
import 'package:instagram_clone/instagram_module/models/post_model.dart';
import 'package:instagram_clone/instagram_module/pages/messages.dart';
import 'package:instagram_clone/instagram_module/widgets/nointernet_widget.dart';
import 'package:instagram_clone/instagram_module/widgets/offline_widget.dart';
import 'package:instagram_clone/models/story_model.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: _buildAppBar(context),
      // body: SingleChildScrollView(
      //   child: _buildStoryView(),
      // ),
      body: _buildColumn(),
      // bottomNavigationBar: _buildBottom,
    );
  }

  Widget _buildColumn() {
    return Column(
      children: [_buildStoryView(), _buildData()],
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

  Widget _buildData() {
    String? error = context.watch<PostLogic>().error;
    List<PostModel>? postList = context.watch<PostLogic>().postList;
    print(postList);

    if (error != null && postList == null) {
      debugPrint("error: $error");
      return _buildError();
    }

    if (error != null && postList != null) {
      return Stack(
        alignment: Alignment.center,
        children: [
          _buildListView(postList),
          Positioned(
            bottom: 20,
            child: OfflineWidget(
              onRetry: () async {
                await context.read<PostLogic>().read();
              },
            ),
          ),
        ],
      );
    } else {
      return _buildListView(postList);
    }
  }

  Widget _buildError() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.warning_outlined),
        Text("Something went wrong"),
        ElevatedButton(
          onPressed: () async {
            context.read<PostLogic>().setLoading();
            await context.read<PostLogic>().read();
          },
          child: Text("RETRY"),
        ),
      ],
    );
  }

  Widget _buildListView(List<PostModel>? items) {
    if (items == null) {
      return SizedBox();
    }

    return RefreshIndicator(
      onRefresh: () async {
        await context.read<PostLogic>().read();
      },
      child: Container(
        height: 625,
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return _buildItem(items[index]);
          },
        ),
      ),
    );
  }

  Widget _buildItem(PostModel item) {
    // return Container(
    //     color: Colors.blue, height: 100, child: Text("${item.caption}"));
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
                          backgroundImage: NetworkImage(item.imageurl),
                        )),
                    Container(
                        height: 70,
                        child: Center(
                          child: Text(
                            item.caption,
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
                    item.imageurl,
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
}

AppBar _buildAppBar(context) {
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
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Messages()));
          },
          icon: FaIcon(FontAwesomeIcons.paperPlane),
          color: Colors.black)
    ],
  );
}

// Widget _buildListViewInstagram(PostModel item) {
//   return Expanded(
//     flex: 1,
//     child: Container(
//       height: 600,
//       child: ListView.builder(
//         shrinkWrap: true,
//         itemCount: item.postList.length,
//         itemBuilder: (context, index) {
//           return _buildSinglePost(item.postList[index]);
//         },
//       ),
//     ),
//   );
// }

