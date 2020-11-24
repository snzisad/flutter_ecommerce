import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
            Container(
              margin: EdgeInsets.only(right: 40.0),
                child: SvgPicture.asset(ic_uparzon_store, height: 60)
            ),
            Container(
              alignment: Alignment.centerRight,
              child: SvgPicture.asset(ic_cart, height: 22, color: Colors.white,)
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
      body: Container(
        alignment: Alignment.center,
        color: hexToColor(color_primary),
        padding: EdgeInsets.all(5),
        height: 50,
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(10),
          color: Colors.white,
          child: Material(
            type: MaterialType.card,
            borderRadius: BorderRadius.circular(10),
            child:  Text("What are you looking at?"),
          )
          ),
        ),
    );
  }

}