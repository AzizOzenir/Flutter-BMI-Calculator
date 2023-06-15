import '../../exports.dart';

class HomeDrawer extends StatelessWidget {
  String date;
  HomeDrawer({required this.date});
  @override
  Widget build(BuildContext context) {
    ThemeController themeC = Provider.of(context);
    return Drawer(
      backgroundColor:
          Theme.of(context).secondaryHeaderColor.withOpacity(0.025),
      elevation: 0,
      child: ListView(
        children: [
          GestureDetector(
            onTap: () {
              Fluttertoast.showToast(
                  msg: " You will be able to buy coffe. Save your pocket",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.TOP,
                  timeInSecForIosWeb: 3,
                  backgroundColor: Colors.blueGrey.shade200,
                  textColor: Colors.white,
                  fontSize: 16.0);
            },
            child: Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Theme.of(context).secondaryHeaderColor,
                  borderRadius: bradiusSoft),
              child: const ListTile(
                title: Text(
                  "Buy me a coffee..",
                ),
                leading: Icon(
                  TablerIcons.coffee,
                  color: Colors.yellow,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              openDialog(context);
            },
            child: Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Theme.of(context).secondaryHeaderColor,
                  borderRadius: bradiusSoft),
              child: ListTile(
                title: const Text(
                  "User Setting",
                ),
                leading: Icon(
                  TablerIcons.settings,
                  color: Theme.of(context).iconTheme.color,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
//theme changing
              themeC.onPressed();
            },
            child: Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Theme.of(context).secondaryHeaderColor,
                  borderRadius: bradiusSoft),
              child: ListTile(
                title: const Text(
                  "Change Theme",
                ),
                leading: Icon(
                  themeC.isDark ? TablerIcons.moon : TablerIcons.sun,
                  color: themeC.isDark ? Colors.grey : Colors.yellow,
                ),
              ),
            ),
          ),
          //rate my app
          /* GestureDetector(
            onTap: () {
              Provider.of<dialogController>(context, listen: false)
                  .rateMyApp
                  .showStarRateDialog(context,
                      title: "Rate this app",
                      starRatingOptions: const StarRatingOptions(
                        allowHalfRating: false,
                        initialRating: 5,
                      ),
                      barrierDismissible: true,
                      actionsBuilder: actionbuilder);
            },
            child: ListTile(
                title: Text(
                  "Rate it",
                  style: TextStyle(
                      color: myType.isDark
                          ? darkTheme().textIconColor
                          : lightTheme().textIconColor),
                ),
                leading: Icon(
                  TablerIcons.file_like,
                  color: myType.isDark
                      ? darkTheme().textIconColor
                      : lightTheme().textIconColor,
                )),
          ), */
          //share
          /* GestureDetector(
            onTap: () {},
            child: const ListTile(
              title: Text(
                "Share",
                style: TextStyle(color: myType.isDark? darkTheme().textIconColor:lightTheme().textIconColor),
              ),
              leading: Icon(
                TablerIcons.share,
                color: myType.isDark? darkTheme().textIconColor:lightTheme().textIconColor,
              ),
            ),
          ), */
          Container(
            height: MediaQuery.of(context).size.height / 3,
            width: double.infinity,
            color: Colors.transparent,
          )
        ],
      ),
    );
  }

  openInfo(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        titlePadding: const EdgeInsets.only(left: 80, top: 30),
        title: const Text(
          "Bmi Calculator",
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Created by Tiny Studio",
              style: GoogleFonts.ubuntuMono(
                textStyle: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              child: const Text(
                "Bmi calculator app helps you for detect your bmi and learn what weight should you have, ",
                softWrap: true,
                style: TextStyle(fontWeight: FontWeight.w300),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
