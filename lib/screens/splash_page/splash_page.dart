import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_app/screens/board_page/board_page.dart';
import 'package:my_app/util/constans/colors.dart';
import 'package:my_app/util/constans/sizes.dart';
import 'package:my_app/util/helpers/function_helpers.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(Duration(milliseconds: 2000),
        () => AppHelperFunctions.navigateAndReScreen(context, BoardPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: AppHelperFunctions.screenHeigh(context),
            width: AppHelperFunctions.screenHeigh(context),
            color: AppColors.accent,
          ),
          Center(
            child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset(
                  'assets/images/logo_app.png',
                  width: 100,
                  height: 100,
                )),
          )
        ],
      ),
    );
  }
}
