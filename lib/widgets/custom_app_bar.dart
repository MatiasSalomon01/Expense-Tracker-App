import 'package:expense_tracket_app/constants/constants.dart';
import 'package:expense_tracket_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      actionsPadding: EdgeInsets.zero,
      title: Column(
        children: [
          // Text('\$32.500', style: TextStyle(fontWeight: FontWeight.bold)),
          TextMoney(amount: 32500),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Total Balance',
                style: TextStyle(fontSize: 14, color: AppColors.grey),
              ),
              Icon(Icons.keyboard_arrow_down_rounded, color: AppColors.grey),
            ],
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,

              builder: (context) => Container(),
            );
          },
          icon: FaIcon(FontAwesomeIcons.plus, size: 20),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
