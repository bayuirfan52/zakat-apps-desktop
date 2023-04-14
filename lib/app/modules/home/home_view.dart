import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:side_navigation/side_navigation.dart';
import 'package:velocity_x/velocity_x.dart';

import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HStack([
        Obx(
          () => SideNavigationBar(
            theme: SideNavigationBarTheme(
              backgroundColor: Colors.grey.shade50,
              itemTheme: SideNavigationBarItemTheme(
                selectedItemColor: Colors.blue.shade500,
                unselectedItemColor: Colors.grey.shade700,
              ),
              togglerTheme: SideNavigationBarTogglerTheme(
                expandIconColor: Colors.blue.shade500,
                shrinkIconColor: Colors.blue.shade500,
              ),
              dividerTheme: SideNavigationBarDividerTheme(
                showHeaderDivider: true,
                showMainDivider: true,
                showFooterDivider: true,
              ),
            ),
            header: SideNavigationBarHeader(
              image: Image.asset(
                'assets/icons/icon.png',
                height: 36,
                width: 48,
              ).paddingAll(8),
              title: Text(
                'Zakat Apps',
                style: GoogleFonts.openSans(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('Takmir'),
            ),
            footer: SideNavigationBarFooter(
              label: Text(
                'version: ${controller.version.value}',
                style: GoogleFonts.openSans(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            selectedIndex: controller.selectedIndex.value,
            items: const [
              SideNavigationBarItem(
                icon: Icons.dashboard_rounded,
                label: 'Dashboard',
              ),
              SideNavigationBarItem(
                icon: Icons.settings,
                label: 'Settings',
              ),
              SideNavigationBarItem(
                icon: Icons.info_outline,
                label: 'Apps Info',
              ),
            ],
            onTap: (index) => controller.selectedIndex.value = index,
          ),
        ),
        Expanded(
          child: Obx(
            () => controller.listView.elementAt(controller.selectedIndex.value),
          ),
        ),
      ]),
    );
  }
}
