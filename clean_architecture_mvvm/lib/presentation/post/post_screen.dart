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
        title: Text('App Demo'),
      ),
      body: BlocBuilder<PostCubit, PostState>(
        bloc: PostCubit()..getListPosts(),
        builder: (context, state) => SingleChildScrollView(
          child: Column(
            children: [
              ...state.listPost.map((e) => Column(
                    children: [
                      Text('${e.id}'),
                      Text('${e.userId}'),
                      Text(e.title),
                      Text(e.body),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
