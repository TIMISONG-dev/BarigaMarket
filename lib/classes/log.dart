import 'package:flutter/material.dart';
import 'package:marketplace/classes/home.dart';
import 'package:marketplace/classes/reg.dart';
import 'package:marketplace/components/strings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF1a0fe0)),
        useMaterial3: true,
      ),
      home: const Log(),
    );
  }
}

class Log extends StatelessWidget {
  const Log({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
            "Reg/Log"
        ),
      ),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 400,
                height: 500,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xFFBDBDBD),
                      blurRadius: 4,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(padding: EdgeInsets.all(10),
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(padding: const EdgeInsets.all(10),
                      child: TextField(
                        decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                            enabledBorder: OutlineInputBorder(borderSide: const BorderSide(width: 2, color: Color(0xFFdbdbdb)), borderRadius: BorderRadius.circular(100)),
                            labelText: "Email", suffixIcon: const Icon(
                              Icons.person,
                              color: Colors.indigo,
                            )),
                      ),
                    ),
                    Padding(padding: const EdgeInsets.all(10),
                      child: TextField(
                        decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                            enabledBorder: OutlineInputBorder(borderSide: const BorderSide(width: 2, color: Color(0xFFdbdbdb)), borderRadius: BorderRadius.circular(100)),
                            labelText: "Password", suffixIcon: const Icon(
                              Icons.password,
                              color: Colors.indigo,
                            )),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10),
                      child: ElevatedButton(
                        onPressed: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) =>  Home()));
                          AccountInfo.isAuth = true;
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.indigo,
                        ),
                        child: const Padding(padding: EdgeInsets.all(10),
                          child: Text(
                            "Enter",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo),
                        child: const Text(
                          "Reg",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Reg()));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          )
        ],
      )
    );
  }
}