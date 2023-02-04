import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class CustomSeatItem extends StatelessWidget {
  // Note : 0.Available, 1.Selected, 2.Unavailable
  final int status;

  const CustomSeatItem({Key? key, required this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    backGround() {
      switch (status) {
        case 0:
          return kAvailableColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kUnavailableColor;
        default:
          return kUnavailableColor;
      }
    }

    ;

    borderColor() {
      switch (status) {
        case 0:
          return kPrimaryColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kUnavailableColor;
        default:
          return kUnavailableColor;
      }
    }

    childText() {
      switch (status) {
        case 0:
          return SizedBox();
        case 1:
          return Center(
            child: Text(
              'YOU',
              style: whiteTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
          );
        case 2:
          return SizedBox();
        default:
          return SizedBox();
      }
    }

    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: backGround(),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: borderColor(),
        ),
      ),
      child: childText(),
    );
  }
}
