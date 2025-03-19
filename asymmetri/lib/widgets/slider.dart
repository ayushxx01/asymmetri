// lib/widgets/slider_control.dart
import 'package:asymmetri/controllers/getx.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SliderControl extends StatelessWidget {
  final MyController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Slider(
        value: controller.speed.value,
        min: 0.1,
        max: 2.0,
        divisions: 2,
        onChanged: (value) => controller.changeSpeed(value),
      ),
    );
  }
}
