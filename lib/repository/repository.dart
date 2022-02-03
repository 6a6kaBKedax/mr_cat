import 'package:dio/dio.dart';
import 'package:mr_cat/repository/rest_api_cat.dart';

class Repository{
  static final Dio _dio = Dio();
  static final RestApiCat client = RestApiCat(_dio);
}