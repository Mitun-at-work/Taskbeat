import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class CelebrationWidget extends StatefulWidget {
  const CelebrationWidget({
    super.key,
    required this.childWidget,
  });

  final Widget childWidget;

  @override
  State<CelebrationWidget> createState() => _CelebrationWidgetState();
}

class _CelebrationWidgetState extends State<CelebrationWidget> {
  ConfettiController controller =
      ConfettiController(duration: const Duration(microseconds: 10));

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (controller.state == ConfettiControllerState.playing) {
      controller.stop();
      controller.removeListener(() {});
    }
    controller.play();

    return Align(
      alignment: Alignment.topRight,
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(
              left: 80,
            ),
            child: Row(
              children: [
                ConfettiWidget(
                  blastDirectionality: BlastDirectionality.explosive,
                  confettiController: controller,
                  particleDrag: 0.1,
                  emissionFrequency: 1,
                  numberOfParticles: 40,
                  blastDirection: pi * 10,
                  maxBlastForce: 120,
                  gravity: 1,
                  colors: const [
                    Colors.green,
                    Colors.blue,
                    Colors.red,
                    Colors.white,
                    Colors.amber,
                    Colors.purple,
                  ],
                ),
                ConfettiWidget(
                  blastDirectionality: BlastDirectionality.explosive,
                  confettiController: controller,
                  particleDrag: 0.1,
                  emissionFrequency: 1,
                  numberOfParticles: 40,
                  blastDirection: pi * 10,
                  maxBlastForce: 120,
                  gravity: 1,
                  colors: const [
                    Colors.green,
                    Colors.blue,
                    Colors.red,
                    Colors.white,
                    Colors.amber,
                    Colors.purple,
                  ],
                ),
              ],
            ),
          ),
          widget.childWidget,
        ],
      ),
    );
  }
}
