import 'package:ui_task/Data/DataSource/Resources/imports.dart';
import 'package:ui_task/Domain/Models/drawer_model.dart';

class DashboardDrawerController extends ChangeNotifier {
  ValueNotifier<int> index = ValueNotifier(0);
  final List<DrawerModel> drawerData = [
    DrawerModel(icon: ImageAssets.home, title: AppStrings.ddashboard),
    DrawerModel(icon: ImageAssets.cart, title: AppStrings.nft),
    DrawerModel(icon: ImageAssets.table, title: AppStrings.table),
    DrawerModel(icon: ImageAssets.menu, title: AppStrings.kanban),
    DrawerModel(icon: ImageAssets.person, title: AppStrings.profile),
    DrawerModel(icon: ImageAssets.lock, title: AppStrings.sigIn),
  ];
}
