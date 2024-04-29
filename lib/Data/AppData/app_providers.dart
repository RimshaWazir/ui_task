import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_task/Presentation/Widgets/ResponsiveLayout/TabletWebHome.dart/Drawer/Controllers/drawer_status_change_bloc.dart';
import 'package:ui_task/Presentation/Widgets/ResponsiveLayout/TabletWebHome.dart/Controllers/item_bloc.dart';

List<BlocProvider> appProviders = [
  BlocProvider(
    create: (context) => ItemBloc(),
  ),
  BlocProvider(
    create: (context) => DrawerItemBloc(),
  ),
];
