import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:icoma/Core/bloc_observer.dart';
import 'package:icoma/Core/dio_helper.dart';
import 'package:icoma/View/Splash/splash_screen.dart';

void main()async  {
  WidgetsFlutterBinding.ensureInitialized();
  // Bloc.observer = MyBlocObserver();
  BlocOverrides.runZoned(
        () {
      runApp(const MyApp());
    },
    blocObserver: MyBlocObserver(),
  );
  GetStorage.init();
  DioHelper.init();
  // await CashHelper.init();
  // runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

