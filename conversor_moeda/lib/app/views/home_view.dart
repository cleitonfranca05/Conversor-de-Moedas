import 'package:flutter/material.dart';

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
              padding: const EdgeInsets.only(
                  top: 100.0, bottom: 50, left: 20, right: 20),
              child: Image.asset(
                'assets/images/logo.png',
                height: 200,
                width: 200,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: SizedBox(
                          height: 65,
                          child: DropdownButton(
                              isExpanded: true,
                              underline: Container(
                                height: 1,
                                color: Colors.amber,
                              ),
                              items: [
                                DropdownMenuItem(child: Text('Real')),
                                DropdownMenuItem(child: Text('Dolar'))
                              ],
                              onChanged: (value) {}),
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      flex: 2,
                      child: TextField(
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.amber)),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.amber))),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 50),
            RaisedButton(
              color: Colors.amber,
              onPressed: () {},
              child: Text('CONVERTER'),
            )
          ],
        ),
      ),
    );
  }
}
