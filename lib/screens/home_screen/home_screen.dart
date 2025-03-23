import 'package:expense_tracket_app/constants/constants.dart';
import 'package:expense_tracket_app/screens/home_screen/bloc/tab_bloc.dart';
import 'package:expense_tracket_app/screens/home_screen/widgets/widgets.dart';
import 'package:expense_tracket_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      drawer: Drawer(),
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: BlocProvider(
          create: (context) => TabBloc(),
          child: ListView(
            children: [
              SizedBox(height: 8),
              Center(child: CustomTabBar()),
              SizedBox(height: 50),
              SizedBox(height: 230, child: PercentageBarChart()),
              SizedBox(height: 15),
              TotalBreakdown(),
              TotalByCategories(),
            ],
          ),
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
