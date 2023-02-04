import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class CustomDetailItem extends StatelessWidget {
  final String title;
  final String valueTitle;
  final Color valueColor;

  const CustomDetailItem(
      {Key? key,
      required this.title,
      required this.valueTitle,
      required this.valueColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 15,
      ),
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icon_check.png'),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: greyTextStyle.copyWith(
              fontSize: 16,
              fontWeight: light,
            ),
          ),
          Spacer(),
          Text(
            valueTitle,
            style: blackTextStyle.copyWith(
              color: valueColor,
              fontSize: 16,
              fontWeight: semiBold,
            ),
          )
        ],
      ),
    );
  }
}
