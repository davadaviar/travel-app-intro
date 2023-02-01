import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class CustomBottomNavbarItem extends StatelessWidget {
  final String imgUrl;
  final bool isSelected;

  const CustomBottomNavbarItem(
      {Key? key, required this.imgUrl, this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(),
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                imgUrl,
              ),
            ),
          ),
        ),
        Container(
          width: 30,
          height: 4,
          decoration: BoxDecoration(
            color: isSelected ? kPrimaryColor : kTransparentColor,
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ],
    );
  }
}
