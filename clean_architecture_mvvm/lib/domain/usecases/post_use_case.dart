import 'package:clean_architecture_mvvm/data/repositories/post_repository.dart';
import 'package:clean_architecture_mvvm/domain/models/post.dart';

class PostUseCase {
  PostRepositoryImpl postRepositoryImpl;
  PostUseCase(this.postRepositoryImpl);

  Future<List<Post>> execute() async {
    return await postRepositoryImpl.getPosts();
  }
}
