import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qtec_player/data/data_sync/controllers/trending_videos_data_sync.dart';
import 'package:qtec_player/data/data_sync/models/trending_video.dart';
import 'package:qtec_player/data/data_sync/models/trending_videos_data.dart';

class PlayListController extends GetxController {
  //TODO: Implement PlayListController

  RxBool isLoading = false.obs;
  RxBool isInitial = true.obs;
  RxInt page = 1.obs;
  RxInt totalData = 0.obs;
  RxBool showLoadingContainer = false.obs;
  RxList<dynamic> videoList = [].obs;

  ScrollController xcrollController = ScrollController();

  final trendingVideos = Rxn<TrendingVideosData>();

  void getTrendingVideos()  {
    isLoading.value = true;
    TrendingVideoController()
        .getAllTrendingVideos(page.value)
        .then((value) {
       value.fold(
           (l) => Left(l),
           (trending) {
             trendingVideos.value = trending;
             videoList.addAll(trending.results!);
             isInitial.value = false;
             totalData.value = trending.total??0;
             showLoadingContainer.value = false;
             isLoading.value = false;
           }
       );
    });
  }

  @override
  void onInit() {
    super.onInit();
    getTrendingVideos();

    xcrollController.addListener(() {
      if(xcrollController.position.pixels == xcrollController.position.maxScrollExtent) {
        page.value++;
        showLoadingContainer.value = true;
        if(videoList.length < totalData.value)
          getTrendingVideos();
        else{
          Future.delayed(Duration(seconds: 1)).then((value) {
            showLoadingContainer.value = false;
          });
        }
      }
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    xcrollController.dispose();
    super.onClose();
  }

}
