import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:icoma/Const/color.dart';
import 'package:icoma/Core/get_services.dart';
import 'package:icoma/Model/get.dart';
import 'package:icoma/View/MainScreens/Copmonent/bottom_nav_bar.dart';
import 'package:icoma/View/MainScreens/Copmonent/pateintcard.dart';
import 'package:icoma/View/MainScreens/Copmonent/rounded_app_bar.dart';
import 'package:icoma/View/MainScreens/Screens/pateintInfo.dart';

class AddPateint extends StatefulWidget {
  const AddPateint({Key? key}) : super(key: key);

  @override
  State<AddPateint> createState() => _AddPateintState();
}

class _AddPateintState extends State<AddPateint> {
  bool loading = true;
  List<User> users = [];

  getUserList() async {
    users = await UserService().getPateints();
    loading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getUserList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: const RoundAppBar(),
      body: Stack(
        children: [
          Scaffold(
            body: loading
                ? const Center(child: CircularProgressIndicator())
                : GridView.builder(
                    padding: const EdgeInsets.fromLTRB(40, 50, 40, 20),
                    itemCount: users.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(0),
                        child: PateintCard(
                          pateintName: " ${users[index].name}",
                          pateintAge: users[index].age,
                        ),
                      );
                    },
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1,
                    ),
                  ),
          ),
          Column(children: [
            const Spacer(),
            Row(children: [
              const Spacer(),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 30, 105),
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PateintInfo()),
                    );
                  },
                  child: SvgPicture.asset("assets/icons/addicon.svg"),
                ),
              ),
            ]),
          ]),
          const MyBottomNavBar()
        ],
      ),
    );
  }
}
