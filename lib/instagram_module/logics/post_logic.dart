import 'package:flutter/material.dart';
import 'package:instagram_clone/instagram_module/models/post_model.dart';
import 'package:instagram_clone/instagram_module/services/post_service.dart';

class PostLogic extends ChangeNotifier {
  List<PostModel>? _postList;
  List<PostModel>? get postList => _postList;

  String? _error;
  String? get error => _error;

  bool _loading = false;
  bool get loading => _loading;

  void setLoading() {
    _loading = true;
    notifyListeners();
  }

  Future read() async {
    await PostService.getData(
      onSuccess: (data) => _postList = data,
      onError: (e) => _error = e,
    );
    _loading = false;
    notifyListeners();
  }
}
