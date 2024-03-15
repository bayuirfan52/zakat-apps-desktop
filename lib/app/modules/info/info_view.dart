import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:zakat_apps/app/helpers/preference_helper.dart';

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
              '${PreferenceHelper.currentNameInstitution()}',
              style: GoogleFonts.openSans(
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
            ),
          ]),
        ]),
        SizedBox(height: 36),
        ListTile(
          title: Text(
            'Creator',
            style: GoogleFonts.openSans(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          subtitle: Text(
            'Muhammad Bayu Irfan Pratama',
            style: GoogleFonts.openSans(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ).pSymmetric(v: 4),
        ),
        ListTile(
          title: Text(
            'Contact',
            style: GoogleFonts.openSans(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          subtitle: Html(
            data: '<a href="https://www.linkedin.com/in/muhammad-bayu-irfan-pratama/">LinkedIn</a>',
            style: {
              'body': Style(
                fontSize: FontSize(14.0),
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.openSans().fontFamily,
                margin: Margins.zero,
                padding: HtmlPaddings.zero,
              ),
            },
            onLinkTap: (url, _, __) async {
              await launchUrlString(url!);
            },
          ).pSymmetric(v: 8),
        ),
        ListTile(
          title: Text(
            'Repository of This Project',
            style: GoogleFonts.openSans(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          subtitle: Html(
            data: '<a href="https://github.com/bayuirfan52/zakat-apps-desktop">Github</a>',
            style: {
              'body': Style(
                fontSize: FontSize(14.0),
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.openSans().fontFamily,
                margin: Margins.zero,
                padding: HtmlPaddings.zero,
              ),
            },
            onLinkTap: (url, _, __) async {
              await launchUrlString(url!);
            },
          ).pSymmetric(v: 8),
        ),
        Spacer(),
        Html(
          data: '<a href="https://www.flaticon.com/free-icons/zakat" title="zakat icons">Zakat icons created by cah nggunung - Flaticon</a>',
          onLinkTap: (url, _, __) async {
            await launchUrlString(url!);
          },
        ),
      ]).p24(),
    );
  }
}
