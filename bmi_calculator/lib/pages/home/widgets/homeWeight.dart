import 'package:bmi_calculator/exports.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeWeight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    MainController mainC = Provider.of<MainController>(context);
    MainController mainCNL =
        Provider.of<MainController>(context, listen: false);
    ThemeController tcontroller =
        Provider.of<ThemeController>(context, listen: false);
    return SizedBox(
      width: 240,
      height: 135,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Weight", style: Theme.of(context).textTheme.bodyLarge),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                children: const [
                  SizedBox(
                    height: 30,
                  ),
                  FaIcon(FontAwesomeIcons.weight),
                  SizedBox(height: 40)
                ],
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Positioned(
                        top: 2,
                        left: 70,
                        child: Container(
                          decoration: BoxDecoration(
                              color: tcontroller.isDark
                                  ? Colors.grey.withOpacity(0.2)
                                  : Colors.grey.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(12)),
                          height: 45,
                          width: 50,
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        width: 200,
                        child: RotatedBox(
                          quarterTurns: 1,
                          child: ListWheelScrollView.useDelegate(
                            onSelectedItemChanged: (v) {
                              mainC.weightSelector(v);
                            },
                            itemExtent: 40,
                            perspective: 0.002,
                            diameterRatio: 0.8,
                            physics: const FixedExtentScrollPhysics(),
                            childDelegate: ListWheelChildBuilderDelegate(
                              childCount: mainCNL.weights.length,
                              builder: ((context, index) {
                                return RotatedBox(
                                  quarterTurns: -1,
                                  child: Text(mainCNL.weights[index].toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .copyWith(fontSize: 22)),
                                );
                              }),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
