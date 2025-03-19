// lib/data/my_data.dart
import 'package:flutter/material.dart';

class MyData {
  static List<String> colors = ["Green", "Blue", "Red"];
  static Map<String, List<Color>> gradients = {
    "Green": [Colors.green.shade300, Colors.green.shade900],
    "Blue": [Colors.blue.shade300, Colors.blue.shade900],
    "Red": [Colors.red.shade300, Colors.red.shade900],
  };

  static int defaultTotalItems = 1;
  static int defaultItemsPerLine = 1;
  static double defaultSpeed = 1.0;
}
