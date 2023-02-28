import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

List qusList = [
  "Surat is the second cleanest city after Indore.",
  "Shivaji was born in the hill-fort of Shivneri.",
  "Brahmaputra river is biggest river in the world.",
  "Sardar Patel born in Porbandar.",
  "Vidit Savaliya is the producers of Hera Pheri 3 film",
    ];
List ansList = [
  true,true,false,false,false
];
List userInput = [];
int i = 0 ;
int j = 0;
int count = 0;


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
        child: Column(mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text("Question ${i+1}",style: TextStyle(fontSize: 50,color: Colors.pinkAccent)),
            SizedBox(height: 70),
            Text("${qusList[i]}",style: TextStyle(fontSize: 20,color: Colors.lightBlueAccent)),
            SizedBox(height: 50),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
              TextButton(onPressed: (){
                setState(() {

                          if(i < qusList.length -1 )
                          {
                            i++;
                          }
                          if(i<qusList.length)
                            {
                              userInput.add(true);
                              j = i +1;
                            }



                }
                );

              }, child: Text("✔ True",style: TextStyle(fontSize: 20 ,color: Colors.amberAccent))),

              TextButton(onPressed: (){
                setState(() {

                  if(i < qusList.length -1 )
                  {
                   // print("$i");
                    //userInput.add(false);
                   // print(userInput);
                    i++;
                  }
                  if(i<qusList.length)
                  {
                   // print("$i \t");
                    userInput.add(false);
                   // print(userInput);
                    j = i +1;
                  }
                 // print("\t i= $i ");
                }
                );

              }, child: Text("❌ False",style: TextStyle(fontSize: 20,color: Colors.amberAccent)))
            ],),
            SizedBox(height: 50),
            Visibility(
              visible:j>=5?true:false,
              child: IconButton(onPressed: () {
                      setState(() {
                        print("answer = $ansList  user =  $userInput");
                        for(i=0;i<5;i++)
                        {
                          if(ansList[i]==userInput[i])
                          {
                            count++;
                          }
                        }
                        print(count);
                      });
              },icon: Icon(Icons.exit_to_app_rounded),color: Colors.tealAccent,iconSize: 50,)
            ),
            // Visibility(
            //     visible:j==5 ? true : false,
            //     child: Text("You Scored ${count} ",style: TextStyle(fontSize: 30,color: Colors.orangeAccent),)
            // ),


            ],

        ),
      ),
    );
  }
}


//quesitons
/*

  1 2 3 4 5
  0 1 2 3 4
*/
