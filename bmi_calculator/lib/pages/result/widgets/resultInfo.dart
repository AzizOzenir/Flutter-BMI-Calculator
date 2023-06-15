import 'package:bmi_calculator/exports.dart';

class ResultInfo extends StatelessWidget {
  ResultInfo({super.key});

  @override
  Widget build(BuildContext context) {
    MainController mainC = Provider.of<MainController>(context);
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: MediaQuery.of(context).size.width / 1.5,
      child: Text(
        GetDescription(mainC.res, mainC.age),
      ),
    );
  }

  String GetDescription(double v, int age) {
    if (30 < v) {
      if (age < 40) {
        return youngAge[4];
      } else {
        return oldAge[4];
      }
    } else if (30 > v && v >= 25) {
      if (age < 40) {
        return youngAge[3];
      } else {
        return oldAge[3];
      }
    } else if (25 > v && v >= 21) {
      if (age < 40) {
        return youngAge[2];
      } else {
        return oldAge[2];
      }
    } else if (21 > v && v >= 18.5) {
      if (age < 40) {
        return youngAge[1];
      } else {
        return oldAge[1];
      }
    } else {
      if (age < 40) {
        return youngAge[0];
      } else {
        return oldAge[0];
      }
    }
  }

  List<String> youngAge = [
    "You need to get weight with big portions and exercises for your health",
    "Your body fat ratio is excellent, but it also means that you lack muscle. Your age is quite suitable for muscle development. You should consider going to the gym",
    "Your body is really fit, try to maintain it with regular exercise and a balanced diet.",
    "You have some fat part on your body and it may be a good choice to start to exercises",
    "You should drop the excess in your body by stopping eating junk food and exercising"
  ]; // can be added more sentences and choosing randomly according to user BMI

  List<String> oldAge = [
    "You need to maintain your body fat rate with with exercises that your body can do ",
    "Your body fat ratio is excellent for pre-old and old people",
    "Your body is really fit, try to maintain it with regular exercise that your body can do and a balanced diet.",
    "You have some fat part on your body and it should be a good choice to start to exercises and diet without heavy meals",
    "You should drop the excess in your body by stopping eating all foods containing carbohydrates and fats"
  ]; // can be added more sentences and choosing randomly according to user BMI

}
