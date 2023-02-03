import 'package:flutter/material.dart';
import 'package:flutter_travel_bwa/ui/pages/detail_page.dart';
import '../../shared/theme.dart';

class CustomCardDestination extends StatelessWidget {
  final String name;
  final String city;
  final String imgUrl;
  final double rate;

  const CustomCardDestination(
      {Key? key,
      required this.name,
      required this.city,
      required this.imgUrl,
      this.rate = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(),
          ),
        );
      },
      child: Container(
        width: 220,
        height: 323,
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultRadius),
          color: kWhiteColor,
        ),
        child: Column(
          children: [
            Container(
              width: 180,
              height: 220,
              margin: EdgeInsets.only(
                top: 15,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage(imgUrl),
                ),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 70,
                  height: 25,
                  decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(defaultRadius),
                      )),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icon_star.png',
                        width: 20,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        rate.toString(),
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: bold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.only(
                  top: 10,
                  left: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: blackTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      city,
                      style: greyTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: light,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
