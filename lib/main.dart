import 'package:flutter/material.dart';

void main() {
  runApp(Basket());
}

class Basket extends StatefulWidget {
  @override
  State<Basket> createState() => _BasketState();
}

class _BasketState extends State<Basket> {
  int PointA = 0;

  int PointB = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('Points Counter'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Team A ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '$PointA',
                        style: TextStyle(
                          fontSize: 150,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          maximumSize: Size(160, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            PointA++;
                          });
                        },
                        child: const Text(
                          'Add 1 Point',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          maximumSize: Size(160, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            PointA = PointA + 2;
                          });
                        },
                        child: const Text(
                          'Add 2 Point',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          maximumSize: Size(160, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            PointA = PointA + 3;
                          });
                        },
                        child: const Text(
                          'Add 3 Point',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 500,
                  child: const VerticalDivider(
                    color: Colors.black,
                    thickness: 2,
                  ),
                ),
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Team B ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '$PointB',
                        style: TextStyle(
                          fontSize: 150,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          maximumSize: Size(160, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            PointB++;
                          });
                        },
                        child: const Text(
                          'Add 1 Point',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          maximumSize: Size(160, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            PointB = PointB + 2;
                          });
                        },
                        child: const Text(
                          'Add 2 Point',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          maximumSize: Size(160, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            PointB = PointB + 3;
                          });
                        },
                        child: const Text(
                          'Add 3 Point',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                maximumSize: Size(160, 50),
              ),
              onPressed: () {
                setState(() {
                  PointA=0;
                  PointB = 0 ;
                });
              },
              child: const Text(
                'Reset',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
