import 'package:bmi_calculator/exports.dart';

class ResultBody extends StatelessWidget {
  const ResultBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ResultProfile(),
          ResultIndicator(),
          ResultInfo(),
          ResultHomeButton(),
        ],
      ),
    );
  }
}
