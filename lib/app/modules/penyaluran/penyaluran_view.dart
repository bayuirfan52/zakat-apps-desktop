import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'penyaluran_controller.dart';

class PenyaluranView extends GetView<PenyaluranController> {
  const PenyaluranView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text(
          'Upcoming Features..',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
