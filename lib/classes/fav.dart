import 'package:flutter/material.dart';
import 'package:marketplace/classes/account.dart';
import 'package:marketplace/classes/product.dart';
import '../components/strings.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marketplace Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple),
      ),
      home: Favourite(),
    );
  }
}

class Favourite extends StatefulWidget {
  const Favourite({Key? key}) : super(key: key);

  static List<FavStrings> fav = [];

  static void addItem(int id, int oldid, String name, String cost, String photo) {
    fav.add(FavStrings(id, oldid, name, cost, photo));
  }

  static bool isFavourite(int id) {
    return fav.contains(id);
  }

  @override
  _FavouriteState createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourite'),
      ),
      body: ListView.builder(
        itemCount: Favourite.fav.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              Home.indph = Favourite.fav[index].oldid * 3;
              Home.ind = Favourite.fav[index].oldid;
              Navigator.push(
                  context,
                  MaterialPageRoute(
                  builder: (context) => const Product()));
            },
            child: Container(
              width: 100,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xFFBDBDBD),
                    blurRadius: 4,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Image.network(
                    Favourite.fav[index].photo,
                    width: 100,
                    height: 100,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        width: 200,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            Favourite.fav[index].name,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            overflow: TextOverflow.ellipsis,
                          ),
                        )
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                            Favourite.fav[index].cost,
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.lightGreen[400],
                                fontWeight: FontWeight.bold)
                        ),
                      ),
                      IconButton(onPressed: (){ setState(() {
                        Favourite.fav.removeAt(index);
                      });},
                          icon: const Icon(Icons.delete)
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}