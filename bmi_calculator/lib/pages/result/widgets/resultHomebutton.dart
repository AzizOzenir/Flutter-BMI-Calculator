import 'package:bmi_calculator/exports.dart';

class ResultHomeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        Fluttertoast.showToast(
            msg: " Your health succesfully cared :)",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.TOP,
            timeInSecForIosWeb: 3,
            backgroundColor: Colors.blueGrey.shade200,
            textColor: Colors.black,
            fontSize: 16.0);

        Navigator.pop(context);
      },
      child: Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
            color: Theme.of(context).secondaryHeaderColor,
            shape: BoxShape.circle),
        child: Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Theme.of(context).iconTheme.color,
          size: 36,
        ),
      ),
    );
  }
}
