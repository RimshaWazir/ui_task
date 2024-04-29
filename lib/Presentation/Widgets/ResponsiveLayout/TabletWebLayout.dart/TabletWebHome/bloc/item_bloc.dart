import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_task/Data/DataSource/Resources/app_strings.dart';
import 'package:ui_task/Domain/item.dart';

class ItemState {
  final List<Item> items;

  ItemState(this.items);
}

class ItemBloc extends Bloc<dynamic, ItemState> {
  ItemBloc() : super(ItemState([]));

  Stream<ItemState> fetchedItems(dynamic event) async* {
    final List<Item> fetchedItems = [
      Item(title: AppStrings.earning, price: AppStrings.price1),
      Item(title: AppStrings.spendMonth, price: AppStrings.price2),
      Item(title: AppStrings.sales, price: AppStrings.price3),
      Item(title: AppStrings.balance, price: AppStrings.price4),
      Item(title: AppStrings.tasks, price: AppStrings.price5),
      Item(title: AppStrings.projects, price: AppStrings.price6)
    ];
    yield ItemState(fetchedItems);
  }
}
