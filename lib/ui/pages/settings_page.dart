import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Text(
          'Settings Page',
          style: blackTextStyle.copyWith(
            fontSize: 20,
            fontWeight: medium,
          ),
        ),
      ),
    );
  }
}
