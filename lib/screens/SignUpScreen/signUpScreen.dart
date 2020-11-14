import 'package:flutter/material.dart';
import 'package:youth_counsellor/assets/fontAsset.dart';
import 'package:youth_counsellor/screens/SignUpScreen/signUpWidgets/signUpTextFields.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color backgroungColor = Theme.of(context).primaryColor;
    return Scaffold(
      backgroundColor: backgroungColor,
      body:  _buildContent(context),
    );
  }

  Widget _buildContent(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;

    return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric( horizontal: 10),
              alignment: Alignment.centerLeft,
              height: deviceHeight * 0.2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('welcome', style: FontAsset.title),
                  Text(
                    'Sign Up',
                    style: FontAsset.unknownFont
                        .copyWith(fontSize: 40, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),


                  SignUpTextFields( deviceHeight - (deviceHeight * 0.28),),

    ]);
  }
}
