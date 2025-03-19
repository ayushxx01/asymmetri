import 'package:asymmetri/controllers/getx.dart';
import 'package:asymmetri/data/data.dart';
import 'package:asymmetri/data/function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimatedItems extends StatefulWidget {
  @override
  _AnimatedItemsState createState() => _AnimatedItemsState();
}

class _AnimatedItemsState extends State<AnimatedItems>
    with SingleTickerProviderStateMixin {
  final MyController controller = Get.find();
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _setupAnimation();
  }

  void _setupAnimation() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: (1000 ~/ controller.speed.value).toInt(),
      ),
    )..repeat(reverse: false);

    _animation = Tween<double>(
      begin: 0,
      end: 100,
    ).animate(_animationController);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      _animationController.duration = Duration(
        milliseconds: (1000 ~/ controller.speed.value).toInt(),
      );
      _animationController.repeat(reverse: false);

      int rows = MyFunction.calculateLines(
        controller.totalItems.value,
        controller.itemsPerLine.value,
      );

      return Column(
        children: List.generate(rows, (rowIndex) {
          return AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return Transform.translate(
                offset: Offset(
                  controller.isReversed.value
                      ? -_animation.value
                      : _animation.value,
                  0,
                ),
                child: Row(
                  children: List.generate(controller.itemsPerLine.value, (
                    index,
                  ) {
                    return Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors:
                              MyData.gradients[controller.selectedColor.value]!,
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                      ),
                      width: 90,
                      height: 20,
                      margin: EdgeInsets.all(4),
                    );
                  }),
                ),
              );
            },
          );
        }),
      );
    });
  }
}
