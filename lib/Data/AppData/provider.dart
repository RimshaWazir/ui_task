import 'package:ui_task/Data/DataSource/Resources/imports.dart';

List<BlocProvider> appProviders = [
  BlocProvider<ItemBloc>(
    create: (context) => ItemBloc(),
  ),
  BlocProvider<DrawerItemBloc>(
    create: (context) => DrawerItemBloc(),
  ),
];
