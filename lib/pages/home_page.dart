import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_flutter/components/my_button.dart';
import 'package:wallet_flutter/components/my_card.dart';
import 'package:wallet_flutter/utils/my_list_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controllerSmooth = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  size: 32,
                  color: Colors.pink[200]
                )),
            IconButton(onPressed: () {}, icon: Icon(Icons.settings, size: 32,color: Colors.grey,))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        child: Icon(
          Icons.monetization_on_outlined,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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
              controller: _controllerSmooth,
              scrollDirection: Axis.horizontal,
              children: [
                MyCard(
                    balance: "4'850.000",
                    cardNumber: 1258745887,
                    expiryMonth: 05,
                    expiryYear: 23,
                    color: Colors.blue[300]),
                MyCard(
                    balance: "1'850.000",
                    cardNumber: 12547854,
                    expiryMonth: 11,
                    expiryYear: 26,
                    color: Colors.purple[300]),
                MyCard(
                    balance: "750.000",
                    cardNumber: 577788225,
                    expiryMonth: 01,
                    expiryYear: 24,
                    color: Colors.green[300]),
              ],
            ),
          ),
          SizedBox(height: 25),
          SmoothPageIndicator(
            controller: _controllerSmooth,
            count: 3,
            effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade700),
          ),
          SizedBox(height: 25),
          //3 buttons -> send + pay + bills
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyButton(
                    iconImagePath: 'lib/icons/send-money.png',
                    buttonText: 'Enviar'),
                MyButton(
                    iconImagePath: 'lib/icons/credit-card.png',
                    buttonText: 'Pagar'),
                MyButton(
                    iconImagePath: 'lib/icons/bill.png', buttonText: 'Cuentas')
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          //column -> stats -> transactions
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                MyListTile(
                    iconImagePath: 'lib/icons/statistics.png',
                    tileTile: 'Estadisticas',
                    tileSubTitle: 'Ingresos y gastos'),
                MyListTile(
                    iconImagePath: 'lib/icons/transaction.jpeg',
                    tileTile: 'Transaccion',
                    tileSubTitle: 'Ingresos y gastos')
              ],
            ),
          )
        ],
      ),
    );
  }
}
