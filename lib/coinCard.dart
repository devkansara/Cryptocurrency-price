import 'package:flutter/material.dart';

class CoinCard extends StatelessWidget {
  CoinCard({
    required this.name,
    required this.symbol,
    required this.imageUrl,
    required this.price,
    required this.change,
    required this.changePercentage,
  });

  String name;
  String symbol;
  String imageUrl;
  double price;
  double change;
  double changePercentage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0, left: 10, right: 10),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(0),
          boxShadow: [
            BoxShadow(
              color: const Color(0xff5A5A5A),
              offset: Offset(0, -1),
              blurRadius: 0,
              spreadRadius: -1.07,
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        name,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          //fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      symbol,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    price.toDouble().toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.5,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    change.toDouble() < 0
                        ? change.toDouble().toString()
                        : '+' + change.toDouble().toString(),
                    style: TextStyle(
                      color: change.toDouble() < 0 ? Colors.red : Colors.green,
                      fontSize: 13.5,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    changePercentage.toDouble() < 0
                        ? changePercentage.toDouble().toString() + '%'
                        : '+' + changePercentage.toDouble().toString() + '%',
                    style: TextStyle(
                      color: changePercentage.toDouble() < 0 ? Colors.red : Colors.green,
                      fontSize: 13.5,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
