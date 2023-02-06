import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'firebase_options.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_travel_bwa/cubit/cubit_cubit.dart';
import 'package:flutter_travel_bwa/ui/pages/bonus_page.dart';
import 'package:flutter_travel_bwa/ui/pages/get_started_page.dart';
import 'package:flutter_travel_bwa/ui/pages/main_page.dart';
import 'package:flutter_travel_bwa/ui/pages/seat_page.dart';
import 'package:flutter_travel_bwa/ui/pages/sign_up_page.dart';
import 'package:flutter_travel_bwa/ui/pages/splash_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CubitCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/get-started': (context) => GetStartedPage(),
          '/sign-up': (context) => SignUpPage(),
          '/bonus': (context) => BonusPage(),
          '/main': (context) => MainPage(),
          '/seat-page': (context) => SeatPage(),
        },
      ),
    );
  }
}
