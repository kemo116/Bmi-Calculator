// ignore_for_file: use_key_in_widget_constructors, file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, must_be_immutable, unused_element, empty_statements

import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../BmiResult/BmiResultScreen.dart';

class Bmi extends StatefulWidget {
  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
double height= 120;
int weight = 40;
bool isMale= true;
int age = 15;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'BMI Calculator',
        ),
      ),
      body : Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: ()
                      {
                        setState((){
                          isMale = true;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Image(
                              image: AssetImage("assets/images/Male.png"),
                              height: 90.0,
                              width: 90.0,
                            ),
                            SizedBox(height:15),
                            Text('Male', style:
                            TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,

                            ),),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: isMale ?  Colors.blue : Colors.grey[850] ,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(()
                        {
                          isMale= false;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Image(
                              image: AssetImage("assets/images/f.png"),
                              height: 90.0,
                              width: 90.0,
                            ),
                            SizedBox(height:15),
                            Text('Female', style:
                            TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,

                            ),),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: isMale ? Colors.grey[850] : Colors.blue,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey[850],
                ),
                child: Column(
                  children:[
                    Text('HEIGHT',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text('${height.round()}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width:5),
                        Text('CM',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      value:height,
                      min:88,
                      max:220,
                      onChanged:(value){
                        setState(() {
                          height = value;
                        });
                        print(value.round());
                      }
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          Text('Weight', style:
                          TextStyle(
                            fontSize: 25,
                          ),),
                          SizedBox(
                              height:15
                          ),
                          Text('${weight}',
                            style: TextStyle(
                              fontSize: 30,
                                fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                              height:15
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      weight--;
                                    });
                                   },
                                heroTag: 'weight-',
                                mini: true,
                                  child: Icon(Icons.remove,color: Colors.white),
                                ),
                              SizedBox(width:10),
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    weight++;
                                  });
                                },
                                heroTag: 'weight+',
                                mini: true,
                                child: Icon(Icons.add,color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[850],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          Text('AGE', style:
                          TextStyle(
                            fontSize: 25,
                          ),),
                          SizedBox(
                              height:15
                          ),
                          Text('$age',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                              height:15
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    age--;
                                  });
                                },
                                heroTag: 'age-',
                                mini: true,
                                child: Icon(Icons.remove,color: Colors.white),
                              ),
                              SizedBox(width:10),
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    age++;
                                  });
                                },
                                heroTag: 'age+',
                                mini: true,
                                child: Icon(Icons.add,color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[850],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.grey[850],
            ),
            child: MaterialButton(onPressed: (){
              var result= weight/pow(height/100,2);
              print (result.round());
              Navigator.push(
                context, MaterialPageRoute(
                builder: (context)=> BmiResultScreen(
                  result: result.round(),
                  age: age,
                  isMale: isMale,
                ),
                  ),
              );
              },
                child:Text('Calculator',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
            ),
          ),
        ],
      ),
    );
  }
}


