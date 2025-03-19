import 'package:get/get.dart';

class MyController extends GetxController {
  var selectedColor = "Green".obs;
  var totalItems = 1.obs;
  var itemsPerLine = 1.obs;
  var speed = 1.0.obs;
  var isReversed = false.obs;

  void updateColor(String color) {
    selectedColor.value = color;
  }

  void changeTotalItems(int value) {
    totalItems.value = value;
  }

  void changeItemsPerLine(int value) {
    itemsPerLine.value = value;
  }

  void changeSpeed(double value) {
    speed.value = value;
  }

  void changeReverse(bool value) {
    isReversed.value = value;
  }
}
