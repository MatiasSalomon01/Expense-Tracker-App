import 'package:expense_tracket_app/constants/constants.dart';
import 'package:flutter/material.dart';

class TextMoney extends StatelessWidget {
  const TextMoney({super.key, required this.amount, this.fontSize = 20});

  final int amount;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: '\$',
        style: TextStyle(
          color: AppColors.grey,
          fontSize: fontSize - 5,
          fontWeight: FontWeight.w500,
        ),
        children: [
          TextSpan(
            text: '$amount',
            style: TextStyle(
              color: AppColors.black,
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
