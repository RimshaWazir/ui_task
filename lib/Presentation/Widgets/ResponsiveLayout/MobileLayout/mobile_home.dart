import 'package:ui_task/Data/DataSource/Resources/imports.dart';

class MobileHome extends StatelessWidget {
  const MobileHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          LoginForm(context),
        ],
      ),
    );
  }
}
