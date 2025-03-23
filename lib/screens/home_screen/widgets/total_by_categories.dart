import 'package:expense_tracket_app/constants/data.dart';
import 'package:flutter/material.dart';

class TotalByCategories extends StatelessWidget {
  const TotalByCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => totalByCategoriesItems[index],
      itemCount: totalByCategoriesItems.length,
    );
  }
}
