import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:globesity/screens/profile.dart';
import 'package:globesity/widgets/progress_indicator.dart';

import '../constants/constants.dart';
import '../constants/users.dart';
import '../methods/user_methods.dart';
import '../widgets/appbar.dart';
import '../widgets/bottomNavigation.dart';
import '../widgets/textfields.dart';


class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  TextEditingController oldPassword = TextEditingController();
  TextEditingController newPassword = TextEditingController();
  TextEditingController confirmNewPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar2("Change Password"),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Current Password"),
                  textField(oldPassword, context, false),
                  const Text("New Password"),
                  textField(newPassword, context, false),
                  const Text("Confirm New Password"),
                  textField(confirmNewPassword, context, false),
                  GestureDetector(
                    onTap: () async{
                      if(oldPassword.text==Users.password && newPassword==confirmNewPassword) {
                        indicator("Updating", context);
                        await updatePassword(newPassword.text);
                        Get.to(const Profile());
                      }
                      else{
                        indicator("Invalid Password", context);
                      }
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      color: Constant.greenColor,
                      padding: const EdgeInsets.all(20),
                      child:const Center(
                        child: Text(
                          "Update Password",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: bottomNavigation(),
    );
  }
}
