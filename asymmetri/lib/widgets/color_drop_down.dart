import 'package:asymmetri/controllers/getx.dart';
import 'package:asymmetri/data/data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ColorDropDown extends StatelessWidget {
  final MyController controller = Get.find();
  ColorDropDown({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => DropdownButton<String>(
        value: controller.selectedColor.value,
        items:
            MyData.colors.map((color) {
              return DropdownMenuItem(value: color, child: Text(color));
            }).toList(),
        onChanged: (value) => controller.updateColor(value!),
      ),
    );
  }
}
