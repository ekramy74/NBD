import 'package:flutter/material.dart';
import 'package:NBD/components/default_button.dart';
import 'package:NBD/screens/home/home_screen.dart';
import 'package:NBD/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.02),
        Image.asset(
          "assets/images/success.png",
          height: SizeConfig.screenHeight * 0.5, //40%
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.02),
        Text(
          "Login Success",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton(
            text: "Back to home",
            press: () {
              Navigator.pushNamed(context, HomeScreen.routeName);
            },
          ),
        ),
        Spacer(),
      ],
    );
  }
}
