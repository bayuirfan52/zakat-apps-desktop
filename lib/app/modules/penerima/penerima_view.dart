import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:zakat_apps/app/theme/color.dart';
import 'package:zakat_apps/app/utils/currency_formatter.dart';

import 'penerima_controller.dart';

class PenerimaView extends GetView<PenerimaController> {
  const PenerimaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VStack([
        Card(
          elevation: 0,
          color: Colors.blue.shade100.withAlpha(80),
          child: VStack([
            Text(
              'Data Muzaki',
              style: GoogleFonts.openSans(
                fontSize: 18,
                color: Colors.blue.shade700,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Daftar orang-orang yang telah membayar zakat',
              style: GoogleFonts.openSans(
                fontSize: 14,
                color: Colors.blue.shade500,
              ),
            ),
          ]).p24(),
        ).wFull(context),
        SizedBox(height: 24),
        Obx(
          () => Visibility(
            visible: controller.dataFitr.isNotEmpty,
            replacement: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.file_copy,
                    size: 48,
                    color: Colors.grey,
                  ),
                  24.heightBox,
                  Text(
                    'Data tidak ditemukan',
                    style: GoogleFonts.roboto(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            child: ListView.builder(
              itemBuilder: (context, index) {
                final data = controller.dataFitr[index];
                return ListTile(
                  contentPadding: EdgeInsets.all(8),
                  leading: Icon(
                    Icons.person,
                    color: colorPrimary,
                    size: 48,
                  ),
                  title: HStack([
                    Text(
                      data.name ?? '',
                      style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer(),
                    Text(
                      data.address ?? '',
                      style: GoogleFonts.roboto(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ]),
                  subtitle: HStack([
                    Text(
                      'Jumlah orang: ${data.count}',
                      style: GoogleFonts.roboto(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Spacer(),
                    Text(
                      rupiah(data.price ?? 0),
                      style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: colorText,
                      ),
                    ),
                  ]),
                );
              },
              itemCount: controller.dataFitr.length,
            ).expand(),
          ),
        ),
      ]).p24(),
    );
  }
}
