import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:e_commerce_app/helper/app_router.dart';
import 'package:e_commerce_app/controller/card_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => CardController(),
      child: MaterialApp.router(
        theme: ThemeData(scaffoldBackgroundColor: Colors.white),

        routerConfig: router,
      ),
    );
  }
}
