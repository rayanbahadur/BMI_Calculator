import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: <Widget>[
          Expanded(child: Row(
            children: <Widget>[
              Expanded(child: ReuseableCard(colour:Color(0xFF1e1f31),)),
              Expanded(child: ReuseableCard(colour:Color(0xFF1e1f31),)),
            ],
          )),
          Expanded(child: Container(
            margin: const EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              color: const Color(0xFF1e1f31),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),),
          Expanded(child: Row(
            children: <Widget>[
              Expanded(child: ReuseableCard(colour:Color(0xFF1e1f31),)),
              Expanded(child: ReuseableCard(colour:Color(0xFF1e1f31),)),
            ],
          )),
        ],
      ),
    );
  }
}

class ReuseableCard extends StatelessWidget {

  ReuseableCard({required this.colour});

  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}