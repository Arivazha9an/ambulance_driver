import 'package:ambulance_driver/widgets/custom_container.dart';
import 'package:flutter/material.dart';

class Assigned extends StatefulWidget {
  const Assigned({super.key});

  @override
  State<Assigned> createState() => _AssignedState();
}

class _AssignedState extends State<Assigned> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Center(
              child: Text(
            'Assigned',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          )),
          SizedBox(
            height: 40,
          ),
          CustomContainer(
              userimage:
                  'https://imgs.search.brave.com/Q4bL_yMEAbXiFCo2MCwZ4wHEa5PwxrArKnfgEBhrCTU/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9hc3Nl/dHMuc3RpY2twbmcu/Y29tL2ltYWdlcy81/ODVlNGJmM2NiMTFi/MjI3NDkxYzMzOWEu/cG5n',
              username: 'abcd',
              userphone: '12833888',
              pickup: 'Coimbatore',
              destination: 'Chennai')
        ],
      ),
    ));
  }
}
