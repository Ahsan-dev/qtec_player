import 'dart:io';

import 'package:qtec_player/data/data_sync/models/trending_video.dart';

class TrendingVideosData {
  Links? links;
  int? total;
  int? page;
  int? pageSize;
  List<TrendingVideo>? results;

  TrendingVideosData({
    this.links,
    this.total,
    this.page,
    this.pageSize,
    this.results
  });

  factory TrendingVideosData.fromJson(Map<String, dynamic> json) {
    return TrendingVideosData(
      links: Links.fromJson(json["links"]),
      total: json["total"],
      page: json["page"],
      pageSize: json["page_size"],
      results:(json["results"] as List<dynamic>)
        .map((result) => TrendingVideo.fromJson(result))
        .toList()
    );
  }
}


class Links {
  int? next;
  int? previous;

  Links({
    this.next,
    this.previous
  });

  factory Links.fromJson(Map<String, dynamic> json) {
    return Links(
      next: json["next"],
      previous: json["previous"],
    );
  }
}