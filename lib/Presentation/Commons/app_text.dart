import 'package:ui_task/Data/DataSource/Resources/imports.dart';

class AppText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  final int? maxLine;
  const AppText(
    this.text, {
    super.key,
    required this.style,
    this.overflow,
    this.maxLine = 1,
    this.textAlign = TextAlign.start,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLine,
      textAlign: textAlign,
      textScaler: const TextScaler.linear(1),
      overflow: overflow ?? TextOverflow.ellipsis,
      style: style,
    );
  }
}
