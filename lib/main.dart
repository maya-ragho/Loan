import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loan/drawer/raise_%20request/call.dart';
import 'package:loan/drawer/raise_%20request/request.dart';
import 'package:loan/starting_screen/intro_screen.dart';
import 'package:loan/starting_screen/phone_auth.dart';
import 'package:loan/starting_screen/signup_page.dart';
import 'drawer/raise_ request/request_registration.dart';
import 'firebase_options.dart';
import 'home_page.dart';

Future<void> main() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.grey
  ));
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigoAccent),
        useMaterial3: true,
      ),
      home: SignUp()
    );
  }
}
