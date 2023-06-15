import 'package:bmi_calculator/exports.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ResultIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MainController mainC = Provider.of(context);
    Size size = MediaQuery.of(context).size;
    return CircularPercentIndicator(
      animation: true,
      animationDuration: 2500,
      startAngle: 225,
      curve: Curves.ease,
      radius: size.width / 3,
      backgroundColor: Colors.grey,
      lineWidth: 10.0,
      circularStrokeCap: CircularStrokeCap.round,
      percent: GetPercent(mainC.res),
      center: Text(
        mainC.res.toStringAsFixed(2),
        style: TextStyle(color: GetColor(context, mainC.res), fontSize: 24),
      ),
      progressColor: GetColor(context, mainC.res),
    );
  }

  double GetPercent(double v) {
    if (30 < v) {
      return 0.75;
    } else if (30 > v && v >= 25) {
      return 0.65;
    } else if (25 > v && v >= 21) {
      return 0.55;
    } else if (21 > v && v >= 18.5) {
      return 0.45;
    } else {
      return 0.35;
    }
  }

  Color? GetColor(BuildContext context, double v) {
    if (30 < v) {
      return Colors.red.shade700;
    } else if (30 > v && v >= 25) {
      return Colors.red.shade400;
    } else if (25 > v && v >= 21) {
      return Colors.blue;
    } else if (21 > v && v >= 18.5) {
      return Colors.white;
    } else {
      if (Provider.of<MainController>(context).age > 40) {
        return Colors.blue.shade200;
      } else {
        return Colors.red.shade200;
      }
    }
  }
}
