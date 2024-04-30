import 'package:ui_task/Data/DataSource/Resources/imports.dart';

class ResponsiveLayout extends StatefulWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const ResponsiveLayout({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  });

  @override
  State<ResponsiveLayout> createState() => _ResponsiveLayoutState();
}

class _ResponsiveLayoutState extends State<ResponsiveLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return widget.mobile;
          } else if (constraints.maxWidth < 720) {
            return widget.tablet;
          } else {
            return widget.desktop;
          }
        },
      ),
    );
  }
}
