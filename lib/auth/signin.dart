import 'package:flutter/material.dart';
import 'package:notesapp/custome/customebutton.dart';
import 'package:notesapp/custome/customeform.dart';

class signin extends StatelessWidget {
  signin({super.key});
  // TextEditingController email = TextEditingController();
  String? email, password;
  GlobalKey<FormState> keys = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form
      (
        key: keys,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage(
                        'assets/images/bnotes.png',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                custometextfield(
                  labeltext: "email",
                  icon: Icons.email,
                  onchange: (value) {
                    email = value;
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                custometextfield(
                  labeltext: "password",
                  icon: Icons.password,
                  onchange: (value) {
                    password = value;
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                customebutton(text: "Sign in",onpersse: (keys.currentState.validate){},)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
