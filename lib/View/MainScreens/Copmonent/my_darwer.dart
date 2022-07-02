import 'package:flutter/material.dart';
import 'package:icoma/Const/color.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  Widget buildDrawerHeader(context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsetsDirectional.fromSTEB(70, 10, 70, 10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue[100],
          ),
          child: Image.asset(
            '',
            fit: BoxFit.cover,
          ),
        ),
        const Text(
          'Name',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 5,
        ),
        const Text(
          'Jop title',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget buildDrawerListItem(
      {required IconData leadingIcon,
      required String title,
      Widget? trailing,
      Function()? onTap,
      Color? color}) {
    return Container(
      height: 20,
      width: 100,
      decoration: BoxDecoration(
        color: defultcolor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: Icon(
          leadingIcon,
          color: Colors.white,
        ),
        title: Text(title),
        trailing: trailing ??= const Icon(
          Icons.double_arrow_outlined,
          color: Colors.white,
        ),
        onTap: onTap,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 280,
            child: DrawerHeader(
              decoration: BoxDecoration(color:  Colors.white),
              child: buildDrawerHeader(context),
            ),
          ),
          buildDrawerListItem(leadingIcon: Icons.edit_rounded, title: 'My Profile'),
          buildDrawerListItem(leadingIcon: Icons.help, title: 'Help US'),
          buildDrawerListItem(leadingIcon: Icons.info, title: 'Information'),
          buildDrawerListItem(leadingIcon: Icons.privacy_tip_outlined, title: 'Privacy'),
          buildDrawerListItem(leadingIcon: Icons.settings_outlined, title: 'Setting'),
          const SizedBox(height: 50,),
          buildDrawerListItem(leadingIcon: Icons.logout, title: 'Log Out')
        ],
      ),
    );
  }
}
