import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

List qusList = [
  "Surat is the second cleanest city after Indore.",
  "Shivaji was born in the hill-fort of Shivneri.",
  "Vidit Savaliya is the producers of Hera Pheri 3 film",
  "Brahmaputra river is biggest river in the world.",
  "Sardar Patel born in Porbandar.",
    ];
List ansList = [
  true,true,false,false,false
];
List userInput = [];
int i = 0 ;
int j = 0 ;
int press = 0;
int count = 0;
int a = 0;


class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
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
        alignment: Alignment.topCenter,
        child: Column(

          children: [
            SizedBox(height: 50),
            Text("Question ${i+1}",style: TextStyle(fontSize: 50,color: Colors.pinkAccent)),
            SizedBox(height: 70),
            Text("${qusList[i]}",style: TextStyle(fontSize: 20,color: Colors.lightBlueAccent)),
            SizedBox(height: 50),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
              TextButton(onPressed: (){
                update(true);
              }, child: Text(" ✔ True ✔ ",style: TextStyle(fontSize: 20 ,color: Colors.amberAccent))),
              SizedBox(width: 200),
              TextButton(onPressed: (){
                update(false);
              }, child: Text(" ❌ False ❌ ",style: TextStyle(fontSize: 20,color: Colors.amberAccent)))
            ],),
            SizedBox(height: 50),
            Visibility(
              visible: userInput.length == 5 ? true : false,
              child: IconButton(onPressed: () {
                        count = 0;
                        print("answer = $ansList  user =  $userInput");
                        for(i=0;i<5;i++)
                        {
                          if(ansList[i]==userInput[i])
                          {
                            setState(() {
                               count++;
                            });
                          }
                        }
                        print("count  = $count  a =  $a");

                        press++;

                        // Navigator.pushNamed(context, 'result' ,arguments: count);

              },icon: Icon(Icons.exit_to_app_rounded),color: Colors.tealAccent,iconSize: 50,)
                ),
            // Visibility(
            //     visible: ( press == 1 ) ? true : false,
            //     child: Text("You Scored $count",style: TextStyle(fontSize: 30,color: Colors.orangeAccent),)
            // ),
            Text('$count',style: TextStyle(fontSize: 30,color: Colors.red),),



            ],

        ),
      ),
    );
  }
  void update(bool click)
  {
    setState(() {
      if(i < qusList.length -1 )
      {
        i++;
      }
      if(i<qusList.length)
      {
        userInput.add(click);
        print(userInput);
       // j = i +1;
      }

    });

  }
}


//quesitons
/*

  1 2 3 4 5
  0 1 2 3 4
*/
