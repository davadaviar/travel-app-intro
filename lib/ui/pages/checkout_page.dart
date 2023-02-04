import 'package:flutter/material.dart';
import 'package:flutter_travel_bwa/ui/widgets/custom_booking_detail_item.dart';
import 'package:flutter_travel_bwa/ui/widgets/custom_interest_item.dart';
import '../../shared/theme.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget route() {
      return Container(
        margin: EdgeInsets.only(
          top: 50,
        ),
        child: Column(
          children: [
            Container(
              width: 310,
              height: 70,
              margin: EdgeInsets.only(bottom: 15),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image_checkout.png'),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CGK',
                      style: blackTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      'Tangerang',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: light,
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'CDK',
                      style: blackTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      'Paris',
                      style: greyTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: light,
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      );
    }

    ;

    Widget checkoutDetail() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
        margin: EdgeInsets.only(top: 30),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/image_destination1.png'),
                    ),
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Grand Canal',
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: semiBold,
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Venice, Italy',
                        style: greyTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: light,
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/icon_star.png',
                      width: 15,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      '4.8',
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Booking Details',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                CustomDetailItem(
                  title: 'Traveler',
                  valueTitle: '2 Person',
                  valueColor: kBlackColor,
                ),
                CustomDetailItem(
                  title: 'Seat',
                  valueTitle: 'A3, B3',
                  valueColor: kBlackColor,
                ),
                CustomDetailItem(
                  title: 'Insurance',
                  valueTitle: 'YES',
                  valueColor: kGreenColor,
                ),
                CustomDetailItem(
                  title: 'Refundable',
                  valueTitle: 'NO',
                  valueColor: kRedColor,
                ),
                CustomDetailItem(
                  title: 'VAT',
                  valueTitle: '45%',
                  valueColor: kBlackColor,
                ),
                CustomDetailItem(
                  title: 'Price',
                  valueTitle: 'IDR 60.000.000',
                  valueColor: kBlackColor,
                ),
                CustomDetailItem(
                  title: 'Grand Total',
                  valueTitle: 'IDR 65.000.000',
                  valueColor: kPrimaryColor,
                ),
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          route(),
          checkoutDetail(),
        ],
      ),
    );
  }
}
