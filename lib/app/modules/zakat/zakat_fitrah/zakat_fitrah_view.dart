import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:zakat_apps/app/theme/color.dart';
import 'package:zakat_apps/app/utils/currency_formatter.dart';
import 'package:zakat_apps/app/utils/widgets/ex_button_default.dart';
import 'package:zakat_apps/app/utils/widgets/ex_textfield_icon.dart';

import 'zakat_fitrah_controller.dart';

class ZakatFitrahView extends GetView<ZakatFitrahController> {
  const ZakatFitrahView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Zakat Fitrah',
          style: GoogleFonts.openSans(
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      body: Form(
        key: controller.formKey,
        child: VStack([
          Text(
            'Penerimaan Zakat Fitrah',
            style: GoogleFonts.openSans(
              fontSize: 18,
              color: colorText,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Silakan masukan orang yang akan menunaikan zakat',
            style: GoogleFonts.openSans(
              fontSize: 14,
              color: colorText,
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(height: 24),
          ExTextFieldIcon(
            labelText: 'Nama Pembayar Zakat',
            hint: 'Tulis nama pembayar zakat',
            prefixIcon: Icons.person_2_rounded,
            tfController: controller.nameController,
            textInputType: TextInputType.name,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Nama wajib diisi';
              }
              return null;
            },
          ),
          SizedBox(height: 16),
          ExTextFieldIcon(
            labelText: 'Alamat',
            hint: 'Alamat pembayar zakat',
            textInputType: TextInputType.streetAddress,
            tfController: controller.addressController,
            prefixIcon: Icons.location_city_rounded,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Alamat wajib diisi';
              }
              return null;
            },
          ),
          SizedBox(height: 16),
          ExTextFieldIcon(
            labelText: 'Catatan',
            hint: 'Masukkan catatan',
            textInputType: TextInputType.text,
            tfController: controller.notesController,
            prefixIcon: Icons.notes,
          ),
          SizedBox(height: 16),
          ExTextFieldIcon(
            labelText: 'Nominal zakat fitrah per-orang',
            tfController: controller.basePriceController,
            textInputType: TextInputType.text,
            prefixIcon: Icons.location_city_rounded,
            enabled: false,
          ),
          SizedBox(height: 24),
          HStack(
            [
              HStack(
                [
                  Text(
                    'Total Pembayaran:',
                    style: GoogleFonts.openSans(
                      fontSize: 16,
                      color: colorText,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(width: 24),
                  Obx(
                    () => Text(
                      '${rupiah(controller.price.value)}',
                      style: GoogleFonts.openSans(
                        fontSize: 24,
                        color: colorText,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
              VStack(
                [
                  Text(
                    'Jumlah orang',
                    style: GoogleFonts.openSans(
                      fontSize: 14,
                      color: colorText,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(height: 16),
                  HStack(
                    [
                      SizedBox(
                        width: 48,
                        height: 48,
                        child: FloatingActionButton(
                          onPressed: () {
                            controller.add();
                          },
                          heroTag: 'add',
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(width: 48),
                      Obx(
                        () => Text(
                          '${controller.personCount.value}',
                          style: GoogleFonts.openSans(
                            fontSize: 36,
                            color: colorText,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(width: 48),
                      SizedBox(
                        width: 48,
                        height: 48,
                        child: FloatingActionButton(
                          onPressed: () {
                            controller.minus();
                          },
                          heroTag: 'minus',
                          child: Icon(
                            Icons.remove,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                    alignment: MainAxisAlignment.spaceEvenly,
                  ),
                ],
                crossAlignment: CrossAxisAlignment.center,
              ),
            ],
            crossAlignment: CrossAxisAlignment.start,
          ),
          Spacer(),
          ExButtonDefault(
            onPressed: () => controller.checkingData(alertConfirmation),
            label: 'Bayar Zakat',
          ).wFull(context),
        ]).p24(),
      ),
    );
  }

  void alertConfirmation() {
    Get.dialog<dynamic>(
      AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
        insetPadding: EdgeInsets.symmetric(horizontal: 120),
        title: Text(
          'Perhatian',
          textAlign: TextAlign.center,
          style: GoogleFonts.openSans(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        icon: Icon(
          Icons.warning_rounded,
          size: 48,
          color: Colors.yellow.shade700,
        ),
        content: Text(
          'Apakah data yang anda masukkan sudah benar?',
          style: GoogleFonts.openSans(
            fontSize: 14,
            fontWeight: FontWeight.w300,
          ),
        ),
        actions: [
          MaterialButton(
            color: colorPrimary,
            onPressed: () {
              controller.submit();
            },
            child: Text(
              'Ya',
              style: GoogleFonts.openSans(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {
              Get.back<dynamic>();
            },
            child: Text(
              'Tidak',
              style: GoogleFonts.openSans(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: colorText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
