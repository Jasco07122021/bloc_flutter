import 'package:bloc_flutter/application/home/home_bloc.dart';
import 'package:bloc_flutter/application/home/home_event.dart';
import 'package:bloc_flutter/application/home/home_state.dart';
import 'package:bloc_flutter/presintation/home/local_widgets/loaded_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

import 'local_widgets/loading.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeBloc homeBloc = HomeBloc();

  @override
  void initState() {
    homeBloc.add(const GetAllPostsEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => homeBloc,
      child: const _HomePage(),
    );
  }
}

class _HomePage extends StatelessWidget {
  const _HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Logger().w("_HomePage");
    return Scaffold(
      body: BlocBuilder<HomeBloc, HomeState>(
        buildWhen: (previousState, state) {
          if (state is HomeLoading) {
            return false;
          }
          return true;
        },
        builder: (context, state) {
          Logger().w(state.toString());
          if (state is HomeLoading) {
            return const LoadingCenter();
          } else if (state is HomeLoaded) {
            return LoadedBody(list: state.postsList);
          }
          return const SizedBox();
        },
      ),
    );
  }
}
