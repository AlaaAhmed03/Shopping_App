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
      title: 'Shopping App',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Products'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Product> products = [
    Product(
        image: 'sports_running_shoes.jpg',
        name: 'Sports Running Shoes',
        price: 50000),
    Product(image: 'sports_watch.jpg', name: 'Sport Watch', price: 30000),
    Product(image: 'sports_cap.jpg', name: 'Sports Cap', price: 2000),
    Product(
        image: 'sports_running_shoes.jpg',
        name: 'Sports Running Shoes',
        price: 50000),
    Product(
        image: 'sports_running_shoes.jpg',
        name: 'Sports Running Shoes',
        price: 50000),
    Product(
        image: 'sports_running_shoes.jpg',
        name: 'Sports Running Shoes',
        price: 50000),
    Product(
        image: 'sports_running_shoes.jpg',
        name: 'Sports Running Shoes',
        price: 50000),
  ];

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: GestureDetector(
        onTap: () {
          //Navigator
        },
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 4.0,
            ),
            itemCount: products.length,
            itemBuilder: (BuildContext context, int index) {
              return products[index];
            }),
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}

class Product extends StatelessWidget {
  Product({required this.image, required this.name, required this.price});

  var image;
  String name;
  int price;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          child: Image.asset(image),
          height: 100,
          width: 100,
        ),
        Text(
          name,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          '$price RS',
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
