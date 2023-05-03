import 'package:flutter/material.dart';
import 'package:sfe/screens/item.dart';
import 'package:sfe/screens/meals.dart';
import 'package:sfe/screens/tables.dart';

class Finish extends StatefulWidget {
  const Finish({super.key});

  @override
  State<Finish> createState() => _FinishState();
}

class _FinishState extends State<Finish> {
  late bool _hasItems = true;
  @override
  Widget build(BuildContext context) {
    if (selectedItems.isEmpty) {
      return Food();
    } else {
      return SafeArea(
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'TABLE:             ${number}',
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'ORDER LIST',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: selectedItems.length,
                  itemBuilder: (BuildContext context, int index) {
                    final item = selectedItems[index];
                    return ListTile(
                      title: Text(item[0],
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "myfont")), // item name
                      subtitle: Text(
                        'Quantity: ${item[1]}, Price: ${item[2]}, Note: ${item[3]}',
                      ),
                      trailing: IconButton(
                        icon: const Icon(Icons.remove, color: Colors.red),
                        onPressed: () {
                          setState(() {
                            selectedItems.removeAt(index);
                            _hasItems = selectedItems.isNotEmpty;
                          });
                        },
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        selectedItems.clear();
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        onPrimary: Colors.white,
                      ),
                      child: const Text('Cancel'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        print("LIST : ");
                        print("NUM DE TABLE :${number}");
                        print("ORDERS:");
                        for (int i = 0; i < selectedItems.length; i++) {
                          print(
                              "${selectedItems[i][0]} ${selectedItems[i][1]} ${selectedItems[i][2]} ${selectedItems[i][3]}");
                        }
                        // print("${selectedItems[0][0]}");
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        onPrimary: Colors.white,
                      ),
                      child: const Text('Confirm'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}
