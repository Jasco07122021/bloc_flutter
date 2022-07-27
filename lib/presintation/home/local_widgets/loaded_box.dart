import 'package:bloc_flutter/infrastructure/models/posts.dart';
import 'package:flutter/material.dart';

class LoadedBox extends StatelessWidget {
  final Post post;

  const LoadedBox({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(post.title),
      subtitle: Text(post.body),
    );
  }
}
