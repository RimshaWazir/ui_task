import 'dart:async';

import 'package:ui_task/Data/DataSource/Resources/app_strings.dart';
import 'package:ui_task/Domain/item.dart';

class ItemBloc {
  final _itemController = StreamController<List<Item>>.broadcast();

  Stream<List<Item>> get itemListStream => _itemController.stream;

  void fetchItems() {
    final items = [
      Item(title: AppStrings.earning, price: AppStrings.price1),
      Item(title: AppStrings.spendMonth, price: AppStrings.price2),
      Item(title: AppStrings.sales, price: AppStrings.price3),
      Item(title: AppStrings.balance, price: AppStrings.price4),
      Item(title: AppStrings.tasks, price: AppStrings.price5),
      Item(title: AppStrings.projects, price: AppStrings.price6)
    ];

    _itemController.sink.add(items);
  }

  void dispose() {
    _itemController.close();
  }
}
