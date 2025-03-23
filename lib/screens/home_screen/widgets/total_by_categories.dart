import 'package:expense_tracket_app/constants/data.dart';
import 'package:expense_tracket_app/screens/home_screen/bloc/tab_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TotalByCategories extends StatelessWidget {
  const TotalByCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TabBloc, TabState>(
      builder: (context, state) {
        return ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder:
              (context, index) =>
                  state is TabExpensesState
                      ? expensesTotalByCategoriesItems[index]
                      : incomeTotalByCategoriesItems[index],
          itemCount:
              state is TabExpensesState
                  ? expensesTotalByCategoriesItems.length
                  : incomeTotalByCategoriesItems.length,
        );
      },
    );
  }
}
