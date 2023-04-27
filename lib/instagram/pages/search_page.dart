import 'package:flutter/material.dart';
import 'package:instagram_clone/constants/instagram_list_constant.dart';
import 'package:instagram_clone/models/post_model.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<PostModel> display_list = List.from(postList);

  void updateList(String value) {
    setState(() {
      display_list = postList
          .where((element) =>
              element.name!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Instagram',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          overflow: TextOverflow.clip,
        ),
        backgroundColor: Colors.white,
      ),
      body: _buildBody(),
    );
  }

  _buildBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TextField(
            onChanged: (value) => updateList(value),
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xff30236),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none),
              hintText: "eg: The Dark Knight",
              prefixIcon: Icon(Icons.search),
              prefixIconColor: Colors.purple.shade900,
            )),
        SizedBox(
          height: 20,
        ),
        Expanded(
          child: Container(
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 3 / 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemCount: display_list.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(15)),
                    child: Text(display_list[index].name),
                  );
                }),
          ),
        )
      ],
    );
  }
}
