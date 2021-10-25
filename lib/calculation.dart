import 'dart:math';

class Calculation{
  Calculation({this.height, this.weight});

  int height;
  int weight;
  double result;

  String bmiresult(){
    result = (weight/ (height*height));
    return result.toString();
  }

  String feedback(){
    if(result>30)
      return "Obese";
    else if(result>25)
      return "Overweight";
    else if(result>18)
      return "Normal";
    else
      return "Underweight";
  }

  String suggestion(){
    if(result>30)
      return "Workout more";
    else if(result>25)
      return "Eat less";
    else if(result>18)
      return "Congrats! U are fit";
    else
      return "Don't worry, keep eating";
  }
}