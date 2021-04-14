import 'package:flutter/widgets.dart';
import 'package:flutter_converter/app/controllers/home_controller.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();
  final homeController = HomeController(fromText: fromText, toText: toText);

  test('should convert from real to dollar', () {
    toText.text = '2.0';
    homeController.convert();
    
    expect(fromText.text, '0.36');
  });
}
