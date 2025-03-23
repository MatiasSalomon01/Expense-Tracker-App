import 'package:expense_tracket_app/screens/home_screen/bloc/tab_bloc.dart';
import 'package:expense_tracket_app/screens/home_screen/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TotalBreakdown extends StatelessWidget {
  const TotalBreakdown({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TabBloc, TabState>(
      listener: (_, _) {},
      builder: (context, state) {
        return Row(
          children:
              state is TabExpensesState
                  ? [
                    TotalBreakdownItem(title: 'Day', amount: 52),
                    SizedBox(width: 5),
                    TotalBreakdownItem(title: 'Week', amount: 403),
                    SizedBox(width: 5),
                    TotalBreakdownItem(title: 'Month', amount: 1612),
                  ]
                  : [
                    TotalBreakdownItem(title: 'Day', amount: 78),
                    SizedBox(width: 5),
                    TotalBreakdownItem(title: 'Week', amount: 513),
                    SizedBox(width: 5),
                    TotalBreakdownItem(title: 'Month', amount: 1203),
                  ],
        );
      },
    );
  }
}
