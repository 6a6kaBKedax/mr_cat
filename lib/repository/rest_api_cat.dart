import 'package:dio/dio.dart';
import 'package:mr_cat/models/cat_model.dart';
import 'package:mr_cat/res/consts.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_api_cat.g.dart';

@RestApi(baseUrl: Consts.base_url)
abstract class RestApiCat {
  factory RestApiCat(Dio dio) = _RestApiCat;

  @GET('/breeds')
  Future<List<CatModel>> getBreeds();
}
