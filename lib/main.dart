import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: App(),
  ));
}
class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  bool checkBoxValue=false;
  int check=1;
  var group=['A+','A-','B+','B-','AB+','AB-','O+','O-',];
  var current='A+';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('donation'),
        centerTitle: true,
        backgroundColor: Colors.amberAccent[100],
      ),
      body: Column(
        children: <Widget>[
          Row(children: <Widget>[
             Text('Name:'),
            Expanded(
              child: TextFormField(decoration: InputDecoration(labelText : 'enter your name'),
              ),
            ),


          ],
          ),
          Row(children: <Widget>[
            Text('Address:'),
            Expanded(
              child: TextFormField(decoration: InputDecoration(labelText : 'Enter your address'),
              ),
            ),


          ],
          ),
          Row(children: <Widget>[
            Text('Contact number:'),
            Expanded(
              child: TextFormField(decoration: InputDecoration(labelText : ''),
              ),
            ),


          ],
          ),
          Row(children: <Widget>[
            Text("Blood Group "),
            DropdownButton<String>(
            items:group.map((String dropDownStringItem) => DropdownMenuItem<String>(
              value: dropDownStringItem,
              child: Text(dropDownStringItem),


            )
            ).toList(),
            onChanged: (String newValueSelected){
              setState(() {
                this.current=newValueSelected;
              });
            },
            value: current,


          ),],

          ),
          Row(children: <Widget>[
            Radio(
              value: 1,
              groupValue: check,
              onChanged: (T){
                print("male");
                setState(() {
                  check=T;
                });
              },
            ),
            Text('male'),
            Radio(
              value: 2,
              groupValue: check,
              onChanged: (T){
                print("male");
                setState(() {
                  check=T;
                });
              },
            ),
            Text('female'),
          ]),


          RaisedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));},
            child: Text('submit'),
          )


        ],

      ),




    );
  }
}



class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('you login!'),
      ),
    );
  }
}

