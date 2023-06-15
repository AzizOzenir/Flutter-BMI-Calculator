import 'package:bmi_calculator/exports.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const PreferredSize(
        child: HomeAppbar(),
        preferredSize: Size.fromHeight(kToolbarHeight),
      ),
      drawer: HomeDrawer(
        date: Provider.of<MainController>(context).date,
      ),
      floatingActionButton: const HomeFab(),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      body: const HomeBody(),
    );
  }
}
