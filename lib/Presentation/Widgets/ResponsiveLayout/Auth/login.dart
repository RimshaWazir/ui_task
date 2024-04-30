import 'package:ui_task/Data/DataSource/Resources/imports.dart';
import 'package:ui_task/Presentation/Widgets/ResponsiveLayout/Auth/Commons/login_image_side.dart';

class Login extends StatelessWidget {
  const Login(BuildContext context, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: context.width(0.08)),
            child: LoginFormSide(context),
          ),
        ),
        const LoginImageSide(),
      ],
    );
  }
}
