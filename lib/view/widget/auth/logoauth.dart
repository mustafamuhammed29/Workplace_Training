import 'package:workplace_training/core/constant/imgaeasset.dart'; 
import 'package:flutter/material.dart';

class LogoAuth extends StatelessWidget {
  const LogoAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: 90,
        backgroundColor: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(10), // Border radius
          child: ClipOval(
            child: Image.asset(
              AppImageAsset.logo,
            ),
          ),
        ));
  }
}
