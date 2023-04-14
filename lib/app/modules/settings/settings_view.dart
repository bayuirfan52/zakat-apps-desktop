import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:zakat_apps/app/utils/widgets/ex_textfield_multiline.dart';
import 'package:zakat_apps/app/utils/widgets/ex_textfield_normal.dart';

import 'settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VStack([
        Text(
          'Data Lembaga/Masjid dan Penanggung Jawab',
          style: GoogleFonts.openSans(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16),
        HStack(
          [
            VStack([
              ListTile(
                title: Text(
                  'Nama Lembaga/Masjid',
                  style: GoogleFonts.openSans(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: ExTextFieldNormal(
                  tfController: controller.nameController,
                  textInputType: TextInputType.name,
                ).pSymmetric(v: 12),
                contentPadding: EdgeInsets.symmetric(vertical: 8),
              ),
              ListTile(
                title: Text(
                  'Alamat Lembaga/Masjid',
                  style: GoogleFonts.openSans(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: ExTextFieldMultiline(
                  tfController: controller.addressController,
                ).pSymmetric(v: 12),
                contentPadding: EdgeInsets.symmetric(vertical: 8),
              ),
            ]).expand(),
            SizedBox(width: 24),
            VStack([
              ListTile(
                title: Text(
                  'Nama Penanggung Jawab',
                  style: GoogleFonts.openSans(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: ExTextFieldNormal(
                  tfController: controller.namePersonController,
                  textInputType: TextInputType.name,
                ).pSymmetric(v: 12),
                contentPadding: EdgeInsets.symmetric(vertical: 8),
              ),
              ListTile(
                title: Text(
                  'Jabatan',
                  style: GoogleFonts.openSans(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: ExTextFieldNormal(
                  tfController: controller.positionController,
                  textInputType: TextInputType.text,
                ).pSymmetric(v: 12),
                contentPadding: EdgeInsets.symmetric(vertical: 8),
              ),
            ]).expand(),
          ],
          crossAlignment: CrossAxisAlignment.start,
          axisSize: MainAxisSize.max,
        ),
        SizedBox(height: 16),
        Text(
          'Data Besaran Zakat Fitrah',
          style: GoogleFonts.openSans(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16),
        HStack(
          [
            ListTile(
              title: Text(
                'Berat Beras (KG)',
                style: GoogleFonts.openSans(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: ExTextFieldNormal(
                tfController: controller.weightController,
                textInputType: TextInputType.number,
              ).pSymmetric(v: 12),
              contentPadding: EdgeInsets.symmetric(vertical: 8),
            ).expand(),
            SizedBox(width: 24),
            ListTile(
              title: Text(
                'Nominal Zakat Per Orang',
                style: GoogleFonts.openSans(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: ExTextFieldNormal(
                tfController: controller.priceController,
                textInputType: TextInputType.number,
              ).pSymmetric(v: 12),
              contentPadding: EdgeInsets.symmetric(vertical: 8),
            ).expand(),
          ],
          crossAlignment: CrossAxisAlignment.start,
          axisSize: MainAxisSize.max,
        ),
        SizedBox(height: 16),
        SizedBox(height: 16),
      ]).p24().scrollVertical(physics: AlwaysScrollableScrollPhysics()),
      bottomNavigationBar: VStack([
        MaterialButton(
          onPressed: () {},
          child: Text('Simpan').p16(),
        ).wFull(context).marginSymmetric(vertical: 16, horizontal: 16)
      ]),
    );
  }
}
