
class TrendingVideo {
  String? thumbnail;
  int? id;
  String? title;
  String? dateAndTime;
  String? slug;
  String? createdAt;
  String? manifest;
  int? liveStatus;
  String? liveManifest;
  bool isLive = false;
  String? channelImage;
  String? channelName;
  String? channelUserName;
  bool isVerified = false;
  String? channelSlug;
  String? channelSubscriber;
  int? channelId;
  String? type;
  String? viewers;
  String? duration;

  TrendingVideo({
    this.thumbnail,
    this.id,
    this.title,
    this.dateAndTime,
    this.slug,
    this.createdAt,
    this.manifest,
    this.liveStatus,
    this.liveManifest,
    this.isLive = false,
    this.channelImage,
    this.channelName,
    this.channelUserName,
    this.isVerified = false,
    this.channelSlug,
    this.channelSubscriber,
    this.channelId,
    this.type,
    this.viewers,
    this.duration
  });


  factory TrendingVideo.fromJson(Map<String, dynamic> json){
    return TrendingVideo(
      thumbnail: json["thumbnail"],
      id: json["id"],
      title: json["title"],
      dateAndTime: json["date_and_time"],
      slug: json["slug"],
      createdAt: json["created_at"],
      manifest: json["manifest"],
      liveStatus: json["live_status"],
      liveManifest: json["live_manifest"],
      isLive: json["is_live"],
      channelImage: json["channel_image"],
      channelName: json["channel_name"],
      channelUserName: json["channel_username"],
      isVerified: json["is_verified"],
      channelSlug: json["channel_slug"],
      channelSubscriber: json["channel_subscriber"],
      channelId: json["channel_id"],
      type: json["type"],
      viewers: json["viewers"],
      duration: json["duration"]

    );
  }
}