import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:qtec_player/app/modules/play_details/views/components/player_deatils.dart';
import 'package:video_player/video_player.dart';

import '../controllers/play_details_controller.dart';
import 'components/controlls_overlay.dart';
import 'components/player_box.dart';

class PlayDetailsView extends GetView<PlayDetailsController> {
  const PlayDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PlayerBox(),
              PlayerDetails()
            ],
          ),
        )
      )
    );
  }
}



