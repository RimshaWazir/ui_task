import 'package:flutter_svg/svg.dart';
import 'package:ui_task/Data/DataSource/Resources/imports.dart';
import 'package:ui_task/Presentation/Commons/drawer_tile.dart';
import 'package:ui_task/Presentation/Widgets/ResponsiveLayout/Home/Controllers/drawer_controller.dart';
import 'package:collection/collection.dart';

class DashboardDrawer extends StatelessWidget {
  final bool isDrawerOpen;

  const DashboardDrawer({
    super.key,
    required this.isDrawerOpen,
    required this.dashboardDrawerController,
  });

  final DashboardDrawerController dashboardDrawerController;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: dashboardDrawerController.index,
      builder: (context, value, child) => AnimatedContainer(
        duration: const Duration(milliseconds: 1000),
        child: Drawer(
          width: isDrawerOpen ? 250 : 50,
          shape: const RoundedRectangleBorder(),
          backgroundColor: Colors.white,
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                child: Image.asset(
                  ImageAssets.imItecExpertLogo,
                  fit: BoxFit.contain,
                ),
              ),
              const Divider(thickness: 0.5),
              SizedBox(height: context.screenHeight * 0.05),
              for (int index = 0;
                  index < dashboardDrawerController.drawerData.length;
                  index++)
                DrawerTile(
                    value: value,
                    index: index,
                    dashboardDrawerController: dashboardDrawerController),
            ],
          ),
        ),
      ),
    );
  }
}
