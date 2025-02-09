import 'package:dio/dio.dart';

import '../links/api_keys.dart';


class ApiInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers["Accept-Language"] = "en";
    options.headers[ApiKeys.token] ="";
    super.onRequest(options, handler);
  }
}
