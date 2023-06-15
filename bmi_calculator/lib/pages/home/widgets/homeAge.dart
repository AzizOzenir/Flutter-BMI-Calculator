import 'package:bmi_calculator/exports.dart';

class HomeAge extends StatelessWidget {
  const HomeAge({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    MainController mainC = Provider.of(context);
    ThemeController themeC = Provider.of(context);
    return SizedBox(
      width: 240,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Age", style: Theme.of(context).textTheme.bodyLarge),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.elderly_rounded,
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
                                  color: themeC.isDark
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
                                  mainC.ageSelector(v);
                                },
                                itemExtent: 40,
                                perspective: 0.002,
                                diameterRatio: 0.8,
                                physics: const FixedExtentScrollPhysics(),
                                childDelegate: ListWheelChildBuilderDelegate(
                                  childCount: mainC.ages.length,
                                  builder: ((context, index) {
                                    return RotatedBox(
                                      quarterTurns: -1,
                                      child: Text(mainC.ages[index].toString(),
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
              ),
            ],
          )
        ],
      ),
    );
  }
}
