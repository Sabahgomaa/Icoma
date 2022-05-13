import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:icoma/Const/color.dart';
import 'package:icoma/View/AuthCucle/signUp/view.dart';
import 'package:icoma/Widgets/textbutton.dart';
import 'package:url_launcher/url_launcher.dart';
class LowerSection extends StatelessWidget {
  const LowerSection({Key? key}) : super(key: key);


  void _launchURL(String url) async {
    await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
  }


Widget buildIcon(IconData icon, String url){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
          color: Colors.white.withOpacity(0.8),
      spreadRadius: 10,
      blurRadius: 5,
      offset: const Offset(0, 7), // changes position of shadow
    ),
  ],
      ),
      child: IconButton(
        onPressed:()=>_launchURL(url),
        icon: Icon(icon,color: defultcolor,size: 35,),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        Row(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Container(height: 3,width:140,color: defultcolor,),
            const Center(child: Text('OR',style: TextStyle(color: defultcolor,),)),
            Container(height: 3,width:140,color: defultcolor,),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
          Row(
              mainAxisAlignment:MainAxisAlignment.spaceAround,
              crossAxisAlignment:CrossAxisAlignment.center,
              children: [
                buildIcon(FontAwesomeIcons.facebook,'https://www.youtube.com/channel/UCOxYAXOoqglroDKtixaoMww'),
                const SizedBox(
                  width: 15,
                ),
                buildIcon(FontAwesomeIcons.googlePlus, "https://www.youtube.com/channel/UCOxYAXOoqglroDKtixaoMww"),
                const SizedBox(
                  width: 20,
                ),
                buildIcon(
                  FontAwesomeIcons.apple,
                  'https://www.youtube.com/channel/UCOxYAXOoqglroDKtixaoMww',
                ),

              ],
            ),
    const SizedBox(
    height: 40,
    ),
    Row(
        mainAxisAlignment:MainAxisAlignment.center,
        crossAxisAlignment:CrossAxisAlignment.center,
        children:[
        const Text('Don’t have an account?'),
          CustomeTextButton(function: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SignUpView()),
            );
          }, text: 'Sign Up',)

    ])]);
  }
}
