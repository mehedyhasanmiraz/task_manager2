import 'package:flutter/material.dart';

import '../../style/style.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ScreenBackground(context),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(left: 30,right: 30,top: 120, bottom: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Join With Us ",style: Head1Text(colorDarkBlue),),
                  SizedBox(height: 1,),
                  Text("Learn With Mehedi Hasan Miraz",style: Head6Text(colorGrey),),
                  SizedBox(height: 20,),
                  TextFormField(decoration: AppInputDecoration("First Name"),),
                  SizedBox(height: 20,),
                  TextFormField(decoration: AppInputDecoration("Last Name"),),
                  SizedBox(height: 20,),
                  TextFormField(decoration: AppInputDecoration("Email Address"),),
                  SizedBox(height: 20,),
                  TextFormField(decoration: AppInputDecoration("Mobile Number"),),
                  SizedBox(height: 20,),
                  TextFormField(decoration: AppInputDecoration("Password"),),
                  SizedBox(height: 20,),
                  TextFormField(decoration: AppInputDecoration("Confirm Password"),),
                  SizedBox(height: 20,),
                  Container(
                    child: ElevatedButton(
                      onPressed: (){},
                      child: SuccessButtonChild("Registration"),
                      style: AppButtonStyle(),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}