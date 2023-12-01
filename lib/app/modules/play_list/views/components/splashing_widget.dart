import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qtec_player/app/modules/play_list/controllers/play_list_controller.dart';
import 'package:qtec_player/core/app_theme.dart';
import 'package:qtec_player/core/size_config.dart';

class Splashing extends GetView<PlayListController> {
  const Splashing({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      decoration: BoxDecoration(
        color: Colors.white
      ),
      child: Center(
        child: Image.asset(
          "assets/icons/play.png",
          height: SizeConfig().icon50()*4,
          width: SizeConfig().icon50()*4,
          fit: BoxFit.contain,
        )
      ),
    );
  }
}
