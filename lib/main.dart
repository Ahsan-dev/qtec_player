import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'app/routes/app_pages.dart';
import 'core/app_theme.dart';

void main() {
  initAppWithDependencies();
}
void initAppWithDependencies() async{
  runApp(
    GetMaterialApp(
      theme: AppTheme(),
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: getInitialRoute(),
      getPages: AppPages.routes,
    ),
  );
}

String getInitialRoute() {
  return Routes.PLAY_LIST;
}

