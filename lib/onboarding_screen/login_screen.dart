import 'package:flutter/material.dart';
import 'package:task_manager2/api/api_client.dart';
import 'package:task_manager2/onboarding_screen/registration_screen.dart';

import '../style/style.dart';
import '../task/new_task_list.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Map<String, String> FormValues = {"email": "", "password": ""};
  bool Loading = false;

  InputOnChange(MapKey, TextValue) {
    setState(() {
      FormValues.update(MapKey, (value) => TextValue);
    });
  }


  FormOnSubmit()async{
    if(FormValues['email']!.length==0){
      ErrorToast("Email Required");
    }else if(FormValues['password']!.length == 0){
      ErrorToast("Password Required");
    } else{
        setState(() {
          Loading = true;
        });

        var res = await LoginRequest(FormValues);
        if(res == true){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (builder) => NewTaskListScreen(),
            ),
          );
        }else{
          setState(() {
            Loading = false;
          });
        }

    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ScreenBackground(context),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Get Started", style: Head1Text(colorDarkBlue)),
                    const SizedBox(height: 1),
                    Text(
                      "Learn With Mehedi Hasan Miraz",
                      style: Head6Text(colorGrey),
                    ),
                    const SizedBox(height: 30),
                    TextFormField(
                      decoration: AppInputDecoration("Email Address"),
                      onChanged: (TextValue){
                        InputOnChange("email", TextValue);
                      },
                    ),
                    SizedBox(height: 20),

                    TextFormField(
                        decoration: AppInputDecoration("Password "),
                      onChanged: (TextValue){
                        InputOnChange("password", TextValue);
                      },
                    ),

                    SizedBox(height: 20),

                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          FormOnSubmit();

                        },
                        style: AppButtonStyle(),
                        child: SuccessButtonChild("Log In"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
