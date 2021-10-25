import 'package:flutter/material.dart';

void main() => runApp(MyApp1());

class MyApp1 extends StatelessWidget
{
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
{
  TextEditingController controller = TextEditingController();
  DateTime currentDate = DateTime.now();
  // String _selectedDate;

  int _counter = 0;
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: currentDate,
        firstDate: DateTime(2015),
        lastDate: DateTime(2050));
    if (pickedDate != null && pickedDate != currentDate)
      setState(() {
        currentDate = pickedDate;
      });
  }
  DateTime selectedDate = DateTime.now();
/*  _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate, // Refer step 1
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }*/
  @override
  void initState() {


    super.initState();
  }
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: new Text('Yes'),
          ),
        ],
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('checking'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
                child: Icon(
                  Icons.access_alarm,
                  color: Colors.green,

                ),
              ),

            Flexible(
              child: TextField(
              controller: controller,
              onChanged: (val) {
                val = controller.text.toString();
              },
          ),
            ),

              Expanded(
                //fit :FlexFit.tight,
                child: Container(
                  height: 100,
                  child: Text('Item 1 - pretty big!'),
                  color: Colors.red,
                ),
              ),
              Expanded(
                child:
                  Container(
                    height: 100,
                    child: Text('Item 2'),
                    color: Colors.blue,
                  ),

              ),
              Container(
                height: 100,
                child: Text('Item 3'),
                color: Colors.orange,
              ),
            ],
          ),
          Card(
            margin: EdgeInsets.only(bottom: 20.0,top: 20.0,left: 20.0,right: 20.0),
            child: ListTile(
              onTap: (){
                print('I am Getting image ');
              },
              title: Text('Class 6th'),
              subtitle: Text('Section A'),
              trailing: Container(
                child: CircleAvatar(

                 // radius: 50,
                  backgroundColor: Colors.black,
                 // radius: 40.0,
                  child: CircleAvatar(
                    radius: 45.0,


                    child: Image.asset('assets/images/user.png',fit: BoxFit.fill,),
                    backgroundColor: Colors.red,
                  ),
                ),
                ),
              ),
          ),
                          // ignore: deprecated_member_use
                          RaisedButton(
                            child: Text('Please Select Date'),
                            onPressed: (){
                              _selectDate(context);
                            },
                          ),
          SizedBox(height: 16),
          Text(
            'Your Selected Date: $selectedDate',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
