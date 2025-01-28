import 'package:ecommerce_app/model/favorite_model/favoriteModel.dart';

import 'package:ecommerce_app/view/login_screen/login_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white, statusBarIconBrightness: Brightness.dark));
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => Favoritemodel(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: Colors.white, scaffoldBackgroundColor: Colors.white),
        title: 'Flutter Demo',
        home: LoginPage());
  }
}
