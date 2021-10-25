import 'package:flutter/material.dart';

class OutputPage extends StatefulWidget {
  OutputPage({this.bmiresult, this.feedback, this.suggestion});
  String bmiresult;
  String feedback;
  String suggestion;

  @override
  _OutputPageState createState() => _OutputPageState();
}

class _OutputPageState extends State<OutputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF698a71),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 150.0, left: 30),
            child: Text("Your Result",
            style: TextStyle(
              fontSize: 35,
              color: Colors.white,
              //fontWeight: FontWeight.bold,
            ),),
          ),

          SizedBox(height: 40,),
          Center(
            child: Column(
              children: [
                Text(widget.feedback,
                  style: TextStyle(
                    fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold,
                  ),),

                Text(widget.bmiresult,
                  style: TextStyle(
                    fontSize: 40, color: Colors.white, //fontWeight: FontWeight.bold,
                  ),),
                Text(widget.suggestion,
                  style: TextStyle(
                    fontSize: 40, color: Colors.white, //fontWeight: FontWeight.bold,
                  ),),

                SizedBox(height: 150,),

                FlatButton(
                  color: Colors.white10,
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=> OutputPage()));
                  },
                  child:Text("Re-Calculate",
                      style: TextStyle(
                        fontSize: 20,
                      )) ,),
              ],
            ),
          )
        ],
      ),

    );
  }
}
