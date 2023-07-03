import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:zakat_apps/app/modules/zakat/zakat_controller.dart';
import 'package:zakat_apps/app/routes/app_pages.dart';
import 'package:zakat_apps/app/theme/color.dart';

class ZakatView extends GetView<ZakatController> {
  const ZakatView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VStack([
        Card(
          elevation: 0,
          color: Colors.green.shade100.withAlpha(80),
          child: VStack([
            Text(
              'Saatnya bayar Zakat',
              style: GoogleFonts.openSans(
                fontSize: 18,
                color: Colors.green.shade700,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Dikenakan atas segala jenis harta secara zat yang tidak bertentangan dengan ketentuan agama. Jangan lupa zakat fitrah wajib untuk setiap muslim di bulan Ramadhan.',
              style: GoogleFonts.openSans(
                fontSize: 14,
                color: Colors.green.shade500,
              ),
            ),
          ]).p24(),
        ).wFull(context),
        SizedBox(height: 24),
        Text(
          'Fitur yang tersedia saat ini',
          style: GoogleFonts.openSans(
            fontSize: 18,
            color: colorText,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 24),
        Wrap(
          spacing: 16.0,
          children: [
            Card(
              color: colorPrimary,
              child: Container(
                padding: EdgeInsets.all(16),
                child: VStack(
                  [
                    Icon(
                      Icons.recent_actors_rounded,
                      color: Colors.white,
                      size: 36,
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Zakat Fitrah',
                      style: GoogleFonts.openSans(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    )
                  ],
                  alignment: MainAxisAlignment.center,
                  crossAlignment: CrossAxisAlignment.center,
                ),
              ).onInkTap(() {
                Get.toNamed<dynamic>(Routes.ZAKAT_FITRAH);
              }),
            ),
            Card(
              color: Colors.green.shade400,
              child: Container(
                padding: EdgeInsets.all(16),
                child: VStack(
                  [
                    Icon(
                      Icons.monetization_on_rounded,
                      color: Colors.white,
                      size: 36,
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Zakat Maal',
                      style: GoogleFonts.openSans(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    )
                  ],
                  alignment: MainAxisAlignment.center,
                  crossAlignment: CrossAxisAlignment.center,
                ),
              ).onInkTap(() {
                Get.toNamed<dynamic>(Routes.ZAKAT_MAAL);
              }),
            ),
          ],
        )
      ]).p24(),
    );
  }
}
