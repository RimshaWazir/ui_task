import 'package:ui_task/Data/DataSource/Resources/imports.dart';
import 'package:ui_task/Presentation/Commons/appbar_title.dart';
import 'package:ui_task/Presentation/Commons/dashboard_drawer.dart';

import 'Controllers/drawer_controller.dart';

class Home extends StatefulWidget {
  String device;
  Home({
    super.key,
    required this.device,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isDrawerOpen = true;

  void toggleDrawer() {
    setState(() {
      isDrawerOpen = !isDrawerOpen;
    });
  }

  @override
  void initState() {
    context.read<ItemBloc>().getItems();
    context.read<DrawerItemBloc>().toggleDrawer();
    super.initState();
  }

  DashboardDrawerController dashboardDrawerController =
      DashboardDrawerController();
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      key: _globalKey,
      body: Row(
        children: [
          DashboardDrawer(
            dashboardDrawerController: dashboardDrawerController,
            isDrawerOpen: isDrawerOpen,
          ),
          Expanded(
            child: Container(
              color: const Color(0xffF4F7FE),
              width: width,
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BlocListener<DrawerItemBloc, DrawerItemState>(
                              listener: (context, state) {
                                if (state is DrawerLoadedItemState) {
                                  setState(() {
                                    isDrawerOpen = state.isDrawerOpen;
                                  });
                                }
                              },
                              child: IconButton(
                                icon: const Icon(Icons.menu),
                                onPressed: () => context
                                    .read<DrawerItemBloc>()
                                    .toggleDrawer(),
                              ),
                            ),
                            SizedBox(
                              width: width * 0.01,
                            ),
                            const AppbarTitle(),
                            const Spacer(),
                            const CustomTextField(),
                          ],
                        ),
                        const UpperGrids(),
                        Row(
                          children: [
                            Container(
                              width: context.screenWidth * 4,
                              height: context.screenHeight * 3,
                              decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                children: [
                                  Container(
                                    height: 30,
                                    width: 60,
                                    decoration:
                                        const BoxDecoration(color: Colors.grey),
                                  ),
                                  AppText(AppStrings.price1,
                                      style: StylesText.largeText
                                          .copyWith(fontSize: 24))
                                ],
                              ),
                            ),
                            Container(
                              width: context.screenWidth * 4,
                              height: context.screenHeight * 3,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.calendar_today_outlined,
                                  ),
                                  AppText(
                                    AppStrings.spendMonth,
                                    style: StylesText.mediumText
                                        .copyWith(fontSize: 14),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      ]),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
