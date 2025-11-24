import 'package:flutter/material.dart';
import 'package:lab1/data/currencies.dart';

class Lab1 extends StatefulWidget {
  const Lab1({super.key});

  @override
  State<Lab1> createState() => _Lab1State();
}

class _Lab1State extends State<Lab1> {
  List<Currencies> _currencies = [];

  void _getInfo() {
    _currencies = Currencies.getCurrencies();
  }

  @override
  Widget build(BuildContext contect) {
    _getInfo();
    Currencies? selectedCurrency1 = _currencies[0];
    Currencies? selectedCurrency2 = _currencies[1];
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          SizedBox(height: 20),
          dropdowns(selectedCurrency1, selectedCurrency2),
          SizedBox(height: 20),
          _textInput(selectedCurrency1, selectedCurrency2),
        ],
      ),
    );
  }

  Container dropdowns(
    Currencies? selectedCurrency1,
    Currencies? selectedCurrency2,
  ) {
    return Container(
      child: Column(
        children: [
          DropdownMenu(
            width: 300,
            initialSelection: _currencies[0],
            dropdownMenuEntries: _currencies
                .map((e) => DropdownMenuEntry(value: e, label: e.name))
                .toList(),
            onSelected: (value) {
              selectedCurrency1 = value;
              FocusManager.instance.primaryFocus?.unfocus();
            },
            enableSearch: true,
            requestFocusOnTap: true,
            enableFilter: true,
          ),
          SizedBox(height: 10),
          DropdownMenu(
            width: 300,
            initialSelection: _currencies[1],
            dropdownMenuEntries: _currencies
                .map((e) => DropdownMenuEntry(value: e, label: e.name))
                .toList(),
            onSelected: (value) {
              selectedCurrency2 = value;
              FocusManager.instance.primaryFocus?.unfocus();
            },
            enableSearch: true,
            requestFocusOnTap: true,
            enableFilter: true,
          ),
        ],
      ),
    );
  }

  Container _textInput(
    Currencies? selectedCurrency1,
    Currencies? selectedCurrency2,
  ) {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xff1D1617).withValues(alpha: 0.11),
            blurRadius: 40,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        children: [
          SizedBox(
            width: 300,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.all(20),
                hintText: 'Enter a sum',
                hintStyle: TextStyle(color: Color(0xffDDDADA), fontSize: 18),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide.none,
                ),
                suffixIcon: Container(
                  width: 100,
                  child: IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        VerticalDivider(
                          color: Colors.black,
                          indent: 10,
                          endIndent: 10,
                          thickness: 0.1,
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: Text(selectedCurrency1!.shortName),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            width: 300,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromARGB(255, 190, 190, 190),
                contentPadding: EdgeInsets.all(20),
                hintText: '0',
                hintStyle: TextStyle(
                  color: Color.fromARGB(255, 44, 43, 43),
                  fontSize: 18,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide.none,
                ),
                suffixIcon: Container(
                  width: 100,
                  child: IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        VerticalDivider(
                          color: Colors.black,
                          indent: 10,
                          endIndent: 10,
                          thickness: 0.1,
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: Text(selectedCurrency2!.shortName),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
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
        fontWeight: FontWeight.bold,
      ),
    ),
    backgroundColor: Colors.blue,
    centerTitle: true,
    elevation: 0,
  );
}
