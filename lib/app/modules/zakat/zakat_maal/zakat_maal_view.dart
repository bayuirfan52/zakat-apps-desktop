import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'zakat_maal_controller.dart';

class ZakatMaalView extends GetView<ZakatMaalController> {
  const ZakatMaalView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Zakat Maal',
          style: GoogleFonts.openSans(
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      body: const Center(
        child: Text(
          'Upcoming Features..',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
