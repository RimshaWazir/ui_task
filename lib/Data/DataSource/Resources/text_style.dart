import 'package:ui_task/Data/DataSource/Resources/imports.dart';

class StylesText {
  static TextStyle mediumText = const TextStyle(
    fontFamily: 'DM Sans',
    fontWeight: FontWeight.w500,
    fontSize: 14.0,
    // height: 20 / 14,
    overflow: TextOverflow.ellipsis,
    color: Color(0xffA3AED0),
  );
  static TextStyle smallText = const TextStyle(
    fontFamily: 'DM Sans',
    fontWeight: FontWeight.w400,
    fontSize: 12.0,
    height: 20 / 12,
    overflow: TextOverflow.ellipsis,
    color: Color(0xffA3AED0),
  );
  static TextStyle largeText = const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    fontFamily: 'DM Sans',
    overflow: TextOverflow.ellipsis,
    color: Color(0xff2B3674),
    height: 32 / 24,
  );
}
