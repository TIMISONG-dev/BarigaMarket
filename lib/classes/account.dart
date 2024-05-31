import 'package:flutter/material.dart';
import 'package:marketplace/components/strings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marketplace Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Account(),
    );
  }
}

class Account extends StatelessWidget {
  const Account({super.key});

  static int ind = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
            "Account"
        ),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
        Padding(padding: EdgeInsets.all(10),
        child: Container(
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
              Text(
                  AccountInfo.name,
                  style: const TextStyle(fontSize: 30)
              ),
              Text(
                AccountInfo.lastName,
                style: const TextStyle(fontSize: 20),
              ),
              Text(
                  AccountInfo.email
              ),
              ElevatedButton(onPressed: (){
                AccountInfo.isAuth = false;
                Navigator.pop(context);
                },
                  child: Text(
                    "Выйти"
                  )
              )
            ],
          ),
        ),
        )
    ]),
    )
    );
  }
}