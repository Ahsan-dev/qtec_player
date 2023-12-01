import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:qtec_player/app/modules/play_list/views/components/splashing_widget.dart';
import 'package:qtec_player/data/data_sync/models/trending_video.dart';

import '../controllers/play_list_controller.dart';
import 'components/loading_container.dart';
import 'components/playlist_video_list.dart';

class PlayListView extends GetView<PlayListController> {
  const PlayListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Stack(
            children: [
              PlayListStackedBody(),
              Align(
                alignment: Alignment.bottomCenter,
                child: LoadingContainer(),
              )
            ],
          ),
        ),
      )
    );
  }
}

class PlayListStackedBody extends GetView<PlayListController> {
  const PlayListStackedBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx((){
      // if(controller.isLoading.value) {
      //   return Center(
      //     child: CircularProgressIndicator(),
      //   );
      // }else
        if(controller.isInitial.value==true && controller.videoList.length==0) {
          return Center(
            child: Splashing(),
          );
        } else if (controller.videoList.length > 0) {
          return PlayListVideosList();
        } else if(controller.totalData.value==0) {
          return Container(
            height: Get.height,
            child: Center(
                child: Text("No Videos Added")),
          );
        } else {
          return Container();
        }
    });
  }
}




