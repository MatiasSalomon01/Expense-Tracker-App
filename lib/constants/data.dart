import 'package:expense_tracket_app/constants/constants.dart';
import 'package:expense_tracket_app/screens/home_screen/widgets/widgets.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

const expensesTotalByCategoriesItems = [
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
const incomeTotalByCategoriesItems = [
  CategoryListTile(
    icon: Icons.card_giftcard_rounded,
    leadingColor: AppColors.lightPurple,
    title: 'Gifts',
    subtitle: 'Cash',
    amount: 546,
    percent: 23,
  ),
  CategoryListTile(
    icon: Icons.shopping_bag_outlined,
    leadingColor: AppColors.lightGreen,
    title: 'Shopping',
    subtitle: 'Card',
    amount: 312,
    percent: 12,
  ),
  CategoryListTile(
    icon: Icons.local_pizza_outlined,
    leadingColor: AppColors.lightRed,
    title: 'Food',
    subtitle: 'Card',
    amount: 120,
    percent: 43,
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

var expensesBarGroup = [
  BarChartGroupData(
    x: 0,
    barRods: [BarChartRodData(toY: 12, color: AppColors.lightRed, width: 18)],
    showingTooltipIndicators: [0],
  ),
  BarChartGroupData(
    x: 1,
    barRods: [BarChartRodData(toY: 7, color: AppColors.lightBlue, width: 18)],
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
    barRods: [BarChartRodData(toY: 32, color: AppColors.lightGreen, width: 18)],
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
      BarChartRodData(toY: 7, color: AppColors.lightTurquoise, width: 18),
    ],
    showingTooltipIndicators: [0],
  ),
  BarChartGroupData(
    x: 6,
    barRods: [BarChartRodData(toY: 13, color: AppColors.lightPink, width: 18)],
    showingTooltipIndicators: [0],
  ),
  BarChartGroupData(
    x: 7,
    barRods: [BarChartRodData(toY: 5, color: AppColors.lightOrange, width: 18)],
    showingTooltipIndicators: [0],
  ),
];

var incomeBarGroup = [
  BarChartGroupData(
    x: 0,
    barRods: [BarChartRodData(toY: 31, color: AppColors.lightRed, width: 18)],
    showingTooltipIndicators: [0],
  ),
  BarChartGroupData(
    x: 1,
    barRods: [BarChartRodData(toY: 21, color: AppColors.lightBlue, width: 18)],
    showingTooltipIndicators: [0],
  ),
  BarChartGroupData(
    x: 2,
    barRods: [
      BarChartRodData(toY: 13, color: AppColors.lightYellow, width: 18),
    ],
    showingTooltipIndicators: [0],
  ),
  BarChartGroupData(
    x: 3,
    barRods: [BarChartRodData(toY: 18, color: AppColors.lightGreen, width: 18)],
    showingTooltipIndicators: [0],
  ),
  BarChartGroupData(
    x: 4,
    barRods: [
      BarChartRodData(toY: 26, color: AppColors.lightPurple, width: 18),
    ],
    showingTooltipIndicators: [0],
  ),
  BarChartGroupData(
    x: 5,
    barRods: [
      BarChartRodData(toY: 8, color: AppColors.lightTurquoise, width: 18),
    ],
    showingTooltipIndicators: [0],
  ),
  BarChartGroupData(
    x: 6,
    barRods: [BarChartRodData(toY: 16, color: AppColors.lightPink, width: 18)],
    showingTooltipIndicators: [0],
  ),
  BarChartGroupData(
    x: 7,
    barRods: [BarChartRodData(toY: 6, color: AppColors.lightOrange, width: 18)],
    showingTooltipIndicators: [0],
  ),
];
