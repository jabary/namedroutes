import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: FirstPage(title: "First Page"),
      routes: <String, WidgetBuilder>{
          '/b': (context) => SecondPage(title: "Second Page"),
          '/c': (context) => ThirdPage(title: "Third PAge")
      },
    );
  }
}

class FirstPage extends StatelessWidget{
  final String title;
  FirstPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          IconButton(
              onPressed: (){

              },
              icon: Icon(Icons.search)),
          IconButton(
              onPressed: (){

              },
              icon: Icon(Icons.notifications)),
          PopupMenuButton(
            onSelected: (value) {
              if (value == 'two'){
                Navigator.pushNamed(context, '/b');
              }
              else if (value == 'three'){
                Navigator.pushNamed(context, '/c');
              }
            },
              itemBuilder: (BuildContext context){
                return <PopupMenuEntry<String>>[
                  PopupMenuItem<String>(
                      child: Text("page two"),
                      value: 'two',),
                  PopupMenuItem<String>(
                    child: Text("page Three"),
                    value: 'three',)
                ];
              }
          )
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pushNamed(context, '/b');
          },
          child: Text("Go to Page two"),
        ),
      ),
    );
  }

}

class SecondPage extends StatelessWidget{
  final String title;
  SecondPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          IconButton(
              onPressed: (){

              },
              icon: Icon(Icons.search)),
          IconButton(
              onPressed: (){

              },
              icon: Icon(Icons.notifications)),
          PopupMenuButton(
              onSelected: (value) {
                if (value == 'two'){
                  Navigator.pushNamed(context, '/b');
                }
                else if (value == 'three'){
                  Navigator.pushNamed(context, '/c');
                }
              },
              itemBuilder: (BuildContext context){
                return <PopupMenuEntry<String>>[
                  PopupMenuItem<String>(
                    child: Text("page two"),
                    value: 'two',),
                  PopupMenuItem<String>(
                    child: Text("page Three"),
                    value: 'three',)
                ];
              }
          )
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pushNamed(context, '/c');
          },
          child: Text("Go to Page three"),
        ),
      ),
    );
  }

}
class ThirdPage extends StatelessWidget{
  final String title;
  ThirdPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title),),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pushNamed(context, '/');
          },
          child: Text("Go back"),
        ),
      ),
    );
  }

}

class ForthPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Text("test");
  }

}


