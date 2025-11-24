import 'package:flutter/material.dart';
import 'package:lab1/data/currencies.dart';

class Lab1 extends StatefulWidget {
  const Lab1({super.key});

  @override
  State<Lab1> createState() => _Lab1State();
}

class _Lab1State extends State<Lab1> {
  var _selectedCurrency;

  List<Currencies> _currencies = [];

  void _getInfo(){
    _currencies = Currencies.getCurrencies();
  }

  @override
  Widget build(BuildContext contect) {
    _getInfo();
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: ListView(children: [
        _textInput(),
        SizedBox(height: 40,),
        Container(
          child: DropdownButton(
            hint: Text('Select a Currency'),
            value: _selectedCurrency,
            onChanged: (newValue){
              setState(() {
                _selectedCurrency = newValue;
              });
            },
            items: _currencies.iterator(((name) {

            }
            )
        )
      ],)

    );
  }

  Container _textInput() {
    return Container(
        margin: EdgeInsets.only(top: 40, left: 20, right: 20),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0xff1D1617).withValues(alpha: 0.11),
              blurRadius: 40,
              spreadRadius: 0,
            )
          ]
        ),
        
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.all(20),
            hintText: 'Enter a sum',
            hintStyle: TextStyle(color: Color(0xffDDDADA), fontSize: 14),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none,
            ),
            suffixIcon: Container(
              color: Colors.blue,
              width: 40,
              padding: EdgeInsets.all(8),
              child: Text(
                'x',
                textAlign: TextAlign.center,
                ),
            )
          ),
        ),
      );
  }
}

AppBar appBar() {
    return AppBar(
      title: Text(
        'Currency Converter',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold
        )
      ),
      backgroundColor: Colors.blue,
      centerTitle: true,
      elevation: 0,
    );
  }

