import 'package:get/get.dart';
import 'package:qtec_player/data/data_sync/models/trending_video.dart';
import 'package:video_player/video_player.dart';

class PlayDetailsController extends GetxController {
  //TODO: Implement PlayDetailsController

  TrendingVideo video = Get.arguments["video"];
  late VideoPlayerController playerController;

  RxBool isThumbnail = true.obs;

  void initPlayerController() {
    playerController = VideoPlayerController.networkUrl(Uri.parse(video.manifest!));
    playerController.setLooping(true);
    // playerController.play();
    playerController.initialize();
    // playerController.play();
  }

  @override
  void onInit() {
    super.onInit();
    initPlayerController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    playerController.dispose();
    super.onClose();
  }

}
