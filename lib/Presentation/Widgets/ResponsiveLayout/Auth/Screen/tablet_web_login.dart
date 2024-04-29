import 'package:ui_task/Data/DataSource/Resources/imports.dart';

class TabletOrWebLogin extends StatelessWidget {
  const TabletOrWebLogin(BuildContext context, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: context.width(0.08)),
            child: LoginForm(context),
          ),
        ),
        ClipPath(
          clipper: BottomLeftClipper(),
          child: Container(
            width: context.width(0.5),
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(ImageAssets.imgBackground),
                fit: BoxFit.fill,
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: context.height(0.2)),
                  Expanded(
                    child: Image.asset(
                      ImageAssets.imItecExpertLogo,
                      height: context.height(0.25),
                      width: context.width(0.25),
                      fit: BoxFit.contain,
                    ),
                  ),
                  Container(
                    height: context.height(0.12),
                    width: context.width(0.25),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white.withOpacity(0.2)),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    padding: const EdgeInsets.all(20.0),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: AppText(
                            AppStrings.horizonUi,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            AppStrings.horizonUiCom,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: context.height(0.25)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      for (var text in AppStrings.texts)
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Expanded(
                            child: Text(
                              text,
                              style: StylesText.smallText
                                  .copyWith(color: Colors.white),
                            ),
                          ),
                        ),
                      Align(
                        child: Flexible(
                          child: Container(
                            height: context.height(0.06),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(colors: [
                                  Colors.deepPurpleAccent,
                                  Colors.deepPurpleAccent
                                ])),
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.dark_mode,
                                  color: Colors.white,
                                  size: 18,
                                )),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: context.height(0.04),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
