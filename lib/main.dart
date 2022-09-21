import 'package:flutter/material.dart';
import 'package:pertemuan3_mobile/list.dart';
import 'componen/category.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final data = [
    ['Burger', 'Hawkers', 2.89, 'burger.png'],
    ['Cheese Dip', 'Hawkers', 3.89, 'cheese_dip.png'],
    ['Cola', 'Mcdonald', 1.89, 'cola.png'],
    ['Fries', 'Mcdonald', 2.89, 'fries.png'],
    ['Ice Cream', 'Mcdonald', 2.89, 'ice_cream.png'],
    ['Noddles', 'Hawkers', 4.89, 'noodles.png'],
    ['Pizza', 'Dominos', 5.89, 'noodles.png'],
    ['Sandwich', 'Hawkers', 3.80, 'sandwich.png'],
    ['Wrap', 'Hawkers', 6.89, 'wrap.png'],
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          // ignore: prefer_const_constructors
          leading: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search, color: Colors.black),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.person, color: Colors.black),
              onPressed: () {},
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text(
                    "Loyalty Cards",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Text(
                    "Menu",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Category(),
              ListView.builder(
                itemCount: data.length,
                shrinkWrap: true,
                padding: const EdgeInsets.all(10.0),
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return ListTile(
                      title: Text('${data[index][0]}'),
                      leading: Image.asset('assets/images/${data[index][3]}'),
                      trailing: Text('\$${data[index][2]}'),
                      subtitle: Text('${data[index][1]}'));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
