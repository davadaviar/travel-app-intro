import 'package:flutter/material.dart';
import 'package:flutter_travel_bwa/ui/widgets/custom_seat_item.dart';
import '../../shared/theme.dart';

class SeatPage extends StatelessWidget {
  const SeatPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.only(
            left: defaultMargin,
            right: defaultMargin,
          ),
          child: Text(
            'Select Your \nFavorite Seat',
            style: blackTextStyle.copyWith(
              fontSize: 24,
              fontWeight: semiBold,
            ),
          ),
        ),
      );
    }

    ;

    Widget seatStatus() {
      return Container(
        margin: EdgeInsets.only(
          top: 20,
          left: defaultMargin,
          right: defaultMargin,
        ),

        // Note : Available
        child: Row(
          children: [
            Container(
              width: 16,
              height: 16,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icon_available.png'),
                ),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              'Available',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: regular,
              ),
            ),
            SizedBox(
              width: 15,
            ),
            // Note : Selected
            Container(
              width: 16,
              height: 16,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icon_selected.png'),
                ),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              'Selected',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: regular,
              ),
            ),
            SizedBox(
              width: 15,
            ),
            // Note : Unavailable
            Container(
              width: 16,
              height: 16,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icon_unavailable.png'),
                ),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              'Unavailable',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: regular,
              ),
            )
          ],
        ),
      );
    }

    ;

    Widget selectedSeat() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 22,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          children: [
            // Note : Seat
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'A',
                      style: greyTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: medium,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'B',
                      style: greyTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: medium,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      '',
                      style: greyTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: medium,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'C',
                      style: greyTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: medium,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'D',
                      style: greyTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: medium,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // Note : Seat 1

            Container(
              margin: EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomSeatItem(
                    status: 2,
                  ),
                  CustomSeatItem(
                    status: 2,
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        '1',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: regular,
                        ),
                      ),
                    ),
                  ),
                  CustomSeatItem(
                    status: 0,
                  ),
                  CustomSeatItem(
                    status: 2,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomSeatItem(
                    status: 0,
                  ),
                  CustomSeatItem(
                    status: 0,
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        '2',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: regular,
                        ),
                      ),
                    ),
                  ),
                  CustomSeatItem(
                    status: 0,
                  ),
                  CustomSeatItem(
                    status: 2,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomSeatItem(
                    status: 1,
                  ),
                  CustomSeatItem(
                    status: 1,
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        '3',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: regular,
                        ),
                      ),
                    ),
                  ),
                  CustomSeatItem(
                    status: 0,
                  ),
                  CustomSeatItem(
                    status: 0,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomSeatItem(
                    status: 0,
                  ),
                  CustomSeatItem(
                    status: 2,
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        '4',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: regular,
                        ),
                      ),
                    ),
                  ),
                  CustomSeatItem(
                    status: 0,
                  ),
                  CustomSeatItem(
                    status: 0,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomSeatItem(
                    status: 0,
                  ),
                  CustomSeatItem(
                    status: 0,
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                      child: Text(
                        '5',
                        style: greyTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: regular,
                        ),
                      ),
                    ),
                  ),
                  CustomSeatItem(
                    status: 2,
                  ),
                  CustomSeatItem(
                    status: 0,
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        children: [
          header(),
          seatStatus(),
          selectedSeat(),
        ],
      ),
    );
  }
}
