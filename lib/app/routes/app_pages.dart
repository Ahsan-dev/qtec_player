import 'package:get/get.dart';

import '../modules/play_details/bindings/play_details_binding.dart';
import '../modules/play_details/views/play_details_view.dart';
import '../modules/play_list/bindings/play_list_binding.dart';
import '../modules/play_list/views/play_list_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.PLAY_LIST;

  static final routes = [
    GetPage(
      name: _Paths.PLAY_LIST,
      page: () => const PlayListView(),
      binding: PlayListBinding(),
    ),
    GetPage(
      name: _Paths.PLAY_DETAILS,
      page: () => const PlayDetailsView(),
      binding: PlayDetailsBinding(),
    ),
  ];
}
