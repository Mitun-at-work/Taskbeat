import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import '../controller/count_controller.dart';

class BuildFloat extends StatelessWidget {
  const BuildFloat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetX<StepController>(
      builder: (controller) {
        return GestureDetector(
          onTap: () async {
            controller.isGlow.value = 1;
            controller.count.value += 1;
            await Future.delayed(const Duration(milliseconds: 200));
            controller.isGlow.value = 0;
          },
          child: Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
            height: 80,
            width: 160,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(57, 255, 20, 1),
              borderRadius: const BorderRadius.all(
                Radius.elliptical(
                  120,
                  120,
                ),
              ),
              boxShadow: controller.isGlow.value == 1
                  ? [
                      const BoxShadow(
                        spreadRadius: 10,
                        color: Colors.white,
                        offset: Offset(0, 0),
                      ),
                    ]
                  : null,
            ),
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromRGBO(57, 255, 20, 1),
              ),
              child: Text(
                controller.count.toString(),
                style: const TextStyle(color: Color.fromRGBO(57, 255, 20, 1)),
              ),
            ),
          ),
        );
      },
    );
  }
}
