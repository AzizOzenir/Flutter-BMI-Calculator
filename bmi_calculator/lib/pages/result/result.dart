import 'package:bmi_calculator/exports.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: PreferredSize(
          child: ResultAppbar(), preferredSize: Size.fromHeight(80)),
      body: ResultBody(),
    );
  }
}
