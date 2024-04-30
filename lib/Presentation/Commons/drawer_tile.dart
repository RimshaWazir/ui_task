import 'package:flutter_svg/svg.dart';
import 'package:ui_task/Data/DataSource/Resources/imports.dart';
import 'package:ui_task/Presentation/Widgets/ResponsiveLayout/Home/Controllers/drawer_controller.dart';

class DrawerTile extends StatelessWidget {
  const DrawerTile({
    super.key,
    required this.index,
    required this.value,
    required this.dashboardDrawerController,
  });
  final int value;
  final int index;
  final DashboardDrawerController dashboardDrawerController;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(
            width: 3,
            color:
                value == index ? const Color(0xff4318FF) : Colors.transparent,
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
    );
  }
}
