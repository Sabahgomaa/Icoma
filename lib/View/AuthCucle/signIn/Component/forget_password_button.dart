import 'package:flutter/material.dart';
import 'package:icoma/Const/color.dart';
import 'package:icoma/View/AuthCucle/forgetPassword/view.dart';
import 'package:icoma/Widgets/textbutton.dart';

class ForgetPasswordField extends StatefulWidget {
  const ForgetPasswordField({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordField> createState() => _ForgetPasswordFieldState();
}

class _ForgetPasswordFieldState extends State<ForgetPasswordField> {
  @override
  Widget build(BuildContext context) {
    var isCheched = true;
    return Row(
          children: [
            Checkbox(
              checkColor: defultcolor,
              fillColor: MaterialStateProperty.all(defultcolor),
              shape: const CircleBorder(),
              value: isCheched,
              onChanged: (bool? value) {
                setState(() {
                  isCheched = value!;
                });
              },
            ),
            const Text('Remember me'),
            const SizedBox(
              width: 80.0,
            ),
            CustomeTextButton(
              function: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                        const ForgotPasswordView()));
              },
              text: 'Forgrt password?',
            )
          ],
    );
  }
}
