import 'package:expense_tracket_app/constants/constants.dart';
import 'package:expense_tracket_app/screens/home_screen/widgets/widgets.dart';
import 'package:flutter/material.dart';

class TotalByCategories extends StatelessWidget {
  TotalByCategories({super.key});

  final items = [
    CategoryListTile(
      icon: Icons.shopping_bag_outlined,
      leadingColor: AppColors.lightGreen,
      title: 'Shopping',
      subtitle: 'Cash',
      amount: 498,
      percent: 32,
    ),
    CategoryListTile(
      icon: Icons.card_giftcard_rounded,
      leadingColor: AppColors.lightPurple,
      title: 'Gifts',
      subtitle: 'Cash • Card',
      amount: 344,
      percent: 21,
    ),
    CategoryListTile(
      icon: Icons.local_pizza_outlined,
      leadingColor: AppColors.lightRed,
      title: 'Food',
      subtitle: 'Cash',
      amount: 230,
      percent: 12,
    ),
    CategoryListTile(
      icon: Icons.shopping_bag_outlined,
      leadingColor: AppColors.lightGreen,
      title: 'Shopping',
      subtitle: 'Cash',
      amount: 498,
      percent: 32,
    ),
    CategoryListTile(
      icon: Icons.card_giftcard_rounded,
      leadingColor: AppColors.lightPurple,
      title: 'Gifts',
      subtitle: 'Cash • Card',
      amount: 344,
      percent: 21,
    ),
    CategoryListTile(
      icon: Icons.local_pizza_outlined,
      leadingColor: AppColors.lightRed,
      title: 'Food',
      subtitle: 'Cash',
      amount: 230,
      percent: 12,
    ),
    CategoryListTile(
      icon: Icons.shopping_bag_outlined,
      leadingColor: AppColors.lightGreen,
      title: 'Shopping',
      subtitle: 'Cash',
      amount: 498,
      percent: 32,
    ),
    CategoryListTile(
      icon: Icons.card_giftcard_rounded,
      leadingColor: AppColors.lightPurple,
      title: 'Gifts',
      subtitle: 'Cash • Card',
      amount: 344,
      percent: 21,
    ),
    CategoryListTile(
      icon: Icons.local_pizza_outlined,
      leadingColor: AppColors.lightRed,
      title: 'Food',
      subtitle: 'Cash',
      amount: 230,
      percent: 12,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => items[index],
      separatorBuilder: (context, index) => Container(),
      itemCount: items.length,
    );
  }
}
