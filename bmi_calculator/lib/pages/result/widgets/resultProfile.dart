import 'package:bmi_calculator/exports.dart';

class ResultProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeController themeC = Provider.of<ThemeController>(context);
    DialogController diaologC = Provider.of<DialogController>(context);
    MainController mainC = Provider.of(context);
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.transparent,
      width: size.width / 2,
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              diaologC.PickImage();
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(90),
              child: Container(
                height: size.width / 5,
                width: size.width / 5,
                color: diaologC.image == null ? Colors.cyan : null,
                child: diaologC.image == null
                    ? const Center(
                        child: Text(
                          "Click",
                        ),
                      )
                    : ClipRRect(
                        borderRadius: BorderRadius.circular(90),
                        child: Image(
                            image: FileImage(diaologC.image!),
                            fit: BoxFit.cover),
                      ),
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(diaologC.name),
          SizedBox(height: size.height / 40),
          Text(
            GetBMIText(mainC.res),
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  String GetBMIText(double v) {
    if (30 < v) {
      return "Obese";
    } else if (30 > v && v >= 25) {
      return "Overweight";
    } else if (25 > v && v >= 21) {
      return "Nice body :)";
    } else if (21 > v && v >= 18.5) {
      return "Healthy";
    } else {
      return "Underweight";
    }
  }
}
