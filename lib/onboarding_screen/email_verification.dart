import 'package:flutter/material.dart';

import '../../style/style.dart';

class Emailverificationscreen extends StatefulWidget {
  const Emailverificationscreen({super.key});

  @override
  State<Emailverificationscreen> createState() => _EmailverificationscreenState();
}

class _EmailverificationscreenState extends State<Emailverificationscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ScreenBackground(context),
          Container(
            padding: EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Your Email Address ",style: Head1Text(colorDarkBlue),),
                SizedBox(height: 1,),
                Text("A 6 digit verification pin will send to your email address",style: Head6Text(colorGrey),),
                SizedBox(height: 20,),
                TextFormField(decoration: AppInputDecoration("Email Address"),),

                SizedBox(height: 20,),
                Container(
                  child: ElevatedButton(
                    onPressed: (){},
                    child: SuccessButtonChild("Next"),
                    style: AppButtonStyle(),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}