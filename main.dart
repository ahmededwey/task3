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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Login Screen App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
      children: [
        const Text(
          "CodePlayOn",
          style: TextStyle(color: Colors.blueAccent, fontSize: 30),
        ),
        Padding(
          padding:  EdgeInsets.all(17.0),
          child: TextField(
              decoration: InputDecoration(
                  hintText: "user name",
                  border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.all(Radius.circular(10))))),
        ),
        Padding(
          padding: const EdgeInsets.all(17.0),
          child: TextField(
              decoration: InputDecoration(
                  hintText: "password",
                  border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.all(Radius.circular(10))))),
        ),
      TextButton(onPressed: (){}, child: Text(
        "Forget password",
        style: TextStyle(color: Colors.blueAccent, fontSize: 13),
      ),),
        ElevatedButton(
            onPressed: (){}, child:const Text("Login")),
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Does Not have an account ?"),
            TextButton(onPressed: (){}, child:const  Text(
              "Sign in",
              style: TextStyle(color: Colors.blueAccent, fontSize: 20),
            ),),
          ],
        )
      ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
