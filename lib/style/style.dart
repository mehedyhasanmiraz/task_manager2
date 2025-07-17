import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

const colorRed = Color.fromRGBO(231, 28, 36, 1);
const colorDark = Color.fromRGBO(136, 28, 32, 1);
const colorGreen = Color.fromRGBO(33, 191, 115, 1);
const colorBlue = Color.fromRGBO(52, 152, 215, 1);
const colorOrange = Color.fromRGBO(230, 126, 34, 1);
const colorWhite = Color.fromRGBO(255, 255, 255, 1);
const colorDarkBlue = Color.fromRGBO(44, 62, 80, 1);
const colorGrey = Colors.grey;
const colorLightGrey = Color.fromRGBO(135, 142, 150, 1);
const colorLight = Color.fromRGBO(211, 211, 211, 1);
const colorLightBlue = Color.fromRGBO(0, 128, 157, 1);
const brightWhite = Color.fromRGBO(250, 250, 225, 1);


TextStyle Head1Text(textColor){
  return TextStyle(
    color: textColor,
    fontSize: 28,
    fontFamily: "Poppins",
    fontWeight: FontWeight.w700,
  );
}

TextStyle Head6Text(textColor){
  return TextStyle(
    color: textColor,
    fontSize: 16,
    fontFamily: "Poppins",
    fontWeight: FontWeight.w400,
  );
}


PinTheme AppOtpStyle(){
  return PinTheme(
    inactiveColor: colorLight,
    inactiveFillColor: colorWhite,
    selectedColor: colorGreen,
    activeColor: colorWhite,

    selectedFillColor: colorGreen,
    shape: PinCodeFieldShape.box,
    borderRadius: BorderRadius.circular(5),
    fieldHeight: 55,
    borderWidth: 0.5,
    fieldWidth: 45,
    activeFillColor: colorWhite,
  );
}


InputDecoration AppInputDecoration(label){
  return InputDecoration(
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: colorGreen, width: 1),
    ),
    filled: true,
    fillColor: colorWhite,
    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: colorLightGrey, width: 0.0)
    ),
    border: OutlineInputBorder(),
    labelText: label,
  );
}


DecoratedBox AppDropDownStyle(child){
  return DecoratedBox(decoration: BoxDecoration(
    color: colorGreen, border: Border.all(color: colorWhite,width: 1,),borderRadius: BorderRadius.circular(5),),
    child: Padding(
      padding: EdgeInsets.only(left: 30, right: 30),
      child: child,
    ),
  );
}

ScreenBackground(context) {
  return Image.asset(
    "assets/images/images.jpeg",
    alignment: Alignment.center,
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    fit: BoxFit.fill,
  );
}


ButtonStyle AppButtonStyle(){
  return ElevatedButton.styleFrom(
      backgroundColor: Colors.transparent,
      elevation: 1,
      padding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6)
      )
  );
}

TextStyle ButtonTextStyle(){
  return TextStyle(
    fontSize: 16,
    fontFamily: "Poppins",
    fontWeight: FontWeight.w400,
  );
}


Ink SuccessButtonChild(String ButtonText){
  return Ink(
    decoration: BoxDecoration(color: colorGreen,borderRadius: BorderRadius.circular(6)),
    child: Container(
        height: 55,
        alignment: Alignment.center,
        child: Text(ButtonText, style: ButtonTextStyle(),)),
  );
}

void SuccessToast(msg){
  Fluttertoast.showToast(
    msg: msg,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    toastLength: Toast.LENGTH_SHORT,
    backgroundColor: colorGreen,
    textColor: colorWhite,
    fontSize: 16,
  );
}

void ErrorToast(msg){
  Fluttertoast.showToast(
    msg: msg,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    toastLength: Toast.LENGTH_SHORT,
    backgroundColor: colorRed,
    textColor: colorWhite,
    fontSize: 16,
  );
}


