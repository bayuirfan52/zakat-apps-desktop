import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'penerima_controller.dart';

class PenerimaView extends GetView<PenerimaController> {
  const PenerimaView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text(
          'PenerimaView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
