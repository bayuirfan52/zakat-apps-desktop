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
            selectedIndex: controller.selectedIndex.value,
            items: const [
              SideNavigationBarItem(
                icon: Icons.dashboard_rounded,
                label: 'Dashboard',
              ),
              SideNavigationBarItem(
                icon: Icons.info_outline,
                label: 'Info',
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
