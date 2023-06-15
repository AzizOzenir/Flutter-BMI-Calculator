import 'dart:ui';

import 'package:bmi_calculator/exports.dart';

class HomeProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DialogController diaologC = Provider.of(context);
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 3,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
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
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w200),
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
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    openDialog(context);
                  },
                  child: Text(
                    diaologC.name,
                    style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: diaologC.name.length <= 12 ? 20 : 15,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

TextEditingController nameController = TextEditingController();

openDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) => BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: 3,
        sigmaY: 3,
      ),
      child: AlertDialog(
        clipBehavior: Clip.antiAlias,
        backgroundColor: Colors.grey.shade600.withOpacity(0.7),
        title: const Text(
          "Profile settings",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Visibility(
                visible: Provider.of<DialogController>(context, listen: false)
                            .name ==
                        "get a name.."
                    ? false
                    : true,
                child: ClipRRect(
                  borderRadius: bradiusSoft,
                  child: TextButton(
                    onPressed: () {
                      Provider.of<DialogController>(context, listen: false)
                          .PickImage();
                    },
                    child: const Text(
                      "Change Profile Picture",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w300),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.indigo.shade800),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: nameController,
                  cursorColor: Colors.white,
                  cursorWidth: 0.6,
                  cursorHeight: MediaQuery.of(context).size.height / 35,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w300),
                  autocorrect: true,
                  enableSuggestions: true,
                  keyboardType: TextInputType.text,
                  autofillHints: const [AutofillHints.name],
                  decoration: InputDecoration(
                    hintStyle: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w100),
                    hintText: "Would you change your name",
                    border: const OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.blue, width: 0.6),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              "CANCEL",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
          ),
          ClipRRect(
            borderRadius: bradiusSoft,
            child: TextButton(
              onPressed: () {
                Provider.of<DialogController>(context, listen: false)
                    .SharedPreferencesInput(nameController.text);

                Navigator.pop(context);
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.indigo.shade800),
              ),
              child: const Text(
                "SUBMIT",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}
