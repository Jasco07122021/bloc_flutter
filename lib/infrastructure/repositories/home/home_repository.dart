import 'package:bloc_flutter/infrastructure/models/posts.dart';
import 'package:bloc_flutter/infrastructure/provider/api_client.dart';
import 'package:dio/dio.dart';

class HomeRepository {
  Dio dio = Dio(
    BaseOptions(
      headers: {"Accept-Version": "v1"},
    ),
  );

  Future<List<Post>> getAllPostsHomeRepository() async {
    List<Post> list = await ApiClient(dio).getAllPosts();
    print(list);
    return list;
  }
}
