import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/tutorial_controller.dart';

class TutorialView extends GetView<TutorialController> {
  const TutorialView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TutorialView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'TutorialView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
