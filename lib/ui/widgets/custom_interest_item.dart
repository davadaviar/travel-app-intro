import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class CustomInterestItem extends StatelessWidget {
  final String textInterestItem;

  const CustomInterestItem({Key? key, required this.textInterestItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/icon_check.png',
          width: 20,
        ),
        SizedBox(
          width: 12,
        ),
        Text(
          textInterestItem,
          style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: regular,
          ),
        )
      ],
    );
  }
}
