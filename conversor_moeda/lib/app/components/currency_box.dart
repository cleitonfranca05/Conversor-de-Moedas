import 'package:conversor_moeda/app/models/currency_model.dart';
import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  final List<CurrencyModel> items;
  final CurrencyModel selectedItem;
  final TextEditingController controller;
  final void Function(CurrencyModel model) onChanged;

  const CurrencyBox(
      {Key key, this.items, this.controller, this.onChanged, this.selectedItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 30, right: 30, bottom: 10),
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: SizedBox(
                height: 65,
                child: DropdownButton<CurrencyModel>(
                    isExpanded: true,
                    value: selectedItem,
                    underline: Container(
                      height: 1,
                      color: Colors.amber,
                    ),
                    items: items
                        .map((e) => DropdownMenuItem(
                            value: e,
                            child:
                                Text(e.name, style: TextStyle(fontSize: 25))))
                        .toList(),
                    onChanged: onChanged),
              )),
          SizedBox(
            width: 20,
          ),
          Expanded(
            flex: 2,
            child: TextField(
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25),
              controller: controller,
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber)),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.amber))),
            ),
          )
        ],
      ),
    );
  }
}
