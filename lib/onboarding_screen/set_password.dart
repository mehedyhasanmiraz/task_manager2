import 'package:flutter/material.dart';

import '../../style/style.dart';

class SetPasswordScreen extends StatefulWidget {
  const SetPasswordScreen({super.key});

  @override
  State<SetPasswordScreen> createState() => _SetpasswordState();
}

class _SetpasswordState extends State<SetPasswordScreen> {
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
                Text("Set Password ",style: Head1Text(colorDarkBlue),),
                SizedBox(height: 1,),
                Text("Minimum length password 8 character with letter & number combination",style: Head6Text(colorGrey),),
                SizedBox(height: 20,),
                TextFormField(decoration: AppInputDecoration("Password"),),
                SizedBox(height: 10,),
                TextFormField(decoration: AppInputDecoration("Confirm Password"),),
                SizedBox(height: 20,),
                Container(
                  child: ElevatedButton(
                    onPressed: (){},
                    child: SuccessButtonChild("Confirm"),
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
