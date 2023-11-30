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
    TrendingVideo item = controller.trendingVideos.value!.results![index];
    return Padding(
      padding: EdgeInsets.symmetric(vertical: SizeConfig().icon10()),
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FadeInImage.assetNetwork(
              placeholder: "assets/images/video_placeholder.jpg",
              image: item.thumbnail!,
              imageErrorBuilder:(context, error, stackTrace) {
                return Image.asset("assets/images/video_placeholder.jpg");
              },
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
              ],
            ),
            SizedBox(height: SizeConfig().icon15(),),

          ],
        ),
      ),
    );
  }
}
