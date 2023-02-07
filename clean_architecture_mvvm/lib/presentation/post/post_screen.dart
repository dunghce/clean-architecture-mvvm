import 'package:clean_architecture_mvvm/domain/models/post.dart';
import 'package:clean_architecture_mvvm/presentation/post/view_model.dart/post_bloc.dart';
import 'package:clean_architecture_mvvm/presentation/post/view_model.dart/post_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostDemoScreen extends StatefulWidget {
  const PostDemoScreen({Key? key}) : super(key: key);

  @override
  State<PostDemoScreen> createState() => _PostDemoScreenState();
}

class _PostDemoScreenState extends State<PostDemoScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Demo'),
      ),
      body: BlocBuilder<PostCubit, PostState>(
        bloc: PostCubit()..getListPosts(),
        builder: (context, state) => ListView.builder(
          itemCount: state.listPost.length,
          padding: const EdgeInsets.all(8),
          itemBuilder: (context, index) {
            Post item = state.listPost[index];
            return Card(
              elevation: 4,
              child: ListTile(
                title: Text(
                  item.title,
                ),
                subtitle: Text(item.body),
              ),
            );
          },
        ),
      ),
    );
  }
}
