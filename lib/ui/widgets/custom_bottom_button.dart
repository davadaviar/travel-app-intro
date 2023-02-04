import 'package:flutter/material.dart';
import 'package:flutter_travel_bwa/ui/widgets/custom_button.dart';
import '../../shared/theme.dart';

class CustomBottomButton extends StatelessWidget {
  const CustomBottomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(
        top: 20,
      ),
      padding: EdgeInsets.symmetric(
        vertical: 15,
        horizontal: defaultMargin,
      ),
      decoration: BoxDecoration(
        color: kWhiteColor,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'IDR 30.000.000',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: bold,
                  ),
                ),
                Text(
                  'Per Seat',
                  style: greyTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: light,
                  ),
                )
              ],
            ),
          ),
          CustomButton(
            title: 'Book Now',
            width: 150,
            margin: EdgeInsets.only(
              top: 10,
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/seat-page');
            },
          ),
        ],
      ),
    );
  }
}
