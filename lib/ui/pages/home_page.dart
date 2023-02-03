import 'package:flutter/material.dart';
import 'package:flutter_travel_bwa/ui/widgets/custom_destination_card.dart';
import 'package:flutter_travel_bwa/ui/widgets/custom_new_destination.dart';
import '../../shared/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Howdy, \nMichaella Jane',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: bold,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Where to fly today?',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/image_profile.png'),
                ),
              ),
            )
          ],
        ),
      );
    }

    ;

    Widget popularDestination() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            CustomCardDestination(
              name: 'Grand Canal',
              city: 'Venice, Italy',
              imgUrl: 'assets/image_destination1.png',
              rate: 4.8,
            ),
            CustomCardDestination(
              name: 'Aegean Sea',
              city: 'Santorini, Greece',
              imgUrl: 'assets/image_destination2.png',
              rate: 5.0,
            ),
            CustomCardDestination(
              name: 'French Riviera',
              city: 'Monaco',
              imgUrl: 'assets/image_destination3.png',
              rate: 4.8,
            ),
            CustomCardDestination(
              name: 'Gyeongbokgung',
              city: 'Seoul, South Korea',
              imgUrl: 'assets/image_destination4.png',
              rate: 4.8,
            ),
            CustomCardDestination(
              name: 'Merlion Park',
              city: 'Singapura, Singapore',
              imgUrl: 'assets/image_destination5.png',
              rate: 4.8,
            ),
          ],
        ),
      );
    }

    ;

    Widget newDestination() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New This Year',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: bold,
              ),
            ),
            CustomNewDestination(),
            CustomNewDestination(),
            CustomNewDestination(),
            CustomNewDestination(),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        popularDestination(),
        newDestination(),
      ],
    );
  }
}
