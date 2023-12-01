import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qtec_player/app/modules/play_list/controllers/play_list_controller.dart';
import 'package:qtec_player/app/widgets/date_function.dart';
import 'package:qtec_player/core/app_theme.dart';
import 'package:qtec_player/core/size_config.dart';

import '../../../../../data/data_sync/models/trending_video.dart';

class PlayListVideoTile extends GetView<PlayListController> {
  const PlayListVideoTile({
    super.key,
    required this.index
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    TrendingVideo item = controller.videoList[index];
    return Padding(
      padding: EdgeInsets.symmetric(vertical: SizeConfig().icon10()),
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                if(item.thumbnail != null)
                  FadeInImage.assetNetwork(
                    placeholder: "assets/images/video_placeholder.jpg",
                    image: item.thumbnail!,
                    imageErrorBuilder:(context, error, stackTrace) {
                      return Image.asset("assets/images/video_placeholder.jpg");
                    },
                  )
                else
                  Image.asset("assets/images/video_placeholder.jpg"),
                Positioned(
                  right: SizeConfig().icon10(),
                  bottom: SizeConfig().icon10()/1.2,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(SizeConfig().icon10()/1.5)
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: SizeConfig().icon10()/4,
                      horizontal: SizeConfig().icon10(),
                    ),
                    child: Center(
                      child: Text(
                        "${item.duration}",
                        style: TextStyle(
                          fontSize: SizeConfig().font28(),
                          color: Colors.white,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: SizeConfig().icon15(),),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 3,
                  child: Center(
                    child: ClipRRect(
                      clipBehavior: Clip.hardEdge,
                      borderRadius: BorderRadius.circular(SizeConfig().icon50()),
                      child: FadeInImage.assetNetwork(
                        placeholder: "assets/images/video_placeholder.jpg",
                        image: item.channelImage!,
                        height: SizeConfig().icon55(),
                        width: SizeConfig().icon55(),
                        fit: BoxFit.cover,
                        imageErrorBuilder:(context, error, stackTrace) {
                          return Image.asset(
                            "assets/images/video_placeholder.jpg",
                            height: SizeConfig().icon55(),
                            width: SizeConfig().icon55(),
                            fit: BoxFit.cover,
                          );
                        },
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 12,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          item.title!,
                        style: TextStyle(
                          fontSize: SizeConfig().font40(),
                          fontWeight: FontWeight.w500,
                          color: CustomColors.getGray900()
                        ),
                      ),
                      SizedBox(height: SizeConfig().icon10(),),
                      RichText(text: TextSpan(
                        children: [
                          TextSpan(
                            text: "${item.viewers} views",
                            style: TextStyle(
                              color: CustomColors.getGray600(),
                              fontSize: SizeConfig().font38(),
                              fontWeight: FontWeight.w400
                            )
                          ),
                          TextSpan(
                              text: "  .  ",
                              style: TextStyle(
                                color: CustomColors.getGray600(),
                                fontSize: SizeConfig().font38(),
                                fontWeight: FontWeight.w400
                              )
                          ),
                          TextSpan(
                              text: "${dateFormatter(item.createdAt!, false, "MMM dd, yyyy")}",
                              style: TextStyle(
                                color: CustomColors.getGray600(),
                                fontSize: SizeConfig().font38(),
                                fontWeight: FontWeight.w400
                              )
                          ),
                        ]
                      ))
                    ],
                  )
                ),
                Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.more_vert,
                    color: CustomColors.getGray400(),
                    size: SizeConfig().icon35(),
                  )
                )
              ],
            ),
            SizedBox(height: SizeConfig().icon15(),),

          ],
        ),
      ),
    );
  }
}
