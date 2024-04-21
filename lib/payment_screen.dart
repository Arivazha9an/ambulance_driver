import 'package:ambulance_driver/constants.dart';
import 'package:ambulance_driver/payment_update_screen.dart';
import 'package:ambulance_driver/provider/my_text_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    final amount = Provider.of<MyTextProvider>(context);
    var w = MediaQuery.sizeOf(context).width;
    var h = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: h * 0.1,
                ),
                Container(
                  height: h * 1,
                  width: w * 1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40.0),
                          topRight: Radius.circular(40.0)),
                      color: white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          offset: Offset(0.0, -5.0),
                          blurRadius: 10.0,
                        ),
                        const BoxShadow(
                          color: Colors.white,
                          offset: Offset(0.0, 100.0),
                          blurRadius:
                              100.0, // Large blurRadius to cover unwanted areas
                        ),
                      ]),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 70, left: 10, right: 220),
                        child: Text(
                          'Order Amount:',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 5, left: 20),
                        child: Text(
                          'Payment can be Paid now or Later as Well',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Center(
                        child: Container(
                          width: w * 0.8,
                          height: h * 0.35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: white,
                              border:
                                  Border.all(color: Colors.black, width: 0.1),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(
                                    0.0,
                                    0.0,
                                  ),
                                  blurRadius: 2,
                                )
                              ]),
                          child: Center(
                            child: Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 40),
                                  child: Icon(Icons.currency_rupee_sharp),
                                ),
                                SingleChildScrollView(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Text(
                                        amount.text,
                                        style: const TextStyle(
                                            fontSize: 50,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                                IconButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  PaymentUpdate()));
                                    },
                                    icon: Icon(
                                      CupertinoIcons.pencil,
                                      size: 30,
                                    ))
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
