import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:icoma/Const/color.dart';
import 'package:icoma/Core/cache_helper.dart';
import 'package:icoma/View/AuthCucle/signIn/view.dart';
import 'package:icoma/View/home_screen.dart';

// ignore: must_be_immutable
class SplashScreen extends StatefulWidget {
  Widget? page;

  String? token = CacheHelper.getData(key: 'token');
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    if (kDebugMode) {
      print(widget.token);
    }
    var duration = Duration(seconds: 5);
    return new Timer(duration, route);
  }

  route() {
    // SplashCubit().getData(context);
    if (widget.token != null) {
      widget.page = const HomeScreen();
    } else {
      widget.page = const SignInView();
    }
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => widget.page!));
  }

  initScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/images/shopapp.png"),
            const Padding(padding: EdgeInsets.only(top: 20.0)),
            // Text(
            //   " Shop App",
            //   style: TextStyle(fontSize: 20.0, color: Colors.white),
            // ),
            const Padding(padding: EdgeInsets.only(top: 20.0)),
            const CircularProgressIndicator(
              backgroundColor: Colors.white,
              strokeWidth: 1,
            )
          ],
        ),
      ),
    );
  }
}