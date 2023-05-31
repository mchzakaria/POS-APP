import 'package:flutter/material.dart';
import 'dart:math';

class Food {
  final String name;
  final double price;
  final String link;

  Food({required this.name, required this.price, required this.link});
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FoodPage(),
    );
  }
}

class FoodPage extends StatefulWidget {
  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  final List<Food> foods = [
    Food(name: 'Pizza', price: 10.99, link: 'https://example.com/pizza'),
    Food(name: 'Burger', price: 8.99, link: 'https://example.com/burger'),
    Food(name: 'Taco', price: 6.99, link: 'https://example.com/taco'),
  ];
  final List<Map<String, dynamic>> orders = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Food')),
      body: ListView.builder(
        itemCount: foods.length,
        itemBuilder: (context, index) {
          final food = foods[index];
          return ListTile(
            title: Text(food.name),
            subtitle: Text('\$${food.price.toStringAsFixed(2)}'),
            onTap: () async {
              final result = await Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ItemPage(food: food)),
              );
              if (result != null) {
                setState(() {
                  orders.add(result);
                });
                _showMessage(context, result);
              }
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.check),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FinalPage(orders: orders)),
          );
        },
      ),
    );
  }

  void _showMessage(BuildContext context, Map<String, dynamic> data) {
    final food = data['food'] as Food;
    final quantity = data['quantity'] as int;
    final total = food.price * quantity;
    final message = 'You ordered $quantity ${food.name}(s) for a total of \$${total.toStringAsFixed(2)}';
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }
}

class ItemPage extends StatefulWidget {
  final Food food;

  ItemPage({required this.food});

  @override
  _ItemPageState createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.food.name)),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('\$${widget.food.price.toStringAsFixed(2)}'),
            SizedBox(height: 16),
            Text('Quantity'),
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      quantity = max(1, quantity - 1);
                    });
                  },
                ),
                Text(quantity.toString()),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      quantity++;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 16),
            ElevatedButton(
              child: Text('Next'),
              onPressed: () {
                Navigator.pop(context, {'food': widget.food, 'quantity': quantity});
              },
            ),
          ],
        ),
      ),
    );
  }
}

class FinalPage extends StatefulWidget {
  final List<Map<String, dynamic>> orders;

  FinalPage({required this.orders});

  @override
  _FinalPageState createState() => _FinalPageState();
}

class _FinalPageState extends State<FinalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Final')),
      body: ListView.builder(
        itemCount: widget.orders.length,
        itemBuilder: (context, index) {
          final order = widget.orders[index];
          final food = order['food'] as Food;
          final quantity = order['quantity'] as int;
          final total = food.price * quantity;
          return ListTile(
            title: Text('${food.name} x $quantity'),
            subtitle: Text('\$${total.toStringAsFixed(2)}'),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                setState(() {
                  widget.orders.removeAt(index);
                });
              },
            ),
          );
        },
      ),
    );
  }
}
