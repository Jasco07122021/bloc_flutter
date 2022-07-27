import 'package:bloc_flutter/infrastructure/models/posts.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: "https://jsonplaceholder.typicode.com")
abstract class ApiClient {
  factory ApiClient(Dio dio) = _ApiClient;

  @GET("/posts")
  Future<List<Post>> getAllPosts();
}
