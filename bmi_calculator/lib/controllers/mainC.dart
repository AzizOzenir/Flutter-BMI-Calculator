import '../pages/result/result.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MainController with ChangeNotifier {
  double sliderValue = 170.0;
  int age = 16;
  int weight = 40;
  double res = 0;
  String date = "202*-**-**";

 List<int> ages = List.generate(74, (index) => index + 16);


 List<int> weights = [
  ...List.generate(81, (index) => index + 40),
];

// ########## valuechanges ##########

  void onSliderValueChanged(v) {
    sliderValue = v;
    notifyListeners();
  }

  void ageSelector(int v) {
    age = ages[v];
    notifyListeners();
  }

  void weightSelector(int v) {
    weight = weights[v];
    notifyListeners();
  }

// ########## calculate-result ##########

  void calculateFAB(BuildContext context) {
    res = (weight / (sliderValue * sliderValue)) * 10000;

    notifyListeners();
    print(res.toStringAsFixed(1));
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ResultPage(),
      ),
    );
  }

// ########## date ##########

  void dateGetter() {
    var now = DateTime.now();
    var formatter = DateFormat('yyyy-MM-dd');
    String formattedDate = formatter.format(now);
    date = formattedDate;
    notifyListeners();
  }
}
