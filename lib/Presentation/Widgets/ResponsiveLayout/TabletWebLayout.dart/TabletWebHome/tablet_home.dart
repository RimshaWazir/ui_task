import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_task/Data/DataSource/Resources/imports.dart';
import 'package:ui_task/Domain/item.dart';
import 'package:ui_task/Presentation/Commons/custom_grids.dart';
import 'package:ui_task/Presentation/Commons/custom_textfield.dart';
import 'package:ui_task/Presentation/Commons/navigation_drawer.dart';
import 'package:ui_task/Presentation/Widgets/ResponsiveLayout/TabletWebLayout.dart/TabletWebHome/bloc/item_bloc.dart';

class TabletHome extends StatefulWidget {
  const TabletHome({
    super.key,
  });

  @override
  State<TabletHome> createState() => _TabletHomeState();
}

class _TabletHomeState extends State<TabletHome> {
  bool isDrawerOpen = true;

  void toggleDrawer() {
    setState(() {
      isDrawerOpen = !isDrawerOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Row(
        children: [
          NavigationDrawerr(
            isDrawerOpen: isDrawerOpen,
          ),
          Expanded(
            child: Container(
              color: const Color(0xffF4F7FE),
              width: width,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.menu),
                              onPressed: toggleDrawer,
                            ),
                            SizedBox(
                              width: width * 0.01,
                            ),
                            RichText(
                              text: TextSpan(
                                style: StylesText.smallText,
                                children: [
                                  const TextSpan(
                                      text: '${AppStrings.pagesDashboard}\n'),
                                  TextSpan(
                                      text: AppStrings.dashboard,
                                      style: StylesText.largeText
                                          .copyWith(fontSize: 34)),
                                ],
                              ),
                            ),
                            const Spacer(),
                            const CustomTextField(),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: BlocSelector<ItemBloc, ItemState, List<Item>>(
                            selector: (state) {
                              log(state.items.toString());
                              return state.items;
                            },
                            builder: (context, items) {
                              log(items.toString());
                              if (items.isNotEmpty) {
                                return SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.11,
                                  width: MediaQuery.of(context).size.width,
                                  child: ListView.separated(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    separatorBuilder: (context, index) =>
                                        SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.01,
                                    ),
                                    itemCount: items.length,
                                    itemBuilder: (context, index) {
                                      final item = items[index];
                                      return CustomGrids(
                                        image: ImageAssets.bar,
                                        title: item.title,
                                        price: item.price,
                                        widget: null,
                                      );
                                    },
                                  ),
                                );
                              } else {
                                return const Text("No Data");
                              }
                            },
                          ),
                        ),
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
