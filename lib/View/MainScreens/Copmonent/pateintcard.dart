import 'package:flutter/material.dart';
import 'package:icoma/Const/color.dart';
import 'package:icoma/View/MainScreens/Screens/pateintprofile.dart';

class PateintCard extends StatefulWidget {
  final String pateintName;
  final int? pateintAge;

  // ignore: use_key_in_widget_constructors
  const PateintCard({this.pateintName = "", this.pateintAge});

  @override
  State<PateintCard> createState() => _PateintCardState();
}

class _PateintCardState extends State<PateintCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const PateintProfile()),
        );
      },
      child: SizedBox(
        height: 152,
        width: 157,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40.0),
            side: const BorderSide(
              color: Color(0xFF707070),
              width: 0.35,
            ),
          ),
          borderOnForeground: true,
          color: Colors.white,
          elevation: 30,
          shadowColor: const Color(0xFF707070),
          child: Container(
            constraints: const BoxConstraints(
              maxHeight: double.infinity,
            ),
            // child: Center(

                child: Card(
                  child: Column(
                    children: <Widget>[
                      Padding(
                          padding: const EdgeInsets.all(2),
                          child: Image.asset("assets/images/pateintimage.png")),
                      Container(
                          child: Text(widget.pateintName,
                              style: const TextStyle(
                                  color: kTextColor,
                                  fontSize: 16,
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold))),
                      Center(
                        child: Text(widget.pateintAge.toString() + " age",
                            style: const TextStyle(
                                color: kTextColor,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
    );
    // return Container(
    //    constraints: BoxConstraints(
    //     maxHeight: double.infinity,),
    // child: SizedBox(
    //   width: 157,
    //   height: 152,
    //   child: Card(
    //     shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(20.0),
    //       side: BorderSide(
    //     color:  Color(0xFF707070),
    //     width: 0.55,
    //   ),
    //     ),
    //     borderOnForeground: true,
    //     color:  Colors.white ,
    //     elevation: 20,
    //     shadowColor: Color(0xFF707070),
    //             child: Container(
    //                constraints: BoxConstraints(
    //                maxHeight: double.infinity,),
    //               child: Center(
    //                 child: Column(
    //                  children: <Widget>[
    //                    SvgPicture.asset("assets/icons/groupicon.svg"),
    //                    Center(child: Text(widget.pateintName, style: TextStyle(color: kTextColor,fontSize: 16 ,fontStyle:FontStyle.italic,fontWeight:FontWeight.bold))),
    //                   //  Padding(padding:EdgeInsets.fromLTRB(12, 10, 12, 10),
    //                   //  child: SvgPicture.asset("assets/icons/groupicon.svg"),
    //                   //  ),
    //                     // Padding(
    //                     //   padding: const EdgeInsets.all(8.0),
    //                     //   child: Center(child: Text(widget.pateintName, style: TextStyle(color: kTextColor,fontSize: 16 ,fontStyle: FontStyle.italic,fontWeight:FontWeight.bold))),
    //                     // ),
    //                     Center(child: Text(widget.pateintAge.toString()+" age", style: TextStyle(color: kTextColor,fontWeight:FontWeight.bold,fontStyle: FontStyle.italic )),) ,
    //                   ]),
    //               ),
    //             ),

    //   ),
    // )
    // );
  }
}
