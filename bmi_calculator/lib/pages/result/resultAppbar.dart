import 'package:bmi_calculator/exports.dart';

class ResultAppbar extends StatelessWidget {
  const ResultAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeController themeC = Provider.of<ThemeController>(context);
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      title: Text("BMI Calculator ",
          style: TextStyle(color: themeC.isDark ? Colors.white : Colors.black)),
      actions: [
        GestureDetector(
          onTap: () {
            themeC.onPressed();
          },
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Icon(
              themeC.isDark ? TablerIcons.moon : TablerIcons.sun,
              color: Theme.of(context).iconTheme.color,
            ),
          ),
        ),
      ],
    );
  }
}
