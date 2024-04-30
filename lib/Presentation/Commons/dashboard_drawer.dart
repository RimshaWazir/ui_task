import 'package:flutter_svg/svg.dart';
import 'package:ui_task/Data/DataSource/Resources/imports.dart';
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
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(
                        width: 3,
                        color: value == index
                            ? const Color(0xff4318FF)
                            : Colors.transparent,
                      ),
                    ),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      dashboardDrawerController.index.value = index;
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2,
                          child: SvgPicture.asset(
                            dashboardDrawerController.drawerData[index].icon,
                            height: context.screenHeight * 0.04,
                            width: context.screenWidth * 0.04,
                            color: value == index
                                ? const Color(0xff4318FF)
                                : const Color(0xffA3AED0),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: AppText(
                            dashboardDrawerController.drawerData[index].title,
                            style: StylesText.largeText.copyWith(
                              fontSize: 16,
                              color: value == index
                                  ? const Color(0xff2B3674)
                                  : const Color(0xffA3AED0),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
