import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_printer/config/routes/route_helper.dart';

export 'package:dio/dio.dart';

/// Do call the rest API to get, store data on a remote database for that we need
/// to write the rest API call at a single place and need to return the data
/// if the rest call is a success or need to return custom error exception
/// on the basis of 4xx, 5xx status code. We can make use of http or dio package
/// to make the rest API call in the flutter
// const prod = 'https://techcaresolution-ssl.com/erp-api';

class ApiInterceptor extends Interceptor {
  final Ref ref;

  ApiInterceptor({
    required this.ref,
  });

  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    // String token = "ZVGQJZiJSuWLRvECu45CAdhqEVXsHLLTrgMFY4Y8jhb25LD7ePmkBjRBm7nrv6MvexUURgkpsoVGYJjJ4XkYQKo8YY2QJ7LWBuWTkBcZXUTxkhCoa8yP9pji96ov4JCv";
    String token = ref.read(tokenRequest);
    options.headers["x-access-token"] = token;
    options.headers["Accept-Language"] = "th";
    // var lang = ref.read(languageProvider);
    // options.queryParameters = {...options.queryParameters, "lang": lang};

    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (kDebugMode) print(err.response?.statusCode);
    ref.read(routerHelperProvider).goPath('/error');
    if (err.response?.statusCode == 400) {
      handler.reject(
        DioException(
          type: DioExceptionType.badResponse,
          response: err.response,
          requestOptions: err.requestOptions,
          stackTrace: err.stackTrace,
          message: 'Status: ${err.response?.statusCode}\n${err.response?.data['message'] ?? err.message}',
        ),
      );
      return;
    }

    if (err.response?.statusCode == 404) {
      handler.reject(
        DioException(
          type: DioExceptionType.badResponse,
          response: err.response,
          requestOptions: err.requestOptions,
          stackTrace: err.stackTrace,
          message: 'Status: ${err.response?.statusCode}\n${err.response?.data['message'] ?? err.message}',
        ),
      );
      return;
    }
    if (err.response?.statusCode == 401) {
      handler.reject(
        DioException(
          type: DioExceptionType.badResponse,
          response: err.response,
          requestOptions: err.requestOptions,
          stackTrace: err.stackTrace,
          message: 'Unauthorized',
        ),
      );
      return;
    }
    if (err.response?.statusCode == 422) {
      handler.reject(
        DioException(
          type: DioExceptionType.badResponse,
          response: err.response,
          requestOptions: err.requestOptions,
          stackTrace: err.stackTrace,
          message: 'Status: ${err.response?.statusCode}\n${err.response?.data['messages'] ?? err.message}',
        ),
      );
      return;
    }
    handler.reject(
      DioException(
        type: DioExceptionType.badResponse,
        response: err.response,
        requestOptions: err.requestOptions,
        stackTrace: err.stackTrace,
        message: 'Something went wrong',
      ),
    );
  }
}

class ApiClient {
  Dio baseUrl(Ref<Dio> ref) {
    String baseUrl = ref.read(serverUrlRequest);
    Dio dio = Dio();
    dio.options.baseUrl = baseUrl;
    dio.interceptors.add(ApiInterceptor(ref: ref));
    return dio;
  }
}

final apiClientProvider = Provider<Dio>((ref) {
  try {
    return ApiClient().baseUrl(ref);
  } catch (e) {
    throw Exception(e);
  }
});

final serverUrlRequest = StateProvider<String>((ref) => '');
//c2VydmVyVXJsUmVxdWVzdA
final tokenRequest = StateProvider<String>((ref) => '');
//dG9rZW5SZXF1ZXN0
