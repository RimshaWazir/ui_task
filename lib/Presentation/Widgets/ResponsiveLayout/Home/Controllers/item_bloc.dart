import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_task/Data/DataSource/Resources/app_strings.dart';
import 'package:ui_task/Domain/Models/item.dart';
import 'package:ui_task/Presentation/Widgets/ResponsiveLayout/Home/Controllers/item_state.dart';

class ItemBloc extends Cubit<ItemState> {
  ItemBloc() : super(InitialItemState());
  final List<Item> fetchedItems = [
    Item(title: AppStrings.earning, price: AppStrings.price1),
    Item(title: AppStrings.spendMonth, price: AppStrings.price2),
    Item(title: AppStrings.sales, price: AppStrings.price3),
    Item(title: AppStrings.balance, price: AppStrings.price4),
    Item(title: AppStrings.tasks, price: AppStrings.price5),
    Item(title: AppStrings.projects, price: AppStrings.price6)
  ];
  getItems() async {
    await Future.delayed(const Duration(seconds: 1));
    List<Item> listToSend = [];
    for (final item in fetchedItems) {
      await Future.delayed(const Duration(milliseconds: 300));

      listToSend.add(item);
      emit(LoadedItemState(listToSend));
    }
  }
}
