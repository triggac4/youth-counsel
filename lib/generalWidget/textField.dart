import 'package:flutter/material.dart';
import 'package:youth_counsellor/assets/fontAsset.dart';
import 'package:youth_counsellor/assets/textFieldDecoration.dart';
import 'package:youth_counsellor/screens/SignUpScreen/signUpWidgets/signUpTextFields.dart';
class CustomTextField extends StatelessWidget {
  const CustomTextField({Key key,this.mainPassword ,this.controllerName,this.hasError, this.isPassword, this.title,this.validate,this.field}) : super(key: key);
  final TextEditingController controllerName;
  final bool isPassword;
  final bool hasError;
  final TextEditingController mainPassword;
  final String title;
  final Function validate;
  final whatTextfield field;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [

          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(title,style: FontAsset.title.copyWith(color: Theme.of(context).primaryColor),),
          ),
          Container(
            height: 70,
            padding: EdgeInsets.only(left: 10,right: 10,bottom: 10),
            child: TextFormField(
              obscureText:isPassword ,
              controller: controllerName,
              decoration: TextFieldDecoration.inputDecoration,
              validator: (_)=>validate(field,controllerName.text,mainPassword?.text),
            ),
          ),
        ],
      ),
    );
  }
}
