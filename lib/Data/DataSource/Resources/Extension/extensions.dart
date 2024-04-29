import 'package:ui_task/Data/DataSource/Resources/imports.dart';

extension ContextExtension on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;

  double width(double value) => screenWidth * value;
  double height(double value) => screenHeight * value;
}

extension EdgeInsetsExtension on EdgeInsets {
  EdgeInsets all(double padding) {
    return EdgeInsets.all(padding);
  }

  EdgeInsets left(double padding) {
    return EdgeInsets.only(left: padding);
  }

  EdgeInsets top(double padding) {
    return EdgeInsets.only(top: padding);
  }

  EdgeInsets right(double padding) {
    return EdgeInsets.only(right: padding);
  }

  EdgeInsets bottom(double padding) {
    return EdgeInsets.only(bottom: padding);
  }

  EdgeInsets horizontal(double padding) {
    return EdgeInsets.symmetric(horizontal: padding);
  }

  EdgeInsets vertical(double padding) {
    return EdgeInsets.symmetric(vertical: padding);
  }
}
