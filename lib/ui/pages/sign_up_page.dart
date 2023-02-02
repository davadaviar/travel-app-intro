import 'package:flutter/material.dart';
import 'package:flutter_travel_bwa/ui/widgets/custom_button.dart';
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
        return Container(
          margin: EdgeInsets.only(top: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Full Name',
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Fill your full name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    borderSide: BorderSide(
                      color: kPrimaryColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }

      ;

      Widget emailInput() {
        return Container(
          margin: EdgeInsets.only(top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Email Address'),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Fill your email address',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    borderSide: BorderSide(
                      color: kPrimaryColor,
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      }

      ;

      Widget passwordInput() {
        return Container(
          margin: EdgeInsets.only(top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Password'),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Fill your password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    borderSide: BorderSide(
                      color: kPrimaryColor,
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      }

      ;

      Widget registerButton() {
        return CustomButton(
          title: 'Register',
          width: 320,
          margin: EdgeInsets.only(top: 30),
          onPressed: () {
            Navigator.pushNamed(context, '/main');
          },
        );
      }

      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
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

    ;

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
            scrollDirection: Axis.vertical,
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
