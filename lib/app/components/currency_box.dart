import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: SizedBox(
            height: 56,
              child: DropdownButton(
              iconEnabledColor: Colors.amber,
              isExpanded: true,
                underline: Container(height: 1, color: Colors.amber),
                items: [
                  DropdownMenuItem(child: Text('Real')),
                  DropdownMenuItem(child: Text('Dolar')),
                ], onChanged: (value) {}),
          )
        ),
        SizedBox(width: 10),
        Expanded(flex: 2, child: TextField(
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.amber),
            ),
          ),
        )),
      ],
    );
  }
}
