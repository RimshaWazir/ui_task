import 'package:flutter/material.dart';
import 'package:ui_task/Presentation/Widgets/ResponsiveLayout/TabletWebLayout.dart/TabletWebHome/tablet_home.dart';
import 'package:ui_task/Presentation/Widgets/ResponsiveLayout/MobileLayout/mobile_home.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth <= 600) {
            return const MobileHome();
          } else if (constraints.maxWidth < 720) {
            return const TabletHome();
          } else {
            return const TabletHome();
          }
        },
      ),
    );
  }
}
