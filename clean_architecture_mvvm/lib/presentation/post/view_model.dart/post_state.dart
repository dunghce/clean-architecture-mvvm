import 'package:clean_architecture_mvvm/domain/models/post.dart';

class PostState {
  List<Post> listPost;
  PostState copyWith(List<Post> data) {
    return PostState(data);
  }

  PostState(this.listPost);
}
