import 'package:flutter/material.dart';
import 'package:marketplace/classes/bucket.dart';
import 'package:marketplace/components/strings.dart';
import 'package:marketplace/classes/home.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'fav.dart';

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
      home: const Product(),
    );
  }
}

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {

    final int count = Home.indph;
    final int ind = Home.ind;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: const Text("Bariga"),
      ),
      body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Column(
              children: [
                CarouselSlider(
                  options: CarouselOptions(height: 400.0),
                  items: [count,1+count,2+count,].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Image.network(photos[i])
                        );
                      },
                    );
                  }).toList(),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    products[ind].cost,
                    style: const TextStyle(fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Text(
                    products[ind].name,
                    style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(30),
                  child: Text(
                    products[ind].desc,
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(50),
                        child:
                          ElevatedButton(
                            onPressed: (){ Bucket.addItem(products[ind].id, ind, products[ind].name, products[ind].cost, products[ind].photo); },
                              child: const Text(
                                  "В корзину",
                                  style: TextStyle(fontSize: 20),
                      ),
                    )),
                    Padding(
                        padding: const EdgeInsets.all(50),
                        child:
                        ElevatedButton(
                          onPressed: (){ Favourite.addItem(products[ind].id, ind, products[ind].name, products[ind].cost, products[ind].photo); },
                          child: const Text(
                            "В избранные",
                            style: TextStyle(fontSize: 20),
                          ),
                        ))
                  ],
                )
              ],
            );
          }
      ),
    );
  }
}