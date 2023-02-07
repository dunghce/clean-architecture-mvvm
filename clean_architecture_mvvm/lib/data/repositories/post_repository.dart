import 'package:clean_architecture_mvvm/data/data_source.dart/remote_data_source.dart';
import 'package:clean_architecture_mvvm/data/mapper/mapper.dart';
import 'package:clean_architecture_mvvm/domain/models/post.dart';

abstract class PostRepository {
  Future<List<Post>> getPosts();
}

class PostRepositoryImpl implements PostRepository {
  RemoteDataSource remoteDataSource;
  PostRepositoryImpl(this.remoteDataSource);
  @override
  Future<List<Post>> getPosts() async {
    try {
      final data = await remoteDataSource.getPosts();
      if (data.isNotEmpty) {
        return List.from(data.map((e) => e.toDomain()).toList());
      }
      return [];
    } catch (e) {
      return [];
    }
  }
}
