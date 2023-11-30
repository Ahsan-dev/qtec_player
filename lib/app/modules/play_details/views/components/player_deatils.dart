import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:qtec_player/app/modules/play_details/controllers/play_details_controller.dart';
import 'package:qtec_player/app/modules/play_details/views/components/video_channel_section.dart';
import 'package:qtec_player/app/modules/play_details/views/components/video_comment_section.dart';
import 'package:qtec_player/app/modules/play_details/views/components/video_operation.dart';
import 'package:qtec_player/app/modules/play_list/controllers/play_list_controller.dart';
import 'package:qtec_player/app/widgets/date_function.dart';
import 'package:qtec_player/core/size_config.dart';

import '../../../../../core/app_theme.dart';

class PlayerDetails extends GetView<PlayDetailsController> {
  const PlayerDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: EdgeInsets.symmetric(horizontal: SizeConfig().icon15()),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: SizeConfig().icon10(),),
              Text(
                controller.video.title!,
                style: TextStyle(
                  color: CustomColors.getGray900(),
                  fontSize: SizeConfig().font40(),
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Hind Siliguri'
                ),
              ),
              SizedBox(height: SizeConfig().icon10(),),
              Row(
                children: [
                  Text(
                    "${controller.video.channelSubscriber} views",
                    style: TextStyle(
                        fontSize: SizeConfig().font35(),
                        fontWeight: FontWeight.w500,
                        color: CustomColors.getGray600()
                    ),
                  ),
                  SizedBox(width: SizeConfig().icon15()),
                  Text(
                    ".",
                    style: TextStyle(
                        fontSize: SizeConfig().font35(),
                        fontWeight: FontWeight.w500,
                        color: CustomColors.getGray600()
                    ),
                  ),
                  SizedBox(width: SizeConfig().icon15()),
                  Text(
                    "${getDaysCount(DateTime.parse(controller.video.createdAt!))}",
                    style: TextStyle(
                        fontSize: SizeConfig().font35(),
                        fontWeight: FontWeight.w500,
                        color: CustomColors.getGray600()
                    ),
                  ),
                ],
              ),
              SizedBox(height: SizeConfig().icon15(),),
              VideoOperationsSection(),
              SizedBox(height: SizeConfig().icon15(),),
              VideoChannelSection(),
              SizedBox(height: SizeConfig().icon15(),),
            ],
          ),
        ),
        Divider(thickness: 1,),
        SizedBox(height: SizeConfig().icon20()),
        CommentsSection(),
        Divider(thickness: 1,)
      ],
    );
  }
}






class VideoOperationsSection extends StatelessWidget {
  const VideoOperationsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 3,
            child: VideoOperation(
              icon: "assets/icons/favourites.svg",
              title: "MASHA ALLAH (12K)",
            )
        ),
        Expanded(
            flex: 2,
            child: VideoOperation(
              icon: "assets/icons/likes.svg",
              title: "LIKE (12K)",
            )
        ),
        Expanded(
            flex: 2,
            child: VideoOperation(
              icon: "assets/icons/share.svg",
              title: "SHARE",
            )
        ),
        Expanded(
            flex: 2,
            child: VideoOperation(
              icon: "assets/icons/reports.svg",
              title: "REPORT",
            )
        ),
      ],
    );
  }
}








