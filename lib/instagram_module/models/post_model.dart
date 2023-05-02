class PostModel {
  late int id;
  late String userid;
  late String imageurl;
  late String caption;
  late String location;
  late String commentcount;

  PostModel(
      {this.id = 1999,
      this.userid = "1231",
      this.imageurl = "http://example.com",
      this.caption = "no body",
      this.location = "pp",
      this.commentcount = "21"});

  PostModel.fromJson(Map<String, dynamic> item) {
    id = item["id"];
    userid = item["userid"];
    imageurl = item["imageurl"];
    caption = item["caption"];
    location = item["location"];
    commentcount = item["commentcount"];
  }

  @override
  String toString() {
    return "id: $id, userid: $userid, imageurl: $imageurl, caption: $caption, location: $location, commentcount: $commentcount";
  }
}
