import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'receipt_maal_controller.dart';

class ReceiptMaalView extends GetView<ReceiptMaalController> {
  const ReceiptMaalView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ReceiptMaalView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ReceiptMaalView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
