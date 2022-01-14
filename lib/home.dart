import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class MyHomePage extends GetView<Controller> {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade500,
        title: const Text('Contador Premium'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => Text(
              controller.isFull ? 'Lotado!' : 'Pode entrar',
              style: controller.isFull
                  ? const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.red)
                  : const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          Obx(
            () => Text(
              '${controller.count.value}',
              style: const TextStyle(fontSize: 200),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => FloatingActionButton(
                  elevation: 1,
                  backgroundColor: controller.isEmpty
                      ? Colors.teal.shade400.withOpacity(.1)
                      : Colors.teal.shade400,
                  child: const Icon(Icons.remove),
                  onPressed: controller.isEmpty ? null : controller.decrement,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Obx(
                () => FloatingActionButton(
                  elevation: 1,
                  hoverElevation: controller.isFull ? 1 : 6,
                  backgroundColor: controller.isFull
                      ? Colors.teal.shade400.withOpacity(.1)
                      : Colors.teal.shade400,
                  child: const Icon(Icons.add),
                  onPressed: controller.snackIncrement,
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal.shade400,
        child: const Icon(Icons.lightbulb),
        onPressed: () {
          Get.changeTheme(
            Get.isDarkMode ? ThemeData.light() : ThemeData.dark(),
          );
        },
      ),
    );
  }
}
