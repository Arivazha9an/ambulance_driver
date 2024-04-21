import 'package:ambulance_driver/constants.dart';
import 'package:ambulance_driver/widgets/custom_button.dart';
import 'package:ambulance_driver/widgets/custom_text_form.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class DriverDetails extends StatefulWidget {
  const DriverDetails({super.key});

  @override
  State<DriverDetails> createState() => _DriverDetailsState();
}

class _DriverDetailsState extends State<DriverDetails> {
  var dummytext = TextEditingController();
  var driver1Id = TextEditingController();
  var driver2Id = TextEditingController();
  var driver1License = TextEditingController();
  var driver2License = TextEditingController();
  var validity = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 60),
                    child: CustomTextFormField(
                      controller: dummytext,
                      hintText: 'Driver 1 Picture',
                      keyboardType: TextInputType.name,
                      readOnly: true,
                      validate: true,
                      width: 280,
                    ),
                  ),
                ),
                Positioned(
                  left: 220,
                  top: 72,
                  child: CustomTextButton(
                    title: 'Upload Image',
                    background: deepBlue,
                    textColor: white,
                    width: 90,
                    height: 30,
                    fontSize: 10,
                    onTap: () async {
                      final driver1Image = await ImagePicker().pickImage(
                        source: ImageSource.gallery,
                      );
                      setState(() {});
                    },
                  ),
                )
              ],
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: CustomTextFormField(
                  controller: driver1Id,
                  hintText: 'Driver 1 ID',
                  keyboardType: TextInputType.name,
                  validate: true,
                  width: 280,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: CustomTextFormField(
                  controller: driver1License,
                  hintText: 'Driver 1 License',
                  keyboardType: TextInputType.name,
                  validate: true,
                  width: 280,
                ),
              ),
            ),
            Stack(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: CustomTextFormField(
                      controller: dummytext,
                      hintText: 'Driver 2 Picture',
                      keyboardType: TextInputType.name,
                      validate: true,
                      width: 280,
                      readOnly: true,
                    ),
                  ),
                ),
                Positioned(
                  left: 220,
                  top: 52,
                  child: CustomTextButton(
                    title: 'Upload Image',
                    background: deepBlue,
                    textColor: white,
                    width: 90,
                    height: 30,
                    fontSize: 10,
                    onTap: () async {
                      final driver2Image = await ImagePicker().pickImage(
                        source: ImageSource.gallery,
                      );
                      setState(() {});
                    },
                  ),
                )
              ],
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: CustomTextFormField(
                  controller: driver2Id,
                  hintText: 'Driver 2 ID',
                  keyboardType: TextInputType.name,
                  validate: true,
                  width: 280,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: CustomTextFormField(
                  controller: driver2License,
                  hintText: 'Driver 2 License',
                  keyboardType: TextInputType.name,
                  validate: true,
                  width: 280,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: CustomTextFormField(
                  controller: validity,
                  hintText: 'Validity',
                  keyboardType: TextInputType.name,
                  validate: true,
                  width: 280,
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
