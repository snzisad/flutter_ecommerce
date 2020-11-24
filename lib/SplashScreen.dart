import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Tools/Colors.dart';
import 'Tools/Icons.dart';
import 'testStateless.dart';

class SplashPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: hexToColor(color_primary),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          AnimatedSplashScreen(
            splash: SvgPicture.asset(ic_uparzon_store),
            nextScreen: HomePage(),
            splashTransition: SplashTransition.fadeTransition,
            backgroundColor: hexToColor(color_primary),
            duration: 500,
            splashIconSize: 150,
          ),
          Positioned(
              bottom: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text("Powered by", style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontStyle: FontStyle.normal,
                      decoration: TextDecoration.none
                  ),),
                  Image.asset(ic_changetech, height: 40,)
                ],
              )
          )
        ],
      ),
    );
      // Container(
      // color:  hexToColor(color_primary),
      // // child: SvgPicture.asset(ic_uparzon_store, height: 20, width: 30,),
    // );
  }
}
