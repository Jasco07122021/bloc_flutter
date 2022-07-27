import 'package:bloc_flutter/infrastructure/models/posts.dart';
import 'package:equatable/equatable.dart';

class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object?> get props => [];
}

class HomeLoading extends HomeState {}

class HomeLoaded extends HomeState {
  final List<Post> postsList;

  const HomeLoaded(this.postsList);

  @override
  List<Object?> get props => [postsList];
}

class HomeError extends HomeState {
  final String? message;

  const HomeError(this.message);
}
