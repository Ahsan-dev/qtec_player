import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../../../core/app_theme.dart';
import '../../../../../core/size_config.dart';
import '../../../../routes/app_pages.dart';
import '../../controllers/play_details_controller.dart';

class VideoChannelSection extends GetView<PlayDetailsController> {
  const VideoChannelSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              clipBehavior: Clip.hardEdge,
              borderRadius: BorderRadius.circular(SizeConfig().icon50()),
              child: FadeInImage.assetNetwork(
                placeholder: "assets/images/video_placeholder.jpg",
                image: controller.video.channelImage!,
                height: SizeConfig().icon50(),
                width: SizeConfig().icon50(),
                fit: BoxFit.cover,
                imageErrorBuilder:(context, error, stackTrace) {
                  return Image.asset(
                    "assets/images/video_placeholder.jpg",
                    height: SizeConfig().icon50(),
                    width: SizeConfig().icon50(),
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
            SizedBox(width: SizeConfig().icon15(),),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${controller.video.channelName}",
                  style: TextStyle(
                    fontSize: SizeConfig().font36(),
                    fontWeight: FontWeight.w500,
                    color: CustomColors.getGray900()
                  ),
                ),
                Text(
                  "${controller.video.channelSubscriber} subscribers",
                  style: TextStyle(
                    fontSize: SizeConfig().font30(),
                    fontWeight: FontWeight.w400,
                    color: CustomColors.getGray600()
                  ),
                )
              ],
            ),
          ],
        ),
        ElevatedButton(
            onPressed: (){
              Get.toNamed(Routes.PLAY_NEXT);
            },
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(CustomColors.getButtonColor()),
            ),
            child: Row(
              children: [
                Icon(Icons.add, size: SizeConfig().icon20(),),
                SizedBox(width: SizeConfig().icon10(),),
                Text(
                  "Subscibe",
                  style: TextStyle(
                    fontSize: SizeConfig().font30(),
                    fontWeight: FontWeight.w500,
                    color: Colors.white
                  ),
                )
              ],
            )
        )
      ],
    );
  }
}