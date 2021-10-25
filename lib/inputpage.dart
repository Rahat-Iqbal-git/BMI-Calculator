import 'package:bmi_calculator/calculation.dart';
import 'package:bmi_calculator/output.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class inputpage extends StatefulWidget {
  @override
  _inputpageState createState() => _inputpageState();
}

class _inputpageState extends State<inputpage> {
  int weight = 20;
  int age = 14;
  int height = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF698a71),
      appBar: AppBar(
        backgroundColor: Color(0xFF272b28),
        title: Padding(
          padding: const EdgeInsets.only(left: 110),
          child: Text("BMI Calculator"),
        )
      ),

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                
                Padding(
                    padding: const EdgeInsets.all(20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFdbdbdb),
                          borderRadius: BorderRadius.circular(15)
                        ),
                        height: 150,
                        width: 150,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(FontAwesomeIcons.mars,
                              size: 60),
                              SizedBox(height: 15,),
                              Text("Male",
                              style: TextStyle(
                                fontSize: 15,
                              ),)
                            ],
                          ),
                        ),
                      )
                      ),

                Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFdbdbdb),
                          borderRadius: BorderRadius.circular(15)
                      ),
                      height: 150,
                      width: 150,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(FontAwesomeIcons.venus,
                                size: 60),
                            SizedBox(height: 15,),
                            Text("Female",
                              style: TextStyle(
                                fontSize: 15,
                              ),)
                          ],
                        ),
                      ),
                    )
                )

              ],
            ),

         Container(
           height: 150,
           width: 350,
           decoration: BoxDecoration(
               color: Color(0xFFdbdbdb),
               borderRadius: BorderRadius.circular(15)
           ),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               Text("Height",
                 style: TextStyle(
                   fontSize: 20,
                 ),),

              Padding(
                padding: const EdgeInsets.only(left: 80, right: 80),
                child: TextField(
                  keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: ''
                ),
                ),
              ),

             ],
           ),
         ),

            Row(
              children: <Widget>[

                Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFdbdbdb),
                          borderRadius: BorderRadius.circular(15)
                      ),
                      height: 150,
                      width: 150,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Weight",
                                style: TextStyle(
                                  fontSize: 15,
                                ) ),
                            Text( weight.toString(),
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ) ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                    icon: Icon(FontAwesomeIcons.plus),
                                    onPressed:(){
                                      setState(() {
                                        weight++;
                                      });
                                }),
                                SizedBox(width: 13,),
                                IconButton(
                                    icon: Icon(FontAwesomeIcons.minus),
                                    onPressed: (){
                                      setState(() {
                                        weight--;
                                      });
                                    }),
                              ],
                            )

                          ],
                        ),
                      ),
                    )
                ),

                Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFdbdbdb),
                          borderRadius: BorderRadius.circular(15)
                      ),
                      height: 150,
                      width: 150,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Age",
                                style: TextStyle(
                                  fontSize: 15,
                                ) ),
                            Text( age.toString(),
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ) ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                    icon: Icon(FontAwesomeIcons.plus),
                                    onPressed: (){
                                      setState(() {
                                        age++;
                                      });
                                    }),
                                SizedBox(width: 13,),
                                IconButton(
                                    icon: Icon(FontAwesomeIcons.minus),
                                    onPressed: (){
                                      setState(() {
                                        age--;
                                      });
                                    }),
                              ],
                            ),

                            
                          ],
                        ),
                      ),
                    )
                )

              ],
            ),

            FlatButton(
              color: Colors.white10,
              onPressed: (){
                Calculation cal = Calculation(height: height, weight: weight);

                Navigator.push(context, 
                    MaterialPageRoute(builder: (context)=> OutputPage(
                      bmiresult: cal.bmiresult(),
                      feedback: cal.feedback(),
                      suggestion: cal.suggestion(),
                    )));
              },
                child:Text("Calculate",
                style: TextStyle(
                  fontSize: 20,
                )) ,),
            
          ],
        ),
      ),

    );
  }
}
