import 'package:json_annotation/json_annotation.dart';
part 'post_response.g.dart';

@JsonSerializable()
class CategoryPost {
  final List<PostResponse> result;
  CategoryPost(this.result);
  factory CategoryPost.fromJson(Map<String, dynamic> json) =>
      _$CategoryPostFromJson(json);
}

@JsonSerializable()
class PostResponse {
  final int id;
  final int userId;
  final String title;
  final String body;
  PostResponse({
    required this.id,
    required this.userId,
    required this.title,
    required this.body,
  });
  factory PostResponse.fromJson(Map<String, dynamic> json) =>
      _$PostResponseFromJson(json);
}
