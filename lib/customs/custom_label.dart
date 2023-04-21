import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomLabel extends StatelessWidget {
  final String title;
  final bool seeAll;
  final Color titleColor;
  final Color textSeeAllColor;
  final double topHeight;

  const CustomLabel({
    required this.title,
    required this.seeAll,
    this.titleColor = CustomColors.corVinho,
    this.textSeeAllColor = Colors.black,
    this.topHeight = 24.0,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: topHeight,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20.0,
              color: titleColor,
            ),
          ),
          if (seeAll)
            Text(
              'Ver todos',
              style: TextStyle(
                fontSize: 16.0,
                color: textSeeAllColor,
              ),
            ),
        ],
      ),
    );
  }
}
