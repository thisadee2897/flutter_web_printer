import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_printer/config/routes/app_router.dart';

class RouterHelper {
  RouterHelper({required this.ref});
  final Ref ref;
  goSubPath(String path, {Map<String, dynamic>? params}) {
    var url = ref.read(appRouterProvider).state.uri;
    String currentPath = url.path;
    return ref.read(appRouterProvider).go(Uri(path: "$currentPath/$path", queryParameters: params).toString());
  }
  //goPath
  goPath(String path, {Map<String, dynamic>? params}) {
    return ref.read(appRouterProvider).go(Uri(path: path, queryParameters: params).toString());
  }
}

final routerHelperProvider = Provider<RouterHelper>((ref) => RouterHelper(ref: ref));
