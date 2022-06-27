//import 'dart:io';
import 'package:flutter/material.dart';
import 'package:icoma/Const/color.dart';
import 'package:icoma/Core/post_Services.dart';
import 'package:icoma/View/MainScreens/Copmonent/bottom_nav_bar.dart';
import 'package:icoma/View/MainScreens/Copmonent/rounded_app_bar.dart';



class PateintInfo extends StatefulWidget {
  const PateintInfo({ Key? key }) : super(key: key);

  @override
  State<PateintInfo> createState() => _PateintInfoState();
}

class _PateintInfoState extends State<PateintInfo> {
  var fullName =TextEditingController();
  var age =TextEditingController();
  var nationality =TextEditingController();
  var geneticHistory =TextEditingController();
  var phoneNumber =TextEditingController();
  var testResult=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: RoundAppBar(),
      body: Stack(
        children: [
          Container(
            color: Colors.white,
            //child: Center(
            child: ListView(children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
                child: TextField(
                  controller: fullName,
                  decoration: const InputDecoration(
                    hintText: 'Full Name',
                    hintStyle: TextStyle(
                        color: kTextColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                    enabledBorder: UnderlineInputBorder(),
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    // optional flex property if flex is 1 because the default flex is 1
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 20, 10, 0),
                      child: TextField(
                        controller: age,
                        decoration: const InputDecoration(
                          hintText: 'Age',
                          hintStyle: TextStyle(
                              color: kTextColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                          enabledBorder: UnderlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Expanded(
                    // optional flex property if flex is 1 because the default flex is 1
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20 ,30, 0),
                      child: TextField(
                        controller: nationality,
                        decoration: const InputDecoration(
                          hintText: 'Nationality',
                          hintStyle: TextStyle(
                              color: kTextColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                          enabledBorder: UnderlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                child: TextField(
                  controller: geneticHistory,
                  decoration: const InputDecoration(
                    hintText: 'Genetic History Of The Disease',
                    hintStyle: TextStyle(
                        color: kTextColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                    enabledBorder: UnderlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                child: TextField(
                  controller: phoneNumber,
                  decoration: const InputDecoration(
                    hintText: 'Phone Number',
                    hintStyle: TextStyle(
                        color: kTextColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                    enabledBorder: UnderlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                child: TextField(
                  controller: testResult,
                  decoration: const InputDecoration(
                    hintText: 'The Test Result',
                    hintStyle: TextStyle(
                        color: kTextColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                    enabledBorder: UnderlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 10, 40, 0),
                child: Row(
                  children: [
                    ElevatedButton.icon(onPressed: (){
                    },
                        icon: const Icon(Icons.home,color: Colors.black,),

                        label:const Text('Capture Photo',
                          style: TextStyle(color: kTextColor),),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)
                            )
                            )
                        )
                    ),
                    const Spacer(),
                    ElevatedButton.icon(onPressed:(){ }

                        , icon: const Icon(Icons.camera_alt_outlined), label: const Text('upload Photo',
                          style: TextStyle(color: kTextColor),),

                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)
                            )
                            )
                        )
                    )
                  ],
                ),
              )
              ,
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 13, 20, 10),
                  child: SizedBox(
                    width: 110,
                    child: TextButton(onPressed: (){
                      PostPateint(fullName:fullName.text, age:age.text, nationality:nationality.text, geneticHistory:geneticHistory.text, phoneNumber:phoneNumber.text, testResult:testResult.text).postPateintInfo();
                    }, child: const Text('Save'),
                      style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0)
                          ) ,
                          primary:kBackgroundColor,
                          backgroundColor:  kPrimaryColor
                      ),
                    ),
                  ),
                ),
              )

            ]),
          ),
          //  ),
          const MyBottomNavBar()
        ],
      ),
    );
  }
}