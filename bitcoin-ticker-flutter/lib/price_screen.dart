import 'package:flutter/material.dart';
import 'coin_data.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {

  String _selectedCurrency = 'USD';

  @override
  Widget build(BuildContext context) {

    CupertinoPicker getCurrencyCupertinoPicker() {
      List<Text> pickerItems = currenciesList.map((e) => Text(e)).toList();
      return CupertinoPicker(
        itemExtent: 32,
        onSelectedItemChanged: (value) {
          setState(() {
            _selectedCurrency = currenciesList[value];
          });
          print(_selectedCurrency);
        },
        children: pickerItems,
      );
    }

    DropdownButton<String> getCurrencyDropdownButton() {
      List<DropdownMenuItem> menuItems = currenciesList.map((e) =>
          DropdownMenuItem(
            child: Text(e),
            value: e,
          )).toList();

      return DropdownButton<String>(
        value: _selectedCurrency,
        items: menuItems,
        onChanged: (value) {
          setState(() {
            _selectedCurrency = value;
          });
          print(_selectedCurrency);
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
            child: Card(
              color: Colors.lightBlueAccent,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                child: Text(
                  '1 BTC = ? USD',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: Platform.isIOS ? getCurrencyCupertinoPicker() : getCurrencyDropdownButton()
          ),
        ],
      ),
    );
  }
}
