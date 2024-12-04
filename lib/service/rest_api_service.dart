import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Do call the rest API to get, store data on a remote database for that we need
/// to write the rest API call at a single place and need to return the data
/// if the rest call is a success or need to return custom error exception
/// on the basis of 4xx, 5xx status code. We can make use of http or dio package
/// to make the rest API call in the flutter

class ApiInterceptor extends Interceptor {
  final Ref ref;

  ApiInterceptor({
    required this.ref,
  });

  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    String token = "ZVGQJZiJSuWLRvECu45CAdhqEVXsHLLTrgMFY4Y8jhb25LD7ePmkBjRBm7nrv6MvexUURgkpsoVGYJjJ4XkYQKo8YY2QJ7LWBuWTkBcZXUTxkhCoa8yP9pji96ov4JCv";
    options.headers["x-access-token"] = token;
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
    if (err.response?.statusCode == 404) {
      handler.reject(
        DioException(
          type: DioExceptionType.badResponse,
          response: err.response,
          requestOptions: err.requestOptions,
          stackTrace: err.stackTrace,
          message: err.response!.data['message'] ?? err.error,
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
        message: err.response!.data['message'] ?? err.error,
      ),
    );
  }
}

class ApiClient {
  Dio baseUrl(Ref ref) {
    Dio dio = Dio();
    dio.options.baseUrl = 'https://techcaresolution-ssl.com/erp-api';
    dio.interceptors.add(ApiInterceptor(ref: ref));
    return dio;
  }
}

final apiClientProvider = Provider<Dio>(
  (ref) {
    try {
      return ApiClient().baseUrl(ref);
    } catch (e) {
      throw Exception(e);
    }
  },
);
