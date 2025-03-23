import 'package:expense_tracket_app/constants/constants.dart';
import 'package:expense_tracket_app/screens/home_screen/widgets/widgets.dart';
import 'package:expense_tracket_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      drawer: Drawer(),
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(child: CustomTabBar()),
            SizedBox(height: 30),
            TotalBreakdown(),
            TotalByCategories(),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: kToolbarHeight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.home_outlined),
            Icon(Icons.apps_rounded),
            Icon(Icons.bar_chart_rounded),
            Icon(Icons.person_outline),
          ],
        ),
      ),
    );
  }
}
