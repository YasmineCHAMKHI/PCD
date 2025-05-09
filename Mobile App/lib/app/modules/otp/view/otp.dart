import 'package:flutter/material.dart';

import '../../../../outils/colors.dart';
import '../../../components/button_components.dart';
import '../../../components/space.dart';
import '../../../components/text_components.dart';
import '../../changerPassword/view/change_password.dart';

class OTP extends StatefulWidget {
  const OTP({super.key});

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            TextComponents(txt: "Verification Code",txtSize: 25,family: "Bold",fw: FontWeight.bold,),
            h(15),
            TextComponents(txt: "Please enter the 4 digit code sent to \nchemkhiyasmine0@gmail.com",txtSize: 20,textAlign: TextAlign.center,),
            h(30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(4, (index) {
                return Container(
                  height: 60,width: 60,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        counterText: ''
                    ),
                    maxLength: 1,
                    onChanged: (value) {
                      if(value.length==1 && index<5){
                        FocusScope.of(context).nextFocus();
                      }
                      else if(value.isEmpty && index >0){
                        FocusScope.of(context).previousFocus();
                      }
                    },
                  ),
                );
              },),
            ),
            h(20),
            TextComponents(txt: "Code expire in : 02:30",txtSize: 17,),
            h(20),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ChangePassword(),));
              },
              child: Container(
                  margin: EdgeInsets.only(left: 20,right: 20),
                  child: ButtonComponent(txtButton: "Verify", buttonColor: mainColor)),
            ),
            h(20),
            TextComponents(txt: "Did not receive OTP?  Resend",)

          ],
        ),
      ),
    );
  }
}