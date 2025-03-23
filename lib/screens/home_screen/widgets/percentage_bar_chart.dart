import 'package:expense_tracket_app/constants/constants.dart';
import 'package:expense_tracket_app/constants/data.dart';
import 'package:expense_tracket_app/screens/home_screen/bloc/tab_bloc.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PercentageBarChart extends StatelessWidget {
  const PercentageBarChart({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TabBloc, TabState>(
      listener: (_, _) {},
      builder: (context, state) {
        return BarChart(
          BarChartData(
            titlesData: FlTitlesData(
              show: true,
              leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              rightTitles: AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
              topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 30,
                  getTitlesWidget: getTitles,
                ),
              ),
            ),
            borderData: FlBorderData(show: false),
            gridData: FlGridData(show: false),
            barTouchData: BarTouchData(
              touchTooltipData: BarTouchTooltipData(
                getTooltipColor: (_) => Colors.transparent,
                tooltipPadding: EdgeInsets.zero,
                tooltipMargin: 8,
                getTooltipItem:
                    (_, _, rod, _) => BarTooltipItem(
                      '${rod.toY.toInt().toString()}%',
                      TextStyle(fontWeight: FontWeight.bold),
                    ),
              ),
            ),
            barGroups:
                state is TabExpensesState ? expensesBarGroup : incomeBarGroup,
          ),
        );
      },
    );
  }

  Widget getTitles(double value, TitleMeta meta) {
    final style = TextStyle(color: AppColors.grey, fontWeight: FontWeight.w400);
    String text;
    switch (value.toInt()) {
      case 0:
        text = '1';
        break;
      case 1:
        text = '5';
        break;
      case 2:
        text = '8';
        break;
      case 3:
        text = '15';
        break;
      case 4:
        text = '20';
        break;
      case 5:
        text = '25';
        break;
      case 6:
        text = '28';
        break;
      default:
        text = '31';
        break;
    }
    return SideTitleWidget(meta: meta, child: Text(text, style: style));
  }
}
