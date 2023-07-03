import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'zakat_maal_controller.dart';

class ZakatMaalView extends GetView<ZakatMaalController> {
  const ZakatMaalView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ZakatMaalView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ZakatMaalView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
