import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget bonusCard() {
      return Container(
        padding: EdgeInsets.all(30),
        width: 370,
        height: 230,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image_card.png'),
          ),
          boxShadow: [
            BoxShadow(
              color: kPrimaryColor.withOpacity(0.5),
              blurRadius: 50,
              offset: Offset(0, 10),
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: whiteTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: light,
                        ),
                      ),
                      Text(
                        'Daviar Saputra',
                        style: whiteTextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: bold,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 24,
                  height: 24,
                  margin: EdgeInsets.only(right: 6),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icon_plane.png'),
                    ),
                  ),
                ),
                Text(
                  'Pay',
                  style: whiteTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Balance',
              style: whiteTextStyle.copyWith(
                fontSize: 18,
                fontWeight: regular,
              ),
            ),
            Text(
              'Rp 300.000.000',
              style: whiteTextStyle.copyWith(
                fontSize: 24,
                fontWeight: bold,
              ),
            )
          ],
        ),
      );
    }

    ;

    Widget bonusDescription() {
      return Container(
        margin: EdgeInsets.only(top: 60),
        child: Column(
          children: [
            Text(
              'Big Bonus 🎉',
              style: blackTextStyle.copyWith(
                fontSize: 32,
                fontWeight: extraBold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'We give you early credit so that \nyou can buy a flight ticket',
              style: greyTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      );
    }

    ;

    Widget startedFlyButton() {
      return Container(
        margin: EdgeInsets.only(top: 70, bottom: 30),
        width: 220,
        height: 55,
        child: TextButton(
          style: TextButton.styleFrom(
            shadowColor: kPrimaryColor.withOpacity(0.5),
            elevation: 5,
            backgroundColor: kPrimaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(defaultRadius),
            ),
          ),
          onPressed: () {},
          child: Text(
            'Start Fly',
            style: whiteTextStyle.copyWith(
              fontSize: 18,
              fontWeight: medium,
            ),
          ),
        ),
      );
    }

    ;

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            bonusCard(),
            bonusDescription(),
            startedFlyButton(),
          ],
        ),
      ),
    );
  }
}
