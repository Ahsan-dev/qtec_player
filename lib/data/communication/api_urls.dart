import 'package:qtec_player/data/communication/server_address.dart';

abstract class ApiUrls {

  static String baseUrl = getBaseUrl();
  static String trendingEndPoint = "api/trending-video/1";

  static String getTrendingVideosUrl = "${baseUrl}/${trendingEndPoint}";

  static String getBaseUrl() {
    return ServerAddress.live;
  }
}