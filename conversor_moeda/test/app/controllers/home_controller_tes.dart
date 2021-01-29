import 'package:conversor_moeda/app/controllers/home_controllers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();

  final homeController = HomeController(toText: toText, fromText: fromText);

//  test('deve converter de real para dolar', () {
//    toText.text = '2.0';
//    homeController.convert();
//    expect(fromText.text, '0.36');
//  });
}
