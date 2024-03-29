import 'package:clean_architecture_mvvm/app/resources/color_manager.dart';
import 'package:clean_architecture_mvvm/domain/models/post.dart';
import 'package:clean_architecture_mvvm/presentation/post/view_model.dart/post_bloc.dart';
import 'package:clean_architecture_mvvm/presentation/post/view_model.dart/post_state.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostDemoScreen extends StatelessWidget {
  const PostDemoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'info'.tr(),
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Colors.white,
              ),
        ),
      ),
      body: BlocProvider(
        create: (context) => PostCubit()..getListPosts(),
        child: BlocBuilder<PostCubit, PostState>(
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
                  subtitle: Text(
                    item.body,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: AppColors.textColor),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
