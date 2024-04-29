import 'package:ui_task/Data/DataSource/Resources/imports.dart';

class CustomButton extends StatelessWidget {
  String? image;
  String text;
  Color textColor;
  Color backColor;
  Function() ontap;
  CustomButton({
    super.key,
    this.image = '',
    required this.text,
    required this.textColor,
    required this.backColor,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height(0.07),
      child: ElevatedButton(
        onPressed: ontap,
        style: ElevatedButton.styleFrom(
          backgroundColor: backColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (image != null && image!.isNotEmpty)
              Image.asset(image!, fit: BoxFit.contain),
            SizedBox(width: context.width(0.003)),
            Flexible(
              child: AppText(
                text,
                style: StylesText.smallText.copyWith(color: textColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
