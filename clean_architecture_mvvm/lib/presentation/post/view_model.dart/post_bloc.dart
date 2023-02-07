import 'package:clean_architecture_mvvm/data/data_source.dart/remote_data_source.dart';
import 'package:clean_architecture_mvvm/data/repositories/post_repository.dart';
import 'package:clean_architecture_mvvm/domain/usecases/post_use_case.dart';
import 'package:clean_architecture_mvvm/presentation/post/view_model.dart/post_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostCubit extends Cubit<PostState> {
  PostCubit() : super(PostState([]));
  final PostUseCase postUseCase =
      PostUseCase(PostRepositoryImpl(RemoteDataSourceImpl()));
  void getListPosts() async {
    try {
      (await postUseCase.execute()).fold((left) => null, (right) {
        emit(state.copyWith(right));
      });
    } catch (e) {
      //  print(e);
    }
  }
}
