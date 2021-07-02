import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main()
{
  runApp(App());
}
class App extends StatelessWidget {
  TextEditingController num1=TextEditingController();
  TextEditingController num2=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.greenAccent,
        appBar: AppBar(
          title: Text("ADDITION"),
        ),
        body:
        SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(height: 10,),
                TextField(
                  controller: num1,
                  decoration: InputDecoration(
                    labelText: "Number 1",
                    prefix: CircularProgressIndicator(),
                    prefixIcon: Icon(Icons.arrow_forward_outlined,color: Colors.red,size: 40,),
                    hintText: "number 1",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(200),
                    )
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: num2,
                  decoration: InputDecoration(
                    labelText: "Number 2",
                    prefix: CircularProgressIndicator(),
                    prefixIcon: Icon(Icons.arrow_forward,color: Colors.red,size: 40,),
                    hintText: "Number 2",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(200),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child:RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Colors.green,
                    onPressed: (){
                      var getNumber1=int.parse(num1.text);
                      var getNumber2=int.parse(num2.text);
                      var getResult=getNumber1+getNumber2;
                      print(getNumber1);
                      print(getNumber2);
                      print(getResult);

                    },
                    child: Text("ADD",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                      ),
                    ),
                  ),
                )
              ],//children
            ),

          ),
        )
      ),
    );
  }
}

