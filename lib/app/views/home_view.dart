import 'package:flutter/material.dart';
import 'package:flutter_converter/app/components/currency_box.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100, left: 20, right: 20, bottom: 20),
              child: Column(children: [
                Image.asset('assets/images/logo.png', width: 150, height: 150),
                SizedBox(height: 50),
                CurrencyBox(),
                SizedBox(height: 10),
                CurrencyBox(),
                SizedBox(height: 50),
                ElevatedButton(onPressed: (){}, child: Text('CONVERTER'), 
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.amber)
                  )
                )
              ],) 
            ),
          ],
        ),
      ),
    );
  }
}
