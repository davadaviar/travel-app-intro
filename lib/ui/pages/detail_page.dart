import 'package:flutter/material.dart';
import 'package:flutter_travel_bwa/ui/widgets/custom_bottom_button.dart';
import 'package:flutter_travel_bwa/ui/widgets/custom_interest_item.dart';
import 'package:flutter_travel_bwa/ui/widgets/custom_photo_gallery.dart';
import '../../shared/theme.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget backgorundImage() {
      return Container(
        width: double.infinity,
        height: 450,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image_destination1.png'),
            fit: BoxFit.cover,
          ),
        ),
      );
    }

    ;

    Widget customOverlay() {
      return Container(
        width: double.infinity,
        height: 214,
        margin: EdgeInsets.only(top: 236),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                kWhiteColor.withOpacity(0),
                Colors.black.withOpacity(0.95),
              ]),
        ),
      );
    }

    ;

    Widget detailContent() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          children: [
            // Note : Emblem Icon
            Container(
              width: double.infinity,
              height: 24,
              margin: EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icon_emblem.png'),
                ),
              ),
            ),

            // Note : Title Detail
            Container(
              margin: EdgeInsets.only(
                top: 240,
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
                          'Grand Canal',
                          style: whiteTextStyle.copyWith(
                            fontSize: 24,
                            fontWeight: bold,
                          ),
                        ),
                        Text(
                          'Venice, Italy',
                          style: whiteTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: light,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icon_star.png',
                          width: 25,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '4.8',
                          style: whiteTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: semiBold,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),

            // Note : About Detail
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: 20,
                left: defaultMargin,
                right: defaultMargin,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Berada di jalur jalan provinsi yang menghubungkan Denpasar Singaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.',
                    style: greyTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: regular,
                      height: 2,
                    ),
                  ),

                  // Note : Photo Gallery
                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Photos',
                          style: blackTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: semiBold,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            CustomPhotoGallery(
                              imgUrl: 'assets/image_photo1.png',
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            CustomPhotoGallery(
                              imgUrl: 'assets/image_photo2.png',
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            CustomPhotoGallery(
                              imgUrl: 'assets/image_photo3.png',
                            ),
                          ],
                        ),

                        // Note : Interest Detail
                        Container(
                          margin: EdgeInsets.only(top: 20, bottom: 50),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Interest',
                                style: blackTextStyle.copyWith(
                                  fontSize: 18,
                                  fontWeight: semiBold,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      CustomInterestItem(
                                        textInterestItem: 'Kids Park',
                                      ),
                                      SizedBox(
                                        width: 80,
                                      ),
                                      CustomInterestItem(
                                        textInterestItem: 'City Museum',
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      CustomInterestItem(
                                        textInterestItem: 'Honor Bridge',
                                      ),
                                      SizedBox(
                                        width: 50,
                                      ),
                                      CustomInterestItem(
                                        textInterestItem: 'Central Mall',
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),

            // Note : Book Button
            CustomBottomButton(),
          ],
        ),
      );
    }

    ;

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                backgorundImage(),
                customOverlay(),
                detailContent(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
