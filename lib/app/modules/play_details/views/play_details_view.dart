import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/play_details_controller.dart';

class PlayDetailsView extends GetView<PlayDetailsController> {
  const PlayDetailsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PlayDetailsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'PlayDetailsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
