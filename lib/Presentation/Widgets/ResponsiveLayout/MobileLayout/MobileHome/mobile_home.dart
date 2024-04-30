import 'package:ui_task/Data/DataSource/Resources/imports.dart';

class MobileHome extends StatelessWidget {
  MobileHome({
    required this.device,
    super.key,
  });
  String device;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          LoginFormSide(context),
        ],
      ),
    );
  }
}
