import 'package:flutter/material.dart';
import 'product.dart';

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
        primaryColor: Colors.white,
      ),
      home: const MyHomePage(title: 'Sports Products'),
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
    const Product(
      image: 'sports_running_shoes.jpg',
      name: 'Running Shoes',
      price: 850.00,
      description:
          ' A footwear which protects and offers comfort to your feet. Comfortable Mixed canvas upper material. Soft footbed ensures all-day comfort.',
    ),
    const Product(
      image: 'fitness_watch.jpg',
      name: 'Fitness Watch',
      price: 750.00,
      description:
          'Automatic calendar with alarm function. Packed with features, including the ability to measure your stress levels, skin temperature, and blood oxygen saturation. Four-button watch for added control and flexibility in adjustment.',
    ),
    const Product(
      image: '1kg_Dumbbell.jpg',
      name: '1kg Dumbbell',
      price: 159.00,
      description:
          'Home easy-To-Use weightlifts weights. Ergonomic design helps reduce sebum.',
    ),
    const Product(
      image: 'sports_cap.jpg',
      name: 'Sports Cap',
      price: 448.35,
      description: 'material composition: 40% cotton 60% polyester.',
    ),
    const Product(
      image: 'sports_watch2.jpg',
      name: 'Sports Watch',
      price: 420.00,
      description:
          'Automatic calendar with alarm function. Stopwatch chronograph with time divided feature. Clear backlight in the darkest shade for clearer visibility.',
    ),
    const Product(
      image: 'jump_ropes.jpg',
      name: 'Jump Ropes',
      price: 269.00,
      description:
          'Fully adjustable cable with light weight handle for skipping & jumping which makes it ideal for both kids and adults. High speed jump rope is super quick and ultra-stable, with the goal that you can recuperate rapidly from off base swings.',
    ),
    const Product(
      image: '2kg_Dumbbell.jpg',
      name: '2kg Dumbbell',
      price: 195.00,
      description:
          'Aids in performing a wide variety of workouts to improve your health, strength and fitness. Ergonomic design helps reduce sebum. Secure non-slip grip.',
    ),
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
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 35.0,
          mainAxisSpacing: 20.0,
          //itemWidth / itemHeight
          childAspectRatio: 0.82,
        ),
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return DetailedProduct(tappedProduct: products[index]);
                }),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: const [
                  // shadow color
                  BoxShadow(
                    color: Color.fromARGB(197, 202, 195, 195),
                    offset: Offset(0.0, -1.0),
                  ),
                  BoxShadow(
                    // back ground color
                    color: Colors.white,
                    spreadRadius: -2.0,
                    blurRadius: 1.0,
                  ),
                ],
              ),
              child: products[index],
            ),
          );
          //return Card(
          //   //elevation: 2,
          //   shape: RoundedRectangleBorder(
          //     side: Border.fromBorderSide(buttom)
          //     // bottom(BorderSide(
          //     //   strokeAlign: StrokeAlign.inside,
          //     //   color: Color.fromARGB(215, 214, 206, 206),
          //     //   width: 2.0,
          //     // ),
          //     //borderRadius: BorderRadius.circular(20.0),
          //   ),
          //   //margin: const EdgeInsets.fromLTRB(11.0, 3.0, 11.0, 3.0),
          //   child: products[index],
          // );
        },
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}

class Product extends StatelessWidget {
  const Product(
      {super.key,
      required this.image,
      required this.name,
      required this.price,
      required this.description});

  final String image;
  final String name;
  final double price;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          height: 100,
          width: 100,
          child: Image.asset(image),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 13.0,
              ),
            ),
            Text(
              'EGP. $price',
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 11.0,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
