import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  List mobile = [
    {
      "name" : "S20 ultra",
      "screen" : "6.2",
      "cpu" :"8 core"
    },
    {
      "name" : "S10 ultra",
      "screen" : "6.2",
      "cpu" :"8 core"
    },
    {
      "name" : "S8 ",
      "screen" : "6.2",
      "cpu" :"8 core"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),
      drawer: Drawer(),
      body: Container(
        // width: 130,
          margin: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
          child:GridView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: mobile.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 30,
                childAspectRatio: 20,
              ),//كروس تأخذ الاكسس من سكرول
              itemBuilder: (context,i){
                return ListTile(
                  tileColor: Colors.red,
                  title: Text("${mobile[i]['name']}"),
                  subtitle: Text("${mobile[i]['screen']}"),
                  trailing: Text("${mobile[i]['cpu']}"),
                );

              })
      ),

    );
  }
}