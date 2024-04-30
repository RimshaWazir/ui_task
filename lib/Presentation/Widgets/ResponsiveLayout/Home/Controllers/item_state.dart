import 'package:ui_task/Domain/Models/item.dart';

abstract class ItemState {}

class InitialItemState extends ItemState {}

class LoadedItemState extends ItemState {
  final List<Item> items;
  LoadedItemState(this.items);
}

class LoadingItemState extends ItemState {}

class ErrorItemState extends ItemState {}
