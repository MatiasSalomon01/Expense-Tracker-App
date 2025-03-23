import 'package:expense_tracket_app/constants/constants.dart';
import 'package:expense_tracket_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class TotalBreakdownItem extends StatelessWidget {
  const TotalBreakdownItem({
    super.key,
    required this.title,
    required this.amount,
  });

  final String title;
  final int amount;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 90,
        decoration: BoxDecoration(
          color: AppColors.lightGrey,
          borderRadius: BorderRadius.circular(35),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                color: AppColors.grey,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 8),
            TextMoney(amount: amount),
          ],
        ),
      ),
    );
  }
}
