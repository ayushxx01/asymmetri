import 'package:asymmetri/widgets/animated.dart';
import 'package:asymmetri/widgets/color_drop_down.dart';
import 'package:asymmetri/widgets/items.dart';
import 'package:asymmetri/widgets/logo.dart';
import 'package:asymmetri/widgets/reverse.dart';
import 'package:asymmetri/widgets/slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            const Logo(),
            ColorDropDown(),
            SliderControl(),
            ReverseToggle(),
            ItemControls(),
            AnimatedItems(),
          ],
        ),
      ),
    );
  }
}
