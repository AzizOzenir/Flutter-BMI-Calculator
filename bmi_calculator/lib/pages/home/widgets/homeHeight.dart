import 'package:bmi_calculator/exports.dart';

class HomeHeight extends StatelessWidget {
  const HomeHeight({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeController themeC =
        Provider.of<ThemeController>(context, listen: false);

    MainController mainC = Provider.of<MainController>(
      context,
    );
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 8,
        ),
        Container(
          width: MediaQuery.of(context).size.width / 3.5,
          height: MediaQuery.of(context).size.height / 1.4,
          decoration: BoxDecoration(
            color: Theme.of(context).secondaryHeaderColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              const Icon(
                Icons.height_rounded,
                size: 50,
                color: Colors.white,
              ),
              Row(children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 1.6,
                  child: RotatedBox(
                    quarterTurns: -1,
                    child: Slider(
                      min: 140,
                      max: 220,
                      divisions: 80,
                      label: mainC.sliderValue.toStringAsFixed(1),
                      value: mainC.sliderValue,
                      onChanged: (v) {
                        mainC.onSliderValueChanged(v);
                      },
                      activeColor: Colors.blue,
                      inactiveColor: Colors.blueGrey.shade800,
                      thumbColor: const Color.fromARGB(255, 0, 225, 255),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 1.8,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("- 220",
                          style: Theme.of(context).textTheme.bodyMedium),
                      Text("- 200",
                          style: Theme.of(context).textTheme.bodyMedium),
                      Text("- 180",
                          style: Theme.of(context).textTheme.bodyMedium),
                      Text("- 160",
                          style: Theme.of(context).textTheme.bodyMedium),
                      Text("- 140",
                          style: Theme.of(context).textTheme.bodyMedium),
                    ],
                  ),
                )
              ]),
            ],
          ),
        )
      ],
    );
  }
}
