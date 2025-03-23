import 'package:expense_tracket_app/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TextMoney extends StatelessWidget {
  const TextMoney({
    super.key,
    required this.amount,
    this.fontSize = 20,
    this.fontSizeDollar,
  });

  final int amount;
  final double fontSize;
  final double? fontSizeDollar;

  @override
  Widget build(BuildContext context) {
    final formato = NumberFormat("#,###", "en_EN");

    return Text.rich(
      TextSpan(
        text: '\$',
        style: TextStyle(
          color: AppColors.grey,
          fontSize: fontSizeDollar ?? fontSize - 5,
          fontWeight: FontWeight.w500,
        ),
        children: [
          TextSpan(
            text: formato.format(amount),
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
