import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimationsPage extends StatelessWidget {
  const AnimationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: AnimatedSquare(),
      ),
    );
  }
}

class AnimatedSquare extends StatefulWidget {
  const AnimatedSquare({
    super.key,
  });

  @override
  State<AnimatedSquare> createState() => _AnimatedSquareState();
}

class _AnimatedSquareState extends State<AnimatedSquare>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  late Animation<double> rotation;

  late Animation<double> opacity;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 4000),
    );

    rotation = Tween(begin: 0.0, end: 4 * math.pi).animate(
      CurvedAnimation(
        parent: controller,
        curve: Curves.easeInOutCirc,
      ),
    );

    opacity = Tween(begin: 0.1, end: 1.0).animate(controller);

    controller.addListener(() {
      if (controller.status == AnimationStatus.completed) {
        controller.reverse();
      }
      // else if (controller.status == AnimationStatus.dismissed) {
      //   controller.forward();
      // }
    });

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // PLAY
    controller.forward();

    return AnimatedBuilder(
      animation: controller,
      child: _Rectangle(),
      builder: (BuildContext context, Widget? childRectangulo) {
        return Transform.rotate(
          angle: rotation.value,
          child: Opacity(
            opacity: opacity.value,
            child: childRectangulo,
          ),
        );
      },
    );
  }
}

class _Rectangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: const BoxDecoration(color: Colors.blue),
    );
  }
}
