import 'package:expense_tracket_app/constants/constants.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar>
    with SingleTickerProviderStateMixin {
  late final TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: AppColors.lightGrey,
      ),
      child: TabBar(
        controller: controller,
        dividerHeight: 0,
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: BoxDecoration(
          color: AppColors.black,
          borderRadius: BorderRadius.circular(50),
        ),
        tabAlignment: TabAlignment.center,
        labelPadding: EdgeInsets.symmetric(vertical: 7, horizontal: 25),
        labelColor: AppColors.white,
        unselectedLabelColor: AppColors.black,
        overlayColor: WidgetStatePropertyAll(Colors.transparent),
        tabs: [Text('Expenses'), Text('Income')],
      ),
    );
  }
}
