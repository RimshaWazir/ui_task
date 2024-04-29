import 'package:ui_task/Data/DataSource/Resources/imports.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.screenHeight * 0.08,
      width: context.screenWidth * 0.3,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              height: context.screenHeight * 0.05,
              width: context.screenWidth * 0.15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey[200],
              ),
              child: const TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(bottom: 15),
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  hintText: 'Search...',
                ),
              ),
            ),
          ),
          const Expanded(
              child: Icon(
            Icons.notifications_active_outlined,
            color: Colors.grey,
          )),
          const Expanded(
              child: Icon(
            Icons.dark_mode,
            color: Colors.grey,
          )),
          const Expanded(
              child: Icon(
            Icons.info,
            color: Colors.grey,
          )),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(5.0),
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                  ImageAssets.imgBackground,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
