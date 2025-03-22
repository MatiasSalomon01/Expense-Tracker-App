import 'package:expense_tracket_app/screens/home_screen/widgets/widgets.dart';
import 'package:flutter/material.dart';

class TotalBreakdown extends StatelessWidget {
  const TotalBreakdown({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TotalBreakdownItem(title: 'Day', amount: 52),
        SizedBox(width: 5),
        TotalBreakdownItem(title: 'Week', amount: 403),
        SizedBox(width: 5),
        TotalBreakdownItem(title: 'Month', amount: 1612),
      ],
    );
  }
}
