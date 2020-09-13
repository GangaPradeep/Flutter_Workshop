import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget{
 FirstPage();
 @override
 FirstPage_State createState() => FirstPage_State();

}
class FirstPage_State extends State<FirstPage>{
  TextEditingController _controller1;
  TextEditingController _controller2;
  String str1 = '';
  String str2 = '';
  String str3 = 'Welcome to Flutter';
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:Text("Hands-On"),
        elevation: 40, 
        centerTitle: true,
        shape:RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        )
      ),
      body:SingleChildScrollView(
              child: Column(
         // mainAxisAlignment: MainAxisAlignment.center,
          children: [
           
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width:100,
                height:100,
                decoration: BoxDecoration( 
                  borderRadius:BorderRadius.circular(100)
                ),
                child: Card(  
                  elevation: 40,
                   shape:CircleBorder(),
                            child:ClipOval( 
                                    child: Image( 
                                      fit: BoxFit.fill,
                                      image: 
                                      NetworkImage('https://cdn-images-1.medium.com/max/1200/1*GUnXaV_rVzuce67X__7G6w.png')

                                    ),
                                  ),
                
                ), 
              ),
            ),
           Padding(
             padding: const EdgeInsets.only(top:20,bottom:20),
             child: Container(
               height:200,
               child: Card(
                 elevation:40,
                 shape: RoundedRectangleBorder(
                   borderRadius:BorderRadius.circular(20)
                 ),
                    color:Colors.grey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                   children: [ 
                      Row(
                  mainAxisAlignment:MainAxisAlignment.spaceAround,
                  children: [
                  Container(
                    width:80,
                    height:50,
                    child:  TextField(
                      controller: _controller1,
                      //autofocus: true,
                      //enabled: true,
                      textAlign: TextAlign.center,
                      decoration:InputDecoration(
                        hintText: "Input",
                      ),
                      onChanged: (String value) {
                        setState(() {
                          str1 = value;
                        });
                      },
                      keyboardType: TextInputType.text,
                    ),
                  ),
                    Text("+",
                    style: TextStyle(
                      fontSize:40
                    ),
                    ),
                    Container(
                      width:80,
                      height:50,
                      child: TextField( 
                        textAlign: TextAlign.center,
                        controller:_controller2,
                        decoration:InputDecoration(
                          hintText: "Input"
                        ),
                       onChanged: (String value) {
                         setState(() {
                            str2 = value;
                         });
                       
                       },
                        keyboardType: TextInputType.text,
                      ),
                    )
                  ],
              ),
              Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: RaisedButton(
                    elevation: 30,
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    onPressed: (){
                    
                   setState(() {
                      str3 = str1 +' '+ str2;
                   });
                   
                  },
                  child:Text("Submit!!") 
                  ),
              ),
                   ],
                 ),
               ),
             ),
           ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width:200,
                height:200,
                child:Card(
                  shape:RoundedRectangleBorder(
                    borderRadius:BorderRadius.circular(20)
                  ),
                  color:Colors.amberAccent,
                  child:Align(
                    alignment:Alignment.center,
                    child:Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('$str3',
                      style:TextStyle(
                        fontSize:20,
                        fontWeight: FontWeight.w400,
                      )
                      ),
                    )
                  )
                )
              ),
            )
          ],
        ),
      ) 
    );
  }
}


