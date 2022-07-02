import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icoma/Const/color.dart';
import 'package:icoma/View/MainScreens/Copmonent/my_darwer.dart';
import 'package:icoma/View/MainScreens/Screens/HomePage.dart';
import 'package:icoma/View/MainScreens/Screens/addpateint.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({ Key? key }) : super(key: key);

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  @override
  Widget build(BuildContext context) {

    return Align(
      alignment: const Alignment(0,1),
      child: Container(
        margin: const EdgeInsets.only(bottom: kDefaultPadding / 2),
        width: 350,
        height: 80,
        decoration: BoxDecoration(
          color: kBackgroundColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.4),
              offset: const Offset(0, 4),
              blurRadius: 4,
            )
          ],
          borderRadius: BorderRadius.circular(40),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Home( )),
                );
              },
              icon:  SvgPicture.asset("assets/icons/homeicon.svg"),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AddPateint( )),
                );
              },
              icon:  SvgPicture.asset("assets/icons/patientListicon.svg"),
            ),
            IconButton(
              onPressed: () {},
              icon:  SvgPicture.asset("assets/icons/notficationicon.svg"),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyDrawer(),),);
              },
              icon:  SvgPicture.asset("assets/icons/drawericon.svg"),
            ),
          ],
        ),
      ),
    );
  }
}