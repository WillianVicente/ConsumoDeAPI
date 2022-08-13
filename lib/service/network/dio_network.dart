import 'package:dio/dio.dart';
import 'package:grupo2/service/network/network.dart';

class DioNetwork implements NetworkContract {
  final dio = Dio();

  @override
  Future get(String url) async {
    final result = await dio.get(url);

    return result.data;
  }

  @override
  Future post(String url, {data}) async {
    final result = await dio.post(url, data: data);

    return result.data;
  }

  @override
  Future put(String url, {data}) async {
    final result = await dio.put(url, data: data);

    return result.data;
  }

  @override
  Future delete(String url, {data}) async {
    final result = await dio.delete(url, data: data);

    return result.data;
  }
}
