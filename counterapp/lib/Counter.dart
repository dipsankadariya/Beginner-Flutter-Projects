import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterApp();
}

class _CounterApp extends State<CounterApp> {
  int count = 0;

  void Increase() {
    setState(() {
      count++;
    });
  }

  void Decrease() {
    setState(() {
      count--;
    });
  }

  void Delete() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Counter App",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Text(
            "$count",
            style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.amberAccent),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: Increase,
                child: Icon(
                  Icons.add,
                  size: 40,
                  color: Colors.blue,
                ),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(30),
                ),
              ),
              SizedBox(
                width: 40,
              ),
              ElevatedButton(
                onPressed: Delete,
                child: Icon(Icons.delete, size: 40, color: Colors.grey[800]),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(30),
                ),
              ),
              SizedBox(
                width: 40,
              ),
              ElevatedButton(
                onPressed: Decrease,
                child: Icon(Icons.remove, size: 40, color: Colors.red),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(30),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
