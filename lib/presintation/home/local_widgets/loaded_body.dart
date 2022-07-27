import 'package:bloc_flutter/application/home/home_state.dart';
import 'package:bloc_flutter/infrastructure/models/posts.dart';
import 'package:bloc_flutter/presintation/home/local_widgets/loaded_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoadedBody extends StatelessWidget {
  final List<Post> list;

  const LoadedBody({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        return LoadedBox(post: list[index]);
      },
    );
  }
}
