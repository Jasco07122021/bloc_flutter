import 'package:bloc_flutter/infrastructure/models/posts.dart';
import 'package:bloc_flutter/infrastructure/repositories/home/home_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository homeRepository = HomeRepository();

  HomeBloc() : super(HomeLoading()) {
    on<GetAllPostsEvent>(_loadedAllPosts);
  }

  void _loadedAllPosts(GetAllPostsEvent event, Emitter<HomeState> emit) async {
    List<Post> list = await homeRepository.getAllPostsHomeRepository();
    emit(HomeLoaded(list));
  }
}
