import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ticket_widget/ticket_widget.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:zakat_apps/app/helpers/preference_helper.dart';
import 'package:zakat_apps/app/theme/color.dart';
import 'package:zakat_apps/app/utils/currency_formatter.dart';
import 'package:zakat_apps/app/utils/widgets/ex_button_default.dart';

import 'receipt_controller.dart';

class ReceiptView extends GetView<ReceiptController> {
  const ReceiptView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPrimary,
      appBar: AppBar(
        elevation: 0,
        title: const Text('Tanda Terima Zakat Fitrah'),
        centerTitle: true,
      ),
      body: TicketWidget(
        width: 500,
        height: 500,
        isCornerRounded: true,
        padding: EdgeInsets.all(48),
        child: VStack([
          Text(
            'Panitia Zakat ${PreferenceHelper.currentNameInstitution()}',
            style: GoogleFonts.roboto(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ).centered(),
          SizedBox(height: 8),
          Text(
            '${PreferenceHelper.currentAddressInstitution()}',
            style: GoogleFonts.roboto(
              fontSize: 14,
              fontWeight: FontWeight.normal,
            ),
          ).centered(),
          SizedBox(height: 36),
          HStack([
            Text(
              'Nama',
              style: GoogleFonts.roboto(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            Spacer(),
            Text(
              '${controller.data.value.name}',
              style: GoogleFonts.roboto(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ]),
          SizedBox(height: 16),
          LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              final boxWidth = constraints.constrainWidth();
              const dashWidth = 10.0;
              const dashHeight = 1.0;
              final dashCount = (boxWidth / (2 * dashWidth)).floor();
              return Flex(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                direction: Axis.horizontal,
                children: List.generate(dashCount, (_) {
                  return SizedBox(
                    width: dashWidth,
                    height: dashHeight,
                    child: DecoratedBox(
                      decoration: BoxDecoration(color: colorGrey),
                    ),
                  );
                }),
              );
            },
          ),
          SizedBox(height: 16),
          HStack([
            Text(
              'Alamat',
              style: GoogleFonts.roboto(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            Spacer(),
            Text(
              '${controller.data.value.address}',
              style: GoogleFonts.roboto(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ]),
          Spacer(),
          HStack([
            Text(
              'Jumlah Orang',
              style: GoogleFonts.roboto(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            Spacer(),
            Text(
              '${controller.data.value.count}',
              style: GoogleFonts.roboto(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ]),
          SizedBox(height: 16),
          LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              final boxWidth = constraints.constrainWidth();
              const dashWidth = 10.0;
              const dashHeight = 1.0;
              final dashCount = (boxWidth / (2 * dashWidth)).floor();
              return Flex(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                direction: Axis.horizontal,
                children: List.generate(dashCount, (_) {
                  return SizedBox(
                    width: dashWidth,
                    height: dashHeight,
                    child: DecoratedBox(
                      decoration: BoxDecoration(color: colorGrey),
                    ),
                  );
                }),
              );
            },
          ),
          SizedBox(height: 16),
          HStack([
            Text(
              'Total Pembayaran',
              style: GoogleFonts.roboto(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            Spacer(),
            Text(
              '${rupiah(controller.data.value.price ?? 0)}',
              style: GoogleFonts.roboto(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ]),
          SizedBox(height: 24),
          ExButtonDefault(
            onPressed: () {},
            label: 'Cetak',
          ).wFull(context)
        ]),
      ).centered().p24(),
    );
  }
}
