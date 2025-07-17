import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../style/style.dart';


class PinVerificationscreen extends StatefulWidget {
  const PinVerificationscreen({super.key});

  @override
  State<PinVerificationscreen> createState() => _PinverificationscreenState();
}

class _PinverificationscreenState extends State<PinVerificationscreen> {
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
                Text("Pin Verification",style: Head1Text(colorDarkBlue),),
                SizedBox(height: 2,),
                Text("A 6 digit pin has been send to your mobile number", style: Head6Text(colorLightGrey),),
                SizedBox(height: 20,),
                PinCodeTextField(
                  appContext: context,
                  length: 6,
                  pinTheme: AppOtpStyle(),
                  animationType: AnimationType.fade,
                  animationDuration: Duration(milliseconds: 300),
                  enableActiveFill: true,
                  onCompleted: (v){

                  },
                  onChanged: (value){

                  },
                ),
                Container(
                  child: ElevatedButton(
                    style: AppButtonStyle(),
                    child: SuccessButtonChild("Verify"),
                    onPressed: (){},
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

