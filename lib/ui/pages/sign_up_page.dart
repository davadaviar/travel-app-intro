import 'package:flutter/material.dart';
import 'package:flutter_travel_bwa/ui/widgets/custom_button.dart';
import 'package:flutter_travel_bwa/ui/widgets/custom_text_form_field.dart';
import '../../shared/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 10),
        child: Text(
          'Join Us and get \nyour next journey',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    ;

    Widget inputSection() {
      Widget nameInput() {
        return CustomTextFormField(
          title: 'Full Name',
          hintText: 'Fill your full name',
        );
      }

      ;

      Widget emailInput() {
        return CustomTextFormField(
            title: 'Email Address', hintText: 'Fill your email address');
      }

      ;

      Widget passwordInput() {
        return CustomTextFormField(
          title: 'Password',
          hintText: 'Fill your password',
          obscureText: true,
        );
      }

      ;

      Widget registerButton() {
        return CustomButton(
          title: 'Register',
          width: 320,
          margin: EdgeInsets.only(top: 50),
          onPressed: () {
            Navigator.pushNamed(context, '/bonus');
          },
        );
      }

      return Container(
        margin: EdgeInsets.only(top: 20, bottom: 30),
        padding: EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 20,
        ),
        decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(defaultRadius)),
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            passwordInput(),
            registerButton(),
          ],
        ),
      );
    }

    Widget termsButton() {
      return Center(
        child: Container(
          margin: EdgeInsets.only(
            top: 50,
            bottom: 30,
          ),
          child: Text(
            'Terms & Conditions',
            style: greyTextStyle.copyWith(
                fontSize: 14,
                fontWeight: light,
                decoration: TextDecoration.underline),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: ListView(
            children: [
              header(),
              inputSection(),
              termsButton(),
            ],
          ),
        ),
      ),
    );
  }
}
