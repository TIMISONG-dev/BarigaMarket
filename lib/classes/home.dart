import 'package:flutter/material.dart';
import 'package:marketplace/classes/account.dart';
import 'package:marketplace/classes/bucket.dart';
import 'package:marketplace/classes/fav.dart';
import 'package:marketplace/classes/log.dart';
import 'package:marketplace/classes/product.dart';
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
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  static int indph = 0;
  static int ind = 0;

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<String> search = ValueNotifier('');

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(10),
                child: Icon(
                  Icons.shop,
                ),
              ),
              const Text("Bariga"),
              SizedBox(
                width: 150,
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    onChanged: (value) {
                      search.value = value;
                    },
                    decoration: InputDecoration(
                      labelText: 'Search',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    style: const TextStyle(fontSize: 14),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Favourite()));
                },
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(
                    Icons.favorite_outline,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (AccountInfo.isAuth == false) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Log()));
                  } else {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Account()));
                  }
                },
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(
                    Icons.account_circle_outlined,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Bucket()));
                },
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(
                    Icons.shopping_cart,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: ValueListenableBuilder<String>(
          valueListenable: search,
          builder: (context, searchText, child) {
            final filteredProducts = products.where((product) {
              return product.name
                  .toLowerCase()
                  .contains(searchText.toLowerCase());
            }).toList();
            return GridView.builder(
              itemCount: filteredProducts.length,
              itemBuilder: (context, index) {
                return Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    InkWell(
                      onTap: () {
                        indph = index * 3;
                        ind = index;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Product()),
                        );
                      },
                      child: Container(
                        width: 200,
                        height: 300,
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
                        child: Column(
                          children: [
                            Image.network(
                              filteredProducts[index].photo,
                              width: 100,
                              height: 100,
                            ),
                            Text(filteredProducts[index].cost,
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.lightGreen[400],
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              width: 200,
                              child: Text(
                                filteredProducts[index].name,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Text(filteredProducts[index].shortdesc,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontSize: 12, color: Colors.grey)),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 300,
                childAspectRatio: 0.6,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
              ),
            );
          },
        ),
      ),
    );
  }
}
