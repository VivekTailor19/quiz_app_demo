import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  const Result({Key? key}) : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  
  @override
  Widget build(BuildContext context) {
    
   dynamic count =  ModalRoute.of(context)!.settings.arguments ;
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0D1931),
        title: Text("\$\$\$\$\$",
            style: TextStyle(letterSpacing: 20, fontSize: 25,color: Colors.tealAccent)),
        centerTitle: true,
      ),
    body: Container(
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage(
        "Images/background.jpg"),
        fit: BoxFit.fill,
        opacity: 10,
        )),
        alignment: Alignment.center,

        child: Text("You Scored $count.",style: TextStyle(color: Colors.redAccent,fontSize: 75),),
        ),




    );
  }
}
