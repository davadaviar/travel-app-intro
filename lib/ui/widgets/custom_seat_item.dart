import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class CustomSeatItem extends StatelessWidget {
  const CustomSeatItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: kUnavailableColor,
        borderRadius: BorderRadius.circular(16),
        ),
      );
  }
}