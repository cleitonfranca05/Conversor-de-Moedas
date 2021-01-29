import 'package:conversor_moeda/app/components/currency_box.dart';
import 'package:conversor_moeda/app/controllers/home_controllers.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController toText = TextEditingController();

  final TextEditingController fromText = TextEditingController();
  HomeController homeController;

  @override
  void initState() {
    super.initState();

    homeController = HomeController(toText: toText, fromText: fromText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 100.0, bottom: 50, left: 20, right: 20),
                child: Image.asset(
                  'assets/images/logo.png',
                  height: 200,
                  width: 200,
                ),
              ),
              CurrencyBox(
                selectedItem: homeController.toCurrency,
                controller: toText,
                items: homeController.currencies,
                onChanged: (model) {
                  setState(() {
                    homeController.toCurrency = model;
                  });
                },
              ),
              CurrencyBox(
                selectedItem: homeController.fromCurrency,
                controller: fromText,
                items: homeController.currencies,
                onChanged: (model) {
                  setState(() {
                    homeController.fromCurrency = model;
                  });
                },
              ),
              SizedBox(height: 40),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: RaisedButton(
                  color: Colors.grey,
                  onPressed: () {
                    homeController.convert();
                  },
                  child: Text(
                    'Converter',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
