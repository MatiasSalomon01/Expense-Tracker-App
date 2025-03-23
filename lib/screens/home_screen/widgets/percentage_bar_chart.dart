import 'package:expense_tracket_app/constants/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PercentageBarChart extends StatelessWidget {
  const PercentageBarChart({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        // maxY: 32,
        titlesData: FlTitlesData(
          show: true,
          leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
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
                (group, groupIndex, rod, rodIndex) => BarTooltipItem(
                  '${rod.toY.toInt().toString()}%',
                  TextStyle(fontWeight: FontWeight.bold),
                ),
          ),
        ),
        barGroups: [
          BarChartGroupData(
            x: 0,
            barRods: [
              BarChartRodData(toY: 12, color: AppColors.lightRed, width: 18),
            ],
            showingTooltipIndicators: [0],
          ),
          BarChartGroupData(
            x: 1,
            barRods: [
              BarChartRodData(toY: 7, color: AppColors.lightBlue, width: 18),
            ],
            showingTooltipIndicators: [0],
          ),
          BarChartGroupData(
            x: 2,
            barRods: [
              BarChartRodData(toY: 15, color: AppColors.lightYellow, width: 18),
            ],
            showingTooltipIndicators: [0],
          ),
          BarChartGroupData(
            x: 3,
            barRods: [
              BarChartRodData(toY: 32, color: AppColors.lightGreen, width: 18),
            ],
            showingTooltipIndicators: [0],
          ),
          BarChartGroupData(
            x: 4,
            barRods: [
              BarChartRodData(toY: 21, color: AppColors.lightPurple, width: 18),
            ],
            showingTooltipIndicators: [0],
          ),
          BarChartGroupData(
            x: 5,
            barRods: [
              BarChartRodData(
                toY: 7,
                color: AppColors.lightTurquoise,
                width: 18,
              ),
            ],
            showingTooltipIndicators: [0],
          ),
          BarChartGroupData(
            x: 6,
            barRods: [
              BarChartRodData(toY: 13, color: AppColors.lightPink, width: 18),
            ],
            showingTooltipIndicators: [0],
          ),
          BarChartGroupData(
            x: 7,
            barRods: [
              BarChartRodData(toY: 5, color: AppColors.lightOrange, width: 18),
            ],
            showingTooltipIndicators: [0],
          ),
        ],
      ),
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
