import 'package:bmi_calculator/exports.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      title: Text(
        "BMI Calculator",
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      leading: Padding(
        padding: EdgeInsets.all(12),
        child: IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: Icon(
            Iconsax.menu_14,
            size: 24,
            color: Theme.of(context).iconTheme.color,
          ),
        ),
      ),
    );
  }
}
