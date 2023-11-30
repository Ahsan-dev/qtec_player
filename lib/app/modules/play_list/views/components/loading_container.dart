import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qtec_player/app/modules/play_list/controllers/play_list_controller.dart';

class LoadingContainer extends GetView<PlayListController> {
  const LoadingContainer({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      height: controller.showLoadingContainer.value ? 36 : 0,
      width: double.infinity,
      color: Colors.white,
      child: Center(
        child: Text(controller.totalData.value == controller.videoList.length
            ? "No More Items"
            : "Loading more Items..."),
      ),
    );
  }
}
