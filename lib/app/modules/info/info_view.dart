import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:zakat_apps/app/resources/color.dart';

import 'info_controller.dart';

class InfoView extends GetView<InfoController> {
  const InfoView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VStack([
        HStack([
          Image.asset(
            'assets/icons/icon.png',
            width: 64,
            height: 64,
          ),
          SizedBox(width: 16),
          VStack([
            Text(
              'Zakat Apps',
              style: GoogleFonts.openSans(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4),
            Text(
              'Placeholder Takmir',
              style: GoogleFonts.openSans(
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
            ),
          ]),
        ]),
        SizedBox(height: 48),
        HStack([
          Text(
            'Creator',
            style: GoogleFonts.openSans(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            'Muhammad Bayu Irfan Pratama',
            style: GoogleFonts.openSans(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.end,
          ).expand(),
        ]),
        SizedBox(height: 12),
        HStack([
          Text(
            'Contact',
            style: GoogleFonts.openSans(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          Html(
            data: '<a href="https://www.linkedin.com/in/muhammad-bayu-irfan-pratama/">LinkedIn</a>',
            style: {
              'body': Style(
                fontSize: FontSize(14.0),
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.openSans().fontFamily,
                textAlign: TextAlign.end,
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
              ),
            },
            onLinkTap: (url, ctx, _, __) async {
              await launchUrlString(url!);
            },
          ).expand(),
        ]),
        Spacer(),
        Html(
          data: '<a href="https://www.flaticon.com/free-icons/zakat" title="zakat icons">Zakat icons created by cah nggunung - Flaticon</a>',
          onLinkTap: (url, ctx, _, __) async {
            await launchUrlString(url!);
          },
        ),
      ]).p24(),
    );
  }
}
