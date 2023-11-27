import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:qtec_player/data/communication/api_urls.dart';

class DioClient {
  Dio? dio;

  DioClient(Dio? dioC){
    dio = dioC ?? Dio();

    dio
      ?..options.baseUrl = ApiUrls.baseUrl
    ..options.connectTimeout = Duration(microseconds: 30000)
    ..options.receiveTimeout = Duration(microseconds: 30000)
    ..httpClientAdapter
    ..options.headers = {
    'Content-Type': 'application/json; charset=UTF-8',
    };

  }

  Future<Response> get(String uri, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      var response = await dio!.get(
        uri,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      print('response form -get ${response.statusCode}');
      return response;
    } on SocketException catch (e) {

      throw SocketException(e.toString());
    } on FormatException catch (_) {
      throw const FormatException("Unable to process the data");
    } catch (e) {
      if (kDebugMode) {
        print('===============${e.toString()}');
      }
      rethrow;
    }
  }
}