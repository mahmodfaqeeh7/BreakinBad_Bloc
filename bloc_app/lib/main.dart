import 'package:flutter/material.dart';
import 'package:bloc_app/presentation/screens/chars_screen.dart';
import 'package:bloc_app/app_router.dart';
void main() {
  runApp(MyApp(appRouter: AppRouter()),);
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter ;
  const MyApp({super.key, required this.appRouter});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generate ,
        );


  }
}
