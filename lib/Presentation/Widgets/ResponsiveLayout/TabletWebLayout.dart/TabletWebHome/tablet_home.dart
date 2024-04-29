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

  final ItemBloc _itemBloc = ItemBloc();

  @override
  void initState() {
    super.initState();
    _itemBloc.fetchItems();
    print(_itemBloc.fetchItems.toString);
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
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
                        child: StreamBuilder<List<Item>>(
                          stream: _itemBloc.itemListStream,
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            } else if (snapshot.hasError) {
                              return Center(
                                child: Text("Error: ${snapshot.error}"),
                              );
                            } else if (snapshot.hasData) {
                              // Data state
                              final items = snapshot.data!;
                              return Flexible(
                                child: SizedBox(
                                  height: context.screenHeight * 0.11,
                                  width: context.screenWidth,
                                  child: ListView.separated(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    separatorBuilder: (context, index) =>
                                        SizedBox(
                                      width: context.screenWidth * 0.01,
                                    ),
                                    itemCount: items.length,
                                    itemBuilder: (context, index) {
                                      final item = items[index];
                                      return Expanded(
                                        child: CustomGrids(
                                          image: ImageAssets.bar,
                                          title: item.title,
                                          price: item.price,
                                          widget: null,
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              );
                            } else {
                              return const SizedBox();
                            }
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
