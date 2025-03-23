import 'package:expense_tracket_app/constants/constants.dart';
import 'package:expense_tracket_app/widgets/text_money.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Future<dynamic> showModal(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    showDragHandle: true,
    scrollControlDisabledMaxHeightRatio: .9,
    backgroundColor: AppColors.white,
    builder:
        (context) => Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Expenses',
                style: TextStyle(
                  color: AppColors.grey,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 20),
              TextMoney(amount: 2512, fontSize: 50, fontSizeDollar: 25),
              SizedBox(height: 50),
              Text(
                'Add comment...',
                style: TextStyle(
                  color: AppColors.grey,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(5),
                child: StaggeredGrid.count(
                  crossAxisCount: 4,
                  mainAxisSpacing: 3,
                  crossAxisSpacing: 3,
                  children: [
                    StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                      child: Tile(child: buildNumber('1')),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                      child: Tile(child: buildNumber('2')),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                      child: Tile(child: buildNumber('3')),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                      child: Tile(
                        backgroundColor: AppColors.lightRed,
                        child: FaIcon(FontAwesomeIcons.deleteLeft),
                      ),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                      child: Tile(child: buildNumber('4')),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                      child: Tile(child: buildNumber('5')),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                      child: Tile(child: buildNumber('6')),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                      child: Tile(
                        backgroundColor: AppColors.lightBlue,
                        child: FaIcon(FontAwesomeIcons.calendar),
                      ),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                      child: Tile(child: buildNumber('7')),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                      child: Tile(child: buildNumber('8')),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                      child: Tile(child: buildNumber('9')),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 2,
                      child: Tile(
                        backgroundColor: AppColors.black,
                        child: FaIcon(
                          FontAwesomeIcons.check,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                      child: Tile(
                        backgroundColor: AppColors.lightYellow,
                        child: buildNumber('\$'),
                      ),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                      child: Tile(child: buildNumber('0')),
                    ),

                    StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                      child: Tile(child: buildNumber(',')),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
  );
}

Text buildNumber(String value) {
  return Text(
    value,
    style: TextStyle(
      color: AppColors.black,
      fontSize: 25,
      fontWeight: FontWeight.w600,
    ),
  );
}

class Tile extends StatelessWidget {
  const Tile({
    super.key,
    required this.child,
    this.backgroundColor = AppColors.lightGrey,
  });

  final Widget child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 90,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(35),
      ),
      child: Center(child: child),
    );
  }
}
