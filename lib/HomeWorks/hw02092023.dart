import 'package:flutter/material.dart';

class txtfrmhw extends StatefulWidget {
  const txtfrmhw({super.key});

  @override
  State<txtfrmhw> createState() => _txtfrmhwState();
}

class _txtfrmhwState extends State<txtfrmhw> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(child: Container(color: Colors.red)),
                  Expanded(child: Container(color: Colors.white)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        elevation: 15,
                        child: Container(
                          height: 400,
                          width: 300,
                          color: Colors.grey[100],
                          child: Row(children: [Text("Hello")]),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}



// Row(children: [Text("Hello")]),
                