import 'package:ui_task/Data/DataSource/Resources/imports.dart';

extension ContextExtension on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;

  double width(double value) => screenWidth * value;
  double height(double value) => screenHeight * value;
}
