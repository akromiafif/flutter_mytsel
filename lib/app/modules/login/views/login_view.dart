import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Image.asset("assets/logo/logo-loginscreen.png"),
        Text("Silahkan masuk dengan nomor telkomsel kamu"),
        Text("Nomor HP"),
        TextField(
            decoration: InputDecoration(
                hintText: "Cth. 08129011xxxx", border: OutlineInputBorder())),
        CheckboxListTile(
          value: false,
          onChanged: (value) {},
          controlAffinity: ListTileControlAffinity.leading,
          title: RichText(
              text: TextSpan(
                  text: "Saya menyetujui ",
                  style: TextStyle(color: Colors.black),
                  children: [
                TextSpan(
                  recognizer: TapGestureRecognizer()..onTap = () {},
                  text: "syarat, ketentuan ",
                  style: TextStyle(color: Colors.red),
                ),
                TextSpan(
                  recognizer: TapGestureRecognizer()..onTap = () {},
                  text: "dan ",
                  style: TextStyle(color: Colors.black),
                ),
                TextSpan(
                  recognizer: TapGestureRecognizer()..onTap = () {},
                  text: "privasi ",
                  style: TextStyle(color: Colors.red),
                ),
                TextSpan(
                    recognizer: TapGestureRecognizer()..onTap = () {},
                    text: "Telkomsel",
                    style: TextStyle(color: Colors.black))
              ])),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text("LANJUT"),
          style: ElevatedButton.styleFrom(primary: Color(0xFFEC2028)),
        ),
        Center(
          child: Text("Atau masuk menggunakan"),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/icons/icon-facebook.png",
                        width: 50,
                        height: 50,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Facebook")
                    ],
                  ),
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(Size(150, 50)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    side: MaterialStateProperty.all(
                      BorderSide(color: Color(0xFF3B5998)),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/icons/icon-twitter.png",
                        width: 50,
                        height: 50,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Twitter")
                    ],
                  ),
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(Size(150, 50)),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    side: MaterialStateProperty.all(
                      BorderSide(color: Color(0xFF1DA1F2)),
                    ),
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    ));
  }
}
