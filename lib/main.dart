import 'package:flutter/material.dart';
import 'package:flutter_workshop/first_transition_page.dart';
import 'package:google_fonts/google_fonts.dart'; 
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: 
      MyHomePage(title: 'Flutter workshop app'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text(widget.title)
      ),
      body:ListView(
       // mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Container(
            width:400,
            height:100,
           child:Card(
             elevation:40,
             child:Align(
             alignment:Alignment.center,
             child:Text("Hello this is a card",
             style:TextStyle( 
               fontSize:30
             ),
             ),
             ),
             color:Colors.amberAccent
           )
          ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
               height:200,
               width:300,
               color:Colors.lime,
               child:Align(
                 alignment:Alignment.center,
                 child: Text("Hello this is container",
                 style:TextStyle(
                   fontSize:20,
                   color:Colors.blue
                 )
                 ),
               )
             ),
           ),
           Container(
             width:300,
             height:100,
             child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children:[
               Column(
                 children: [
                   RaisedButton(onPressed: (){},
                   child:Text("Raised Button")
                   ),
                   FlatButton(onPressed:(){},
                   child:Text("Flat Button")
                   ),
                 ],
               ),
               Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children:[
                   IconButton(onPressed:(){},
                   icon:Icon(Icons.forward)
                   )
                 ]
               )
             ]
           )
           ),
           Container(
             width:200,
             height:200,
             child:Image(
               image:NetworkImage('https://www.nydailynews.com/resizer/hB_m7Wzmmw6vAhTkWyFhNLabL2o=/1200x0/top/cloudfront-us-east-1.images.arcpublishing.com/tronc/4TSH3HD4VFDKBNPESOLJWKIP6M.jpg',scale: 3.0)
             )
           ),
          Padding(
            padding: const EdgeInsets.only(left:50.0,right:50.0,top:350.0,bottom: 350),
            child: Container(
              height:100,
              width:400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image:DecorationImage(
                  fit:BoxFit.cover,
                  image: NetworkImage('https://sm.mashable.com/t/mashable_in/photo/default/nasa-galaxy_9pu4.960.jpg'))
              ),
              child: RaisedButton( 
                 color:Colors.transparent,
                elevation:40,
              shape:RoundedRectangleBorder( 
                borderRadius: BorderRadius.circular(20)
              ), 
              onPressed:  
              (){
                Navigator.push(context, 
                MaterialPageRoute(builder: (context)=>FirstPage()));
              },
              child:Row(
                children: [
                  Text("To Hands-On App   ", 
                  style:GoogleFonts.poppins(
                   textStyle: TextStyle(
                    fontSize:20,
                    color: Colors.white
                  )
                  ),
                  ),
                  Container(
                    width:60,
                    height: 60,
                    child: Card(
                      shape:CircleBorder(),
                      child:Icon(Icons.arrow_forward)
                    ),
                  )
                ],
              )
              ),
            ),
          )
        ]
      )
    );
  }
}
