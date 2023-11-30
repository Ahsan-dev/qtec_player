import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../../../core/app_theme.dart';
import '../../../../../core/size_config.dart';
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
                    "${controller.video.channelName}"
                ),
                Text(
                    "${controller.video.channelSubscriber}"
                )
              ],
            ),
          ],
        ),
        ElevatedButton(
            onPressed: (){

            },
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(CustomColors.getButtonColor()),
            ),
            child: Row(
              children: [
                Icon(Icons.add),
                SizedBox(width: SizeConfig().icon10(),),
                Text("Subscibe")
              ],
            )
        )
      ],
    );
  }
}