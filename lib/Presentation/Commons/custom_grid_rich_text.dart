import 'package:ui_task/Data/DataSource/Resources/imports.dart';

class CustomGridRichText extends StatelessWidget {
  const CustomGridRichText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: StylesText.smallText.copyWith(
            fontWeight: FontWeight.w700, color: const Color(0xff05CD99)),
        children: [
          const TextSpan(text: AppStrings.percent),
          TextSpan(text: AppStrings.history, style: StylesText.smallText),
        ],
      ),
    );
  }
}
