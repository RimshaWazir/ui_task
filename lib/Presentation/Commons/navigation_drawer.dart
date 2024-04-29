import 'package:ui_task/Data/DataSource/Resources/imports.dart';

class NavigationDrawerr extends StatefulWidget {
  final bool isDrawerOpen;

  const NavigationDrawerr({
    super.key,
    required this.isDrawerOpen,
  });

  @override
  State<NavigationDrawerr> createState() => _NavigationDrawerrState();
}

class _NavigationDrawerrState extends State<NavigationDrawerr> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      color: Colors.white,
      curve: Easing.legacy,
      duration: const Duration(milliseconds: 800),
      width: widget.isDrawerOpen ? 250 : 50,
      child: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
                child: widget.isDrawerOpen
                    ? Image.asset(
                        ImageAssets.imItecExpertLogo,
                        fit: BoxFit.contain,
                      )
                    : const SizedBox()),
            ListTile(
              leading: const Icon(Icons.dashboard),
              title: widget.isDrawerOpen ? const Text('Dashboard') : null,
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.production_quantity_limits),
              title: widget.isDrawerOpen ? const Text('NFT Marketplace') : null,
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.bar_chart),
              title: widget.isDrawerOpen ? const Text('Tables') : null,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
