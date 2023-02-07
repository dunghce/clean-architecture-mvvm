import 'package:clean_architecture_mvvm/app/api_ul.dart';
import 'package:clean_architecture_mvvm/app/app_configs.dart';
import 'package:clean_architecture_mvvm/data/reponses/post_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'rest_service.g.dart';

@RestApi(baseUrl: AppConfigs.authority)
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET(ApiUrl.posts)
  Future<List<PostResponse>> getTasks();
}
