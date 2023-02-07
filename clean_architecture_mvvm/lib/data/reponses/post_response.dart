class CategoryPost {
  final List<PostResponse> result;
  CategoryPost(this.result);
  factory CategoryPost.fromJson(Map<String, dynamic> json) {
    return CategoryPost(json['result']);
  }
}

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
  factory PostResponse.fromJson(Map<String, dynamic> json) {
    return PostResponse(
      id: json['id'] ?? 0,
      userId: json['userId'] ?? 0,
      title: json['title'] ?? '',
      body: json['body'] ?? '',
    );
  }
}
