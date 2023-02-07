import 'package:clean_architecture_mvvm/data/reponses/post_response.dart';
import 'package:clean_architecture_mvvm/domain/models/post.dart';

extension PostMaper on PostResponse? {
  Post toDomain() {
    return Post(
      id: this?.id ?? 0,
      userId: this?.userId ?? 0,
      title: this?.title ?? '',
      body: this?.body ?? '',
    );
  }
}
