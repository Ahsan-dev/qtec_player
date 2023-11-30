import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:qtec_player/data/communication/api_urls.dart';
import 'package:qtec_player/data/communication/dioclient/logging_interceptor.dart';
import 'package:qtec_player/data/data_sync/controllers/trending_videos_data_sync.dart';

class DioClient {
  Dio? dio;

  DioClient(){
    dio = Dio();

    dio
      ?..options.baseUrl = ApiUrls.apiUrl
    // ..options.connectTimeout = Duration(microseconds: 60000)
    // ..options.receiveTimeout = Duration(microseconds: 60000)
    ..httpClientAdapter
    ..options.headers = {
    'Content-Type': 'application/json; charset=UTF-8',
    };

    dio?.interceptors.add(LoggingInterceptor());

  }

  Future<FailureOrJSON> get(String uri, {
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
      return Right(response.data);
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

class TrendingVideoApi extends DioClient {
  TrendingVideoApi(): super();
}