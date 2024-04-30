import 'package:ui_task/Data/DataSource/Resources/imports.dart';

class CustomGrids extends StatefulWidget {
  String? title;
  String? price;
  String? image;
  Widget? widget;
  int? index;
  CustomGrids({
    super.key,
    this.widget,
    this.title,
    this.price,
    this.index,
    this.image,
  });

  @override
  State<CustomGrids> createState() => _CustomGridsState();
}

class _CustomGridsState extends State<CustomGrids> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.screenHeight * 0.1,
      width: context.screenWidth * 0.18,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
                height: context.screenHeight * 0.08,
                width: context.screenWidth * 0.08,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.image!), fit: BoxFit.contain),
                )),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: StylesText.mediumText,
                        children: [
                          TextSpan(text: '${widget.title!}\n'),
                          TextSpan(
                              text: widget.price!,
                              style:
                                  StylesText.largeText.copyWith(fontSize: 24)),
                        ],
                      ),
                    ),
                  ),
                  if (widget.widget != null) Expanded(child: widget.widget!),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
