import 'package:flutter/material.dart';
import 'package:marketplace/classes/fav.dart';
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
      home: Bucket(),
    );
  }
}

class Bucket extends StatefulWidget {
  const Bucket({Key? key}) : super(key: key);

  static List<CartStrings> cart = [];

  static void addItem(
      int id, int oldid, String name, String cost, String photo) {
    cart.add(CartStrings(id, oldid, name, cost, photo));
  }

  static bool isInBucket(int id) {
    return cart.contains(id);
  }

  @override
  _BucketState createState() => _BucketState();
}

class _BucketState extends State<Bucket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Text('Bucket'),
            Padding(padding: EdgeInsets.all(10),
            child: ElevatedButton(onPressed: (){
              Bucket.cart.clear();
              Navigator.pop(context);
              },
              child: const Text(
                  "Сформировать заказ"
              ),
            ),
            )
          ],
        )
      ),
      body: ListView.builder(
        itemCount: Bucket.cart.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              Home.indph = Bucket.cart[index].oldid * 3;
              Home.ind = Bucket.cart[index].oldid;
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
                    Bucket.cart[index].photo,
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
                            Bucket.cart[index].name,
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
                          Bucket.cart[index].cost,
                          style: const TextStyle(
                              fontSize: 24,
                              color: Colors.green,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                if(Bucket.cart[index].quantity > 1){
                                  Bucket.cart[index].quantity--;
                                }
                              });
                            },
                            icon: const Icon(Icons.remove),
                          ),
                          Text(
                            '${Bucket.cart[index].quantity}',
                            style: const TextStyle(fontSize: 20),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                Bucket.cart[index].quantity++;
                              });
                            },
                            icon: const Icon(Icons.add),
                          ),
                          IconButton(onPressed: (){ setState(() {
                            Bucket.cart.removeAt(index);
                          });},
                              icon: const Icon(Icons.delete)
                          )
                        ],
                      ),
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
