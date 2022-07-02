import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:icoma/Const/color.dart';
import 'package:icoma/Model/get.dart';
import 'package:icoma/View/MainScreens/Screens/HomePage.dart';

class RoundAppBar extends StatefulWidget with PreferredSizeWidget {
  const RoundAppBar({Key? key}) : super(key: key);

  @override
  State<RoundAppBar> createState() => _RoundAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}

class _RoundAppBarState extends State<RoundAppBar> {
  List<User> allPatients = [];
  List<User> searchedForPatients = [];
  bool _isSearching = false;
  final _searchTextController = TextEditingController();
  final double barHeight = 20;

  void addSearchedFOrItemsToSearchedList(String searchedPatients) {
    searchedForPatients = allPatients
        .where((character) => character.name!.startsWith(searchedPatients))
        .toList();
    setState(() {});
   }

  void _startSearch() {
    ModalRoute.of(context)!
        .addLocalHistoryEntry(LocalHistoryEntry(onRemove: _stopSearching));

    setState(() {
      _isSearching = true;
    });
  }

  void _stopSearching() {
    _clearSearch();
    setState(() {
      _isSearching = false;
    });
  }

  void _clearSearch() {
    setState(() {
      _searchTextController.clear();
    });
  }

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
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Home()),
          );
        },
      ),
      titleSpacing: 0.00,
      centerTitle: true,
      title: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(horizontal: defaultPadding),
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        height: 44,
        width: 500,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Expanded(
          child: TextField(
            onChanged: (searchedCharacter) {
              addSearchedFOrItemsToSearchedList(searchedCharacter);
            },
            decoration: InputDecoration(
              hintText: "  Search",
              hintStyle: TextStyle(
                color: kPrimaryColor.withOpacity(0.5),
              ),
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              suffixIcon: const Icon(
                Icons.search_sharp,
                color: kTextColor,
              ),
            ),
          ),
        ),
      ),
      actions: [Image.asset("assets/images/doctor.png")],
    );
  }
}
