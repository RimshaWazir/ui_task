import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_task/Presentation/Widgets/ResponsiveLayout/TabletWebHome.dart/TabletHomeBloc/Components/Drawer/Controllers/drawer_status_change_states.dart';

class DrawerItemBloc extends Cubit<DrawerItemState> {
  DrawerItemBloc() : super(InitialItemState());

  bool isDrawerOpen = true;

  void toggleDrawer() {
    isDrawerOpen = !isDrawerOpen;
    emit(DrawerLoadedItemState(isDrawerOpen));
  }
}
