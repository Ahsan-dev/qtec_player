import 'package:get/get.dart';

import '../controllers/play_details_controller.dart';

class PlayDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PlayDetailsController>(
      () => PlayDetailsController(),
    );
  }
}
