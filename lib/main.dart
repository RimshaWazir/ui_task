import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_task/Data/DataSource/Resources/imports.dart';
import 'package:ui_task/Presentation/Widgets/ResponsiveLayout/TabletWebLayout.dart/TabletWebHome/bloc/item_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ItemBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Login Screen',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const ResponsiveLayout(),
      ),
    );
  }
}
