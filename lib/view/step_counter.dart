import 'package:counter/controller/count_controller.dart';
import 'package:counter/function/content_padding.dart';
import 'package:counter/view/widgets/confetti.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StepCounter extends StatelessWidget {
  const StepCounter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetX<StepController>(builder: (controller) {
      return CelebrationWidget(
          childWidget: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.only(
              top: 50,
              left: 20,
              right: 20,
            ),
            decoration: const BoxDecoration(
              color: Color.fromRGBO(57, 255, 20, 1),
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: Center(
              child: Text(
                returnPaddedString(controller.count.value),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () async {
                    controller.resetCounter();
                    buildDialog(context);
                  },
                  child: const Text(
                    "Reset",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ));
    });
  }

  Future<void> buildDialog(BuildContext context) {
    TextEditingController textController = TextEditingController();
    return showDialog(
      context: context,
      builder: (builder) {
        return Theme(
          data: Theme.of(context).copyWith(
            dialogBackgroundColor: Colors.black,
          ),
          child: GetX<StepController>(builder: (controller) {
            return AlertDialog(
              actions: [
                TextButton(
                  onPressed: () {
                    controller.taskTitle.value = textController.text;
                    Navigator.pop(context);
                    print("popped");
                  },
                  child: const Text(
                    "Done",
                    style: TextStyle(color: Colors.green),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Cancel",
                    style: TextStyle(color: Colors.red),
                  ),
                )
              ],
              title: Text(
                controller.title.toString(),
                style: const TextStyle(color: Colors.white),
              ),
              content: TextField(
                controller: textController,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
            );
          }),
        );
      },
    );
  }
}
