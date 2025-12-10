import 'package:flutter/material.dart';

class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({super.key});

  @override
  State<CurrencyConverter> createState() => _CurrencyConverterState();
}

class _CurrencyConverterState extends State<CurrencyConverter> {

  //1. variable to store the value 
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Currency Converter'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              result.toString(),
              style: TextStyle(fontSize: 75, fontWeight: FontWeight.bold),
            ),
            Container(
             
              padding: const EdgeInsets.all(12),
              child: TextField(
                keyboardType: TextInputType.numberWithOptions(),
                controller: textEditingController,
                decoration: InputDecoration(
                  hintText: 'Please enter currency',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(12),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text)*81;
                  });
                  },
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.black),
                  foregroundColor: WidgetStatePropertyAll(Colors.white),
                  minimumSize: WidgetStatePropertyAll(Size(double.infinity,50))
                ),
                child: Text('Convert'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
