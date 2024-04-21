import 'package:ambulance_driver/constants.dart';
import 'package:ambulance_driver/widgets/custom_button.dart';
import 'package:ambulance_driver/widgets/custom_text_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String userimage;
  final String username;
  final String userphone;
  final String pickup;
  final String destination;

  const CustomContainer(
      {super.key,
      required this.userimage,
      required this.username,
      required this.userphone,
      required this.pickup,
      required this.destination});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 300,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 197, 223, 245),
          borderRadius: BorderRadius.circular(12)),
      child: Row(children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  userimage,
                  height: 50,
                  width: 50,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Text(
                username,
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 5),
              child: Text(
                userphone,
                style: TextStyle(fontSize: 10),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(left: 30, right: 15, top: 20),
          child: Column(
            children: [
              Icon(
                Icons.location_on,
                color: Colors.red,
              ),
              Icon(
                Icons.arrow_downward,
                color: Colors.black,
              ),
              Icon(
                Icons.location_on,
                color: Colors.green,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 21),
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Text(pickup),
                  ],
                ),
                height: 20,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Column(
                  children: [
                    Text(destination),
                  ],
                ),
                height: 20,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35, left: 70, right: 5),
                child: CustomTextButton(
                    title: 'Accept',
                    background: deepBlue,
                    width: 85,
                    textColor: white,
                    fontSize: 14,
                    onTap: () {}),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
