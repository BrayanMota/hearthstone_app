import 'package:flutter/material.dart';

class CustomLabel extends StatelessWidget {
  final String title;
  final bool seeAll;

  const CustomLabel({
    required this.title,
    required this.seeAll,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 24.0,
            color: Colors.white,
          ),
        ),
        if (seeAll)
          const Text(
            'Ver todos',
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.white,
            ),
          ),
      ],
    );
  }
}
