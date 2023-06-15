
import 'package:bmi_calculator/exports.dart';

class DialogController with ChangeNotifier {
  String name = "get a name..";

  void SharedPreferencesInput(String text) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('name', text);
    String? newname = prefs.getString('name');
    name = newname!;

    notifyListeners();
  }

  void SharedPreferencesOutput() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    if (prefs.containsKey("name")) {
      String? newname = prefs.getString('name');
      name = newname!;
      notifyListeners();
    }
  }

// ########## x ##########

  File? image;
  String? imagePath;

  void PickImage() async {
    SharedPreferences SP = await SharedPreferences.getInstance();

    XFile? x = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (x != null) {
      imagePath = x.path;
      image = File(imagePath!);
      SP.setString("path", image!.path);
      notifyListeners();
    }
  }

  void loadImage() async {
    SharedPreferences SP = await SharedPreferences.getInstance();

    String? x = SP.getString("path");
    if (x != null) {
      imagePath = x;
      FileImage w = FileImage(File(imagePath!));
      image = w.file;
      notifyListeners();
    }
  }

  void saveImage(String path) async {
    SharedPreferences SP = await SharedPreferences.getInstance();

    SP.setString("path", path);
  }

// ########## x ##########

  double top = 0;
  double bottom = 0;
  double left = 0;
  double right = 0;

  int count = 0;

  List list = ["top", "bottom", "right", "left"];

  void onPressedNoThanks() {
    Random random = Random();
    int randomNewValue = random.nextInt(25);
    int whichllChange = random.nextInt(4);

    top = 0.0;
    bottom = 0.0;
    right = 0.0;
    left = 0.0;

    String willChange = list[whichllChange];

    if (willChange.contains("top")) {
      top = randomNewValue.toDouble();
      count++;
      notifyListeners();
    } else if (willChange.contains("bottom")) {
      bottom = randomNewValue.toDouble();
      count++;
      notifyListeners();
    } else if (willChange.contains("right")) {
      right = randomNewValue.toDouble();
      count++;
      notifyListeners();
    } else {
      left = randomNewValue.toDouble();
      count++;
      notifyListeners();
    }
  }
}
