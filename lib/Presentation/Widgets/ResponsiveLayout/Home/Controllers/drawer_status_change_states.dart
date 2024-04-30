abstract class DrawerItemState {}

class InitialItemState extends DrawerItemState {}

class DrawerLoadedItemState extends DrawerItemState {
  bool isDrawerOpen;
  DrawerLoadedItemState(this.isDrawerOpen);
}
