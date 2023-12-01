import 'package:get/get.dart';

import '../controllers/play_next_controller.dart';

class PlayNextBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PlayNextController>(
      () => PlayNextController(),
    );
  }
}
