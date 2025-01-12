import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 0, 42, 255)),
        useMaterial3: false,
      ),
      home: MyHomePage(title: "MyApp",)
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required String title});

  @override
  State<StatefulWidget> createState() => MyHomeState();
}

class MyHomeState extends State<MyHomePage>{
  
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();
  var result = "";
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Basic Calculation")),
      ),
      body: Center(
          child: Padding(
            padding: const EdgeInsets.all(21.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              TextField(
                keyboardType: TextInputType.number,
                controller: no1Controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: BorderSide(
                      color: Colors.blue,
                    )
                  ),
                  hintText: "Enter Number 1"
                ),
                
              ),

              SizedBox(
                height: 30
              ),

              TextField(
                keyboardType: TextInputType.number,
                controller: no2Controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                    borderSide: BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                  hintText: "Enter Number 2"
                ),
              ),

              SizedBox(
                height: 50
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(onPressed: (){
                      var no1 = int.parse(no1Controller.text.toString());
                      var no2 = int.parse(no2Controller.text.toString());
                      var sum = no1 + no2;
                      result = "The Sum of $no1 and $no2 is $sum";
                      setState(() {});
                    }, child: Text("Add")),

                    ElevatedButton(onPressed: (){
                      var no1 = int.parse(no1Controller.text.toString());
                      var no2 = int.parse(no2Controller.text.toString());
                      var sub = no1 - no2;
                      result = "The Subtraction of $no1 and $no2 is $sub";
                      setState(() {});
                    }, child: Text("Subtract")),

                    ElevatedButton(onPressed: (){
                      var no1 = int.parse(no1Controller.text.toString());
                      var no2 = int.parse(no2Controller.text.toString());
                      var mul = no1 * no2;
                      result = "The Multiplication of $no1 and $no2 is $mul";
                      setState(() {});
                    }, child: Text("Multiply")),

                    ElevatedButton(onPressed: (){
                      var no1 = int.parse(no1Controller.text.toString());
                      var no2 = int.parse(no2Controller.text.toString());
                      var div = no1 / no2;
                      result = "The Division of $no1 and $no2 is ${div.toStringAsFixed(2)}";
                      setState(() {});
                    }, child: Text("Divide")),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.all(21.0),
                child: Text(result,style: TextStyle(fontSize: 19),),
              ),
            ],
           ),
          ),
        ),
      
    );
  }
}


