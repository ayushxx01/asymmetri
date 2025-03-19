// lib/widgets/reverse_toggle.dart
import 'package:asymmetri/controllers/getx.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReverseToggle extends StatelessWidget {
  final MyController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Switch(
        value: controller.isReversed.value,
        onChanged: (value) => controller.changeReverse(value),
      ),
    );
  }
}
