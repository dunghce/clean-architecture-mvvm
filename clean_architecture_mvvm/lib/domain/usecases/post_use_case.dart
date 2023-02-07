import 'package:clean_architecture_mvvm/data/network/my_error.dart';
import 'package:clean_architecture_mvvm/data/repositories/post_repository.dart';
import 'package:clean_architecture_mvvm/domain/models/post.dart';
import 'package:either_dart/either.dart';

class PostUseCase {
  PostRepositoryImpl postRepositoryImpl;
  PostUseCase(this.postRepositoryImpl);

  Future<Either<MyError, List<Post>>> execute() async {
    return postRepositoryImpl.getPosts();
  }
}
