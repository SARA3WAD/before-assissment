import 'package:flutter/material.dart';

void main()
{
  runApp(app());
}
class app extends StatefulWidget {
  const app({super.key});

  @override
  State<app> createState() => _appState();
}

class _appState extends State<app> {
bool ison = false;
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title:  Text('Toggle Button')),
        body: Center(
          child: Column(
            children: [
              Container(
                  color: ison?Colors.green:Colors.red,
                  child: ElevatedButton(onPressed: (){
                    setState(() {
                      ison = !ison;
                    });
                  }, child:ison?Text("ON"): Text("OFF"),
                    
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}

