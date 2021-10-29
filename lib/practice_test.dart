import 'package:button_prj/pages/button_and_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PracticeTest extends StatefulWidget {
  @override
  _PracticeTestState createState() => _PracticeTestState();
}
enum Day {  Sun, Mon, Tue, Wed, Thu, Fri, Sat  }
class _PracticeTestState extends State<PracticeTest>
{
  var list = [
    {'id':"123123","date":"20/08/2016",
    "detail" :"detail item",
    },
    {'id':"123124",
      "date":"26/08/2016",
      "detail" :"detail item",
    },
    {'id':"123125","date":"27/08/2016", "detail" :"detail item",},
    {'id':"123126","date":"28/08/2016", "detail" :"detail item",},
    {'id':"123127","date":"29/08/2016", "detail" :"detail item",},
    ];

  final children = <Widget>[];
  Day dayNow = Day.Sun;
  var ch ='O';
  int number = 0;
  int value = 7;
  void callDoWhileLoop(){

    int i = 0 ;

    do{
      print('Do While Loop Called $i Times');

      i++;
    }while ( i < 5 );

  }

  void  takeData()
  {
    callDoWhileLoop();
    while (number < 10) {
      if (number % 2 == 0) {
        print(number);
      }
      number++;
    }
    print('Today');
print(Day.values);
//****************** Print selected value
    switch (dayNow)
    {
      case Day.Sun:

        print("Sunday");
        break;
      case Day.Mon:
        print("Monday");
        break;
      case Day.Tue:
        print("Tuesday");
        break;
      case Day.Wed:
        print("Wednesday");
        break;
      case Day.Thu:
        print("Thursday");
        break;
      case Day.Fri:
        print("Friday");
        break;
      case Day.Sat:
        print("Saturday");
        break;
    }

    if(value == 3) {
      print('show value');
      print(value);
    }
      else if(value == 5)
        print('show value 1 $value');
      else if(value == 7)
        print('show value 2 $value');
      else
        print('condition going else part');
      // switch case example
    switch(ch)
        {
      case 'a':
        print("Vowel 1");
        break;
      case 'e':
        print("Vowel  2");
        break;
      case 'i':
        print("Vowel 3");
        break;
      case 'o':
        print("Vowel 4");
        break;
      case 'u':
        print("Vowel 5");
        break;
      case 'A':
        print("Vowel 6");
        break;
      case 'E':
       print("Vowel 7");
        break;
      case 'I':
        print("Vowel 8");
        break;
      case 'O':
        print("Vowel 9");
        break;
      case 'U':
        print("Vowel 10");
        break;
      default:
        print("Consonant");
    }

    // List  example with for loop

    for (var i = 0; i < list.length; i++)
    {
      print(list[i]['id']);
      children.add(Card(
        child: new ListTile(title: Text(list[i]['id'].toString()),
          subtitle: Text(list[i]['date'].toString()),
        trailing: Text(list[i]['detail'].toString()),
        ),
      ));
    }

  }
  void initState() {
    super.initState();
    takeData();
  }

  Widget build(BuildContext context) {
    return Scaffold(
    appBar:   AppBar(
        elevation: 0.0,
        backgroundColor: Colors.pink[100],
        leading: backButton(context),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Container(
            height: 690,
            width: 200,
            child: ListView(
              children: children,
            ),
          ),
          //Text('List value'),

        ],
          ),




    );

  }

}
