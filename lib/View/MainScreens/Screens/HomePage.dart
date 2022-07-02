import 'package:flutter/material.dart';
import 'package:icoma/Const/color.dart';
import 'package:icoma/View/MainScreens/Copmonent/bottom_nav_bar.dart';
import 'package:icoma/View/MainScreens/Copmonent/card.dart';
import 'package:icoma/View/MainScreens/Copmonent/rounded_app_bar.dart';
class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  // @override
  // State<Home> createState() => _HomeState();
  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar:RoundAppBar(),
      body:Stack(
          children:const [ Center(
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding:EdgeInsets.symmetric(vertical: 10.0) ,
                child:HomePage()
            ),
          ),
            MyBottomNavBar()
          ]
      ),

    );

  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> homeIcon = [
    "assets/icons/addicon.svg",
    "assets/icons/groupicon.svg",
    "assets/images/instruction.png"
  ];
  List<String> text = ['add Pateint', 'Pateints', 'instruction'];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(5),
          child: HomeCard(homeIcon[0], text[0]),
        ),
        Container(
          margin: const EdgeInsets.all(5),
          child: HomeCard(homeIcon[1], text[1]),
        ),
        Container(
          margin: const EdgeInsets.all(5),
          child: HomeCard(homeIcon[2], text[2]),
        ),
      ],
    );
  }
}