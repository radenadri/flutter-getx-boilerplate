import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/common/util/exports.dart';
import 'package:flutter_getx_template/app/modules/home/controllers/home_controller.dart';
import 'package:flutter_getx_template/app/routes/app_pages.dart';
import 'package:get/get.dart';

class Counter extends StatelessWidget {
  const Counter({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.appName),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text("${controller.count}")),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                logger.d('Get users button pressed');
                if (controller.users.isEmpty) {
                  // Get the list of users
                  controller.users.value = controller.getUsers();
                } else {
                  // Clear the list
                  controller.users.value = [];
                }
              },
              child: Obx(() =>
                  Text(controller.users.isEmpty ? "Get Users" : "Clear Users")),
            ),
            const SizedBox(height: 20),
            Obx(
              () => controller.users.isEmpty
                  ? const Text("No users")
                  : Column(
                      children: controller.users
                          .map<Widget>((user) =>
                              Text('${user.firstName} ${user.lastName}'))
                          .toList(),
                    ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                logger.d('Get posts button pressed');

                // Get navigate to the tutorial page
                Get.toNamed(Routes.TUTORIAL);
              },
              child: Text("Open Tutorial Page"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: controller.increment,
      ),
    );
  }
}
