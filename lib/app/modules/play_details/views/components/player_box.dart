import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qtec_player/app/modules/play_details/controllers/play_details_controller.dart';
import 'package:video_player/video_player.dart';

import 'controlls_overlay.dart';

class PlayerBox extends GetView<PlayDetailsController> {
  const PlayerBox({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height/3,
      width: Get.width,
      child: AspectRatio(aspectRatio: controller.playerController.value.aspectRatio,
          child: Obx(() => Stack(
            alignment: Alignment.bottomCenter,
            children: [
              controller.isThumbnail.value?
                Image.network(controller.video.thumbnail!,
                    height: Get.height/2.5,
                    width: Get.width,
                    fit: BoxFit.fitHeight
                ):
                VideoPlayer(controller.playerController),
              ControlsOverlay(pController: controller.playerController,),
              controller.isThumbnail.value?
                Container():
                VideoProgressIndicator(controller.playerController, allowScrubbing: true)
            ],
          ))),
    );
  }
}
