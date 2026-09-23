import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:vedaxi/tree_plant/tree_controller.dart';

class TreeScreen extends StatelessWidget {
  TreeScreen({super.key});

  TreeController controller = Get.put(TreeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => controller.isLoading.value
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: controller.treeData.length,
                itemBuilder: (context, index) {
                  return;
                },
              ),
      ),
    );
  }
}
