import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_travel_bwa/ui/pages/get_started_page.dart';
import '../../shared/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/get-started');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.only(bottom: 50),
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  'assets/icon_plane.png',
                ),
              )),
            ),
            Text('AIRPLANE',
                style: whiteTextStyle.copyWith(
                  fontSize: 32,
                  fontWeight: medium,
                  letterSpacing: 10,
                ))
          ],
        ),
      ),
    );
  }
}
