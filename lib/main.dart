import 'package:ui_task/Data/AppData/provider.dart';
import 'Data/DataSource/Resources/imports.dart';

void main() {
  runApp(MultiBlocProvider(providers: appProviders, child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Widget mobile;
  late Widget tablet;
  late Widget desktop;
  @override
  void initState() {
    mobile = Home(device: 'mobile layout');
    tablet = Home(device: "tablet layout");
    desktop = Home(device: "desktop layout");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ResponsiveLayout(
        mobile: mobile,
        tablet: tablet,
        desktop: desktop,
      ),
    );
  }
}
