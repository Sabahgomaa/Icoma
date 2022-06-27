import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:icoma/Const/color.dart';
import 'package:icoma/View/MainScreens/Screens/HomePage.dart';


class RoundAppBar extends StatelessWidget with PreferredSizeWidget {
  final double barHeight = 20;

  const RoundAppBar({Key? key}) : super(key: key);
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + barHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(

      backgroundColor: kPrimaryColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(48.0),
        ),
      ),
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/back_arrow.svg"),

        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Home( )),
          );
        },
      ),
      titleSpacing: 0.00,
      centerTitle: true,
      title:  Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(horizontal: defaultPadding),
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        height: 44,
        width: 500,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20)),

        child: Expanded(
          child: TextField(
            onChanged: (value) {},
            decoration: InputDecoration(
              hintText: "  Search",
              hintStyle: TextStyle(
                color: kPrimaryColor.withOpacity(0.5),
              ),
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              suffixIcon:const Icon(Icons.search_sharp,color: kTextColor,),
            ),
          ),
        ),
      ),

      actions: [


        Image.asset("assets/images/doctor.png")

      ],

    );
  }
}