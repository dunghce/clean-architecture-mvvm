import 'package:clean_architecture_mvvm/app/api_ul.dart';
import 'package:clean_architecture_mvvm/data/reponses/post_response.dart';
import 'package:clean_architecture_mvvm/domain/models/post.dart';

import '../network/request_http.dart';

abstract class RemoteDataSource {
  Future<List<PostResponse>> getPosts();
}

class RemoteDataSourceImpl implements RemoteDataSource {
  @override
  Future<List<PostResponse>> getPosts() async {
    try {
      final response = await RequestHttp.get(ApiUrl.posts);
      // Map<String, dynamic> mapResponse = response.decode(response.body);
      var list = response['pokemon'] as List;
      List<PostResponse> listPost = [];
      for (var e in list) {
        listPost.add(PostResponse.fromJson(e));
      }
      return listPost;
    } catch (e) {
      throw Exception("There was a problem with the connection");
    }
  }
}
