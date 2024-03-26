import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ibm_calc/result.dart';
class IBMCalc extends StatefulWidget {
  const IBMCalc({super.key});

  @override
  State<IBMCalc> createState() => _IBMCalcState();
}

class _IBMCalcState extends State<IBMCalc> {
  bool gender = true;
  double height = 150;
  int weight = 60;
  int age = 20;
  double result = 19  ;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          "Body Mass Index",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 40,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      gender = false;
                    });
                  },
                  child: Container(
                    height: MediaQuery.sizeOf(context).height * 0.22,
                    width: MediaQuery.sizeOf(context).width * 0.47,
                    decoration: BoxDecoration(
                      color: gender == true ? Colors.grey : Colors.blueGrey,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.female,
                          color: Colors.black,
                          size: 120,
                        ),
                        Text(
                          'Female',
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      gender = true;
                    });
                  },
                  child: Container(
                    height: MediaQuery.sizeOf(context).height * 0.22,
                    width: MediaQuery.sizeOf(context).width * 0.47,
                    decoration: BoxDecoration(
                      color: gender == true ? Colors.blueGrey : Colors.grey,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.male,
                          color: Colors.black,
                          size: 120,
                        ),
                        Text(
                          'Male',
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Container(
              height: MediaQuery.sizeOf(context).height * 0.3,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Height".toUpperCase(),
                    style: const TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "${height.toInt()}cm",
                    style: const TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Slider(
                    min: 50,
                    max: 250,
                    value: height,
                    thumbColor: Colors.black,
                    activeColor: Colors.blueGrey,
                    inactiveColor: const Color.fromARGB(255, 105, 98, 98),
                    onChanged: (value) {
                      setState(
                        () {
                          height = value;
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.47,
                  height: MediaQuery.sizeOf(context).height * 0.25,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Weight",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "${weight}kg",
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              backgroundColor: Colors.blueGrey,
                            ),
                            onPressed: () {
                              setState(() {
                                weight--;
                              });
                            },
                            child: const Icon(
                              Icons.remove,
                              color: Colors.black,
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              backgroundColor: Colors.blueGrey,
                            ),
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                            child: const Icon(
                              Icons.add,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.47,
                  height: MediaQuery.sizeOf(context).height * 0.25,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Age",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "${age}YO",
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              backgroundColor: Colors.blueGrey,
                            ),
                            onPressed: () {
                              setState(() {
                                age--;
                              });
                            },
                            child: const Icon(
                              Icons.remove,
                              color: Colors.black,
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              backgroundColor: Colors.blueGrey,
                            ),
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                            child: const Icon(
                              Icons.add,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueGrey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              minimumSize: Size(
                MediaQuery.sizeOf(context).width * 0.97,
                MediaQuery.sizeOf(context).height * 0.07,
              ),
            ),
            onPressed: () {
result = weight / pow(height / 100, 2);



              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Result(age: age, result: result, gender: gender) ,
                ),
              );
            },
            child: Text(
              "Calculate".toUpperCase(),
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
