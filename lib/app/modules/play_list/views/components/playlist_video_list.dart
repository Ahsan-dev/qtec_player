import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:qtec_player/app/modules/play_list/views/components/play_list_video_tile.dart';
import 'package:qtec_player/app/routes/app_pages.dart';
import 'package:qtec_player/core/app_theme.dart';
import 'package:qtec_player/core/size_config.dart';
import '../../../../../data/data_sync/models/trending_video.dart';
import '../../controllers/play_list_controller.dart';



class PlayListVideosList extends GetView<PlayListController> {
  const PlayListVideosList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: controller.xcrollController,
      physics: AlwaysScrollableScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: SizeConfig().icon10()),
            child: Text(
                "Trending Videos",
              style: TextStyle(
                fontSize: SizeConfig().font55(),
                fontWeight: FontWeight.w700,
                color: CustomColors.getGray900()
              ),
            ),
          ),
          ListView.builder(
              itemCount: controller.trendingVideos.value!.results!.length,
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                TrendingVideo item = controller.trendingVideos.value!.results![index];
                return InkWell(
                  onTap: (){
                    Get.toNamed(
                        Routes.PLAY_DETAILS,
                      arguments: {"video": item}
                    );
                  },
                  child: PlayListVideoTile(index: index)
                );
              }
          ),
        ],
      ),
    );
  }
}