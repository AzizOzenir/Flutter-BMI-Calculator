import 'package:bmi_calculator/exports.dart';

class HomeFab extends StatelessWidget {
  const HomeFab({super.key});

  @override
  Widget build(BuildContext context) {
    MainController mainC = Provider.of(context);
    ThemeController themeC = Provider.of(context);
    return GestureDetector(
      onTap: () {
        mainC.calculateFAB(context);
      },
      child: Container(
        height: MediaQuery.of(context).size.width / 5,
        width: MediaQuery.of(context).size.width / 5,
        decoration: BoxDecoration(
          color: themeC.isDark
              ? Colors.black
              : Theme.of(context).secondaryHeaderColor,
          borderRadius: BorderRadius.circular(90),
        ),
        child: const Center(child: Icon(TablerIcons.brand_telegram)),
      ),
    );
  }
}
