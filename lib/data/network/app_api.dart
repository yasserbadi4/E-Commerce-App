import 'package:dio/dio.dart';
import 'package:ecommerce_mina/app/constants.dart';
import 'package:retrofit/retrofit.dart';

import '../response/responses.dart';

part 'app_api.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class AppServiceClient {
  factory AppServiceClient(Dio dio, {String baseUrl}) = _AppServiceClient;

  @POST("/customers/login")
  Future<AuthenticationResponse> login(
      @Field("email") String email, @Field("password") String password);
}