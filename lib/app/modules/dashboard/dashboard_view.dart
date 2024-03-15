import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:zakat_apps/app/helpers/preference_helper.dart';
import 'package:zakat_apps/app/theme/color.dart';

import 'dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VStack([
        Card(
          elevation: 0,
          color: colorPrimary.withAlpha(20),
          child: VStack([
            Text(
              "Assalamu'alaikum",
              style: GoogleFonts.openSans(
                fontSize: 18,
                color: colorPrimary,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Hai ${PreferenceHelper.currentNameResponsible() ?? 'New User'}, selamat datang di aplikasi zakat. Berikut adalah data yang telah didapatkan untuk tahun ini.',
              style: GoogleFonts.openSans(
                fontSize: 14,
                color: colorPrimary,
              ),
            ),
          ]).p24(),
        ).wFull(context),
        SizedBox(height: 16),
        HStack([
          Card(
            elevation: 0,
            color: Colors.redAccent.shade200,
            child: HStack([
              Icon(
                Icons.recent_actors_rounded,
                color: Colors.white,
                size: 48,
              ),
              SizedBox(width: 24),
              VStack([
                Text(
                  'Total Zakat Fitrah',
                  style: GoogleFonts.openSans(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Obx(
                  () => Text(
                    '${controller.dataFitr.length}',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.openSans(
                      fontSize: 48,
                      color: Colors.white,
                    ),
                  ),
                ),
              ]).expand(),
            ]).p24(),
          ).expand(),
          SizedBox(width: 16),
          Card(
            elevation: 0,
            color: Colors.green.shade200,
            child: HStack([
              Icon(
                Icons.monetization_on_rounded,
                color: Colors.white,
                size: 48,
              ),
              SizedBox(width: 24),
              VStack([
                Text(
                  'Total Zakat Maal',
                  style: GoogleFonts.openSans(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Upcoming Features',
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.openSans(
                    fontSize: 48,
                    color: Colors.white,
                  ),
                ),
              ]).expand(),
            ]).p24(),
          ).expand(),
        ]),
        SizedBox(height: 16),
        HStack([
          Card(
            elevation: 0,
            color: Colors.orangeAccent.shade200,
            child: HStack([
              Icon(
                Icons.people_rounded,
                color: Colors.white,
                size: 48,
              ),
              SizedBox(width: 24),
              VStack([
                Text(
                  'Daftar Penerima',
                  style: GoogleFonts.openSans(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Upcoming Features',
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.openSans(
                    fontSize: 48,
                    color: Colors.white,
                  ),
                ),
              ]).expand(),
            ]).p24(),
          ).expand(),
          SizedBox(width: 16),
          Card(
            elevation: 0,
            color: Colors.blueGrey.shade200,
            child: HStack([
              Icon(
                Icons.share_location_rounded,
                color: Colors.white,
                size: 48,
              ),
              SizedBox(width: 24),
              VStack(
                [
                  Text(
                    'Penyaluran',
                    style: GoogleFonts.openSans(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'Upcoming Features',
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.openSans(
                      fontSize: 48,
                      color: Colors.white,
                    ),
                  ),
                ],
              ).expand(),
            ]).p24(),
          ).expand(),
        ]),
      ]).p24(),
    );
  }
}
