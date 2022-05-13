import 'package:flutter/material.dart';
import 'package:icoma/Widgets/button.dart';
import 'package:icoma/Widgets/textformfield.dart';

class FogetFeild extends StatelessWidget {
  const FogetFeild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailAddressController = TextEditingController();
    var formKey = GlobalKey<FormState>();
    return  Form(
        key: formKey,
        child:Column(children: [ CustomeTextFormField(controller: emailAddressController, label: 'Email Address',type: TextInputType.emailAddress,
      validate: (value) {
        if (value.isEmpty) {
          return 'email address must not be empty';
        }
        return null;
      },
      suffix: Icons.email_outlined,
    ),
          const SizedBox(
            height: 40.0,
          ),
          CustomeButton(text: 'Send Code', function: (){},
          ),
        ]));
  }
}
