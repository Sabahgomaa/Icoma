import 'package:flutter/material.dart';
import 'package:icoma/Core/cache_helper.dart';
import 'package:icoma/View/Splash/splash_screen.dart';

void main()async  {
  WidgetsFlutterBinding.ensureInitialized();
  // Bloc.observer = MyBlocObserver();
  await CacheHelper.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

