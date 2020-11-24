import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/Tools/Colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Tools/Icons.dart';
import 'Tools/Colors.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: hexToColor(color_primary),
        title: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            SvgPicture.asset(ic_uparzon_store, height: 60,),
            Container(
              alignment: Alignment.centerRight,
              child: SvgPicture.asset(ic_coins, height: 30,)
            )
          ],
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text("Header"),
            ),
            Text("Sample 2"),
            Text("Sample 3"),
            Text("Sample 4"),
          ],
        ),
      ),
    );
  }

}