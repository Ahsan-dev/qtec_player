import 'package:qtec_player/data/communication/server_address.dart';

abstract class ApiUrls {

  static String baseUrl = getBaseUrl();
  static String apiUrl = "${getBaseUrl()}/api/";
  static String trendingEndPoint = "trending-video/1";

  static String getTrendingVideosUrl = "${apiUrl}/${trendingEndPoint}";

  static String getBaseUrl() {
    return ServerAddress.live;
  }
}