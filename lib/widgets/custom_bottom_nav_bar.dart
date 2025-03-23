import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kToolbarHeight,
      margin: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * .1,
      ),
      child: Row(
        children: [
          Expanded(
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.home_outlined),
            ),
          ),
          Expanded(
            child: IconButton(onPressed: () {}, icon: Icon(Icons.apps_rounded)),
          ),
          Expanded(
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.bar_chart_rounded),
            ),
          ),
          Expanded(
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.person_outline),
            ),
          ),
        ],
      ),
    );
  }
}
