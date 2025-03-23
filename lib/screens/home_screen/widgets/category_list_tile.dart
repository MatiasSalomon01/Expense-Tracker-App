import 'package:expense_tracket_app/constants/constants.dart';
import 'package:expense_tracket_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CategoryListTile extends StatelessWidget {
  const CategoryListTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.amount,
    required this.percent,
    required this.leadingColor,
    required this.icon,
  });

  final String title;
  final String subtitle;
  final int amount;
  final int percent;
  final Color leadingColor;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: leadingColor,
        maxRadius: 24,
        child: Icon(icon, color: AppColors.black),
      ),
      title: Text(
        title,
        style: TextStyle(
          color: AppColors.black,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(color: AppColors.grey, fontWeight: FontWeight.w400),
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextMoney(amount: amount, fontSize: 16),
          Text(
            '$percent%',
            style: TextStyle(
              fontSize: 14,
              color: AppColors.grey,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
