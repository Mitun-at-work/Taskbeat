import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/count_controller.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(top: 50),
      child: GetX<StepController>(builder: (controller) {
        return Text(
          controller.taskTitle.toString(),
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        );
      }),
    );
  }
}
