import 'package:flutter/material.dart';
import 'package:wallet_flutter/components/my_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          //appbar
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Mis ',
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'tarjetas',
                        style: TextStyle(fontSize: 26),
                      ),
                    ],
                  ),
                  Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: Colors.grey[400], shape: BoxShape.circle),
                      child: Icon(Icons.add))
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          //cards
          Container(
            height: 200,
            child: PageView(
              scrollDirection: Axis.horizontal,
              children: [
                MyCard(
                    balance: "4'850.000",
                    cardNumber: 10258745587,
                    expiryMonth: 05,
                    expiryYear: 23,
                    color:Colors.blue),
              ],
            ),
          )

          //3 buttons -> send + pay + bills

          //column -> stats -> transactions
        ],
      ),
    );
  }
}
