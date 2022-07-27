import 'package:bloc_flutter/infrastructure/models/posts.dart';
import 'package:equatable/equatable.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object?> get props => [];
}

class GetAllPostsEvent extends HomeEvent {
  final List<Post> posts;

  const GetAllPostsEvent({this.posts = const <Post>[]});

  @override
  List<Object?> get props => [posts];
}
