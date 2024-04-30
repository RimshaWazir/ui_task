import 'package:ui_task/Data/DataSource/Resources/imports.dart';

InputDecoration textfieldDecoration(String text) {
  return InputDecoration(
    hintText: text,
    hintStyle: StylesText.mediumText,
    border: OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xffE0E5F2)),
      borderRadius: BorderRadius.circular(16),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xffE0E5F2)),
      borderRadius: BorderRadius.circular(16),
    ),
    errorBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red),
    ),
    errorStyle: StylesText.mediumText.copyWith(color: Colors.red),
    contentPadding:
        const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
    errorMaxLines: 2,
  );
}
