import 'package:ui_task/Presentation/Commons/custom_grids.dart';
import 'package:ui_task/Presentation/Widgets/ResponsiveLayout/Home/Controllers/item_state.dart';

import '../../Data/DataSource/Resources/imports.dart';
import 'custom_grid_rich_text.dart';

class UpperGrids extends StatelessWidget {
  const UpperGrids({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: BlocSelector<ItemBloc, ItemState, LoadedItemState>(
        selector: (state) {
          if (state is LoadedItemState) {
            return state;
          }
          return LoadedItemState([]);
        },
        builder: (context, state) {
          if (state.items.isNotEmpty) {
            return SizedBox(
              height: MediaQuery.of(context).size.height * 0.16,
              width: MediaQuery.of(context).size.width,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => SizedBox(
                  width: MediaQuery.of(context).size.width * 0.01,
                ),
                itemCount: state.items.length,
                itemBuilder: (context, index) {
                  final item = state.items[index];
                  final isThirdIndex = index == 3;
                  return CustomGrids(
                    image: ImageAssets.bar,
                    title: item.title,
                    price: item.price,
                    widget: isThirdIndex ? const CustomGridRichText() : null,
                  );
                },
              ),
            );
          } else {
            return const Text("No Data");
          }
        },
      ),
    );
  }
}
