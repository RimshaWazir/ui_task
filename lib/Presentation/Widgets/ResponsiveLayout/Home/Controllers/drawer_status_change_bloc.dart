import 'package:ui_task/Data/DataSource/Resources/imports.dart';

class DrawerItemBloc extends Cubit<DrawerItemState> {
  DrawerItemBloc() : super(InitialItemState());

  bool isDrawerOpen = true;

  void toggleDrawer() {
    isDrawerOpen = !isDrawerOpen;
    emit(DrawerLoadedItemState(isDrawerOpen));
  }
}
