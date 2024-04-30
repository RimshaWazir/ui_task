import 'package:ui_task/Data/DataSource/Resources/imports.dart';

class AppbarTitle extends StatelessWidget {
  const AppbarTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: StylesText.mediumText,
        children: [
          const TextSpan(text: '${AppStrings.pagesDashboard}\n'),
          TextSpan(
              text: AppStrings.dashboard,
              style: StylesText.largeText.copyWith(fontSize: 34)),
        ],
      ),
    );
  }
}
