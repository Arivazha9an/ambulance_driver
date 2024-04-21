import 'package:ambulance_driver/constants.dart';
import 'package:ambulance_driver/widgets/custom_button.dart';
import 'package:ambulance_driver/widgets/custom_text_form.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AmbulanceDetails extends StatefulWidget {
  const AmbulanceDetails({super.key});

  @override
  State<AmbulanceDetails> createState() => _AmbulanceDetailsState();
}

class _AmbulanceDetailsState extends State<AmbulanceDetails> {
  final ambulancenum = TextEditingController();
  final DriverID = TextEditingController();
  List<Widget> _textFields = [];
  final driverid = TextEditingController();
  final EmtidController = TextEditingController();
  final emtidcontorller = TextEditingController();
  final front = TextEditingController();
  final realt = TextEditingController();
  final left = TextEditingController();
  final right = TextEditingController();

//driver
  List numid = [];
  String id = "";

  addString(content) {
    setState(() {
      id = content;
    });
  }

  addList() {
    setState(() {
      numid.add({"value": id});
    });
  }

  deleteItem(index) {
    setState(() {
      numid.removeAt(index);
    });
  }

  //emt

  List Emtnumid = [];
  String Emtid = "";

  EmtaddString(Emtcontent) {
    setState(() {
      Emtid = Emtcontent;
    });
  }

  EmtaddList() {
    setState(() {
      Emtnumid.add({"value": Emtid});
    });
  }

  EmtdeleteItem(Emtindex) {
    setState(() {
      Emtnumid.removeAt(Emtindex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 60),
                child: CustomTextFormField(
                  controller: ambulancenum,
                  hintText: 'Vehicle Number',
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
                  controller: DriverID,
                  hintText: 'Driver ID',
                  keyboardType: TextInputType.name,
                  width: 280,
                  validate: true,
                  suffixicon: IconButton(
                    icon: Icon(Icons.abc),
                    onPressed: () {},
                  ),
                  icons: Icons.add_circle_outlined,
                  Ontap: () {
                    addList();
                  },
                  onChanged: (content) {
                    addString(content);
                  },
                ),
              ),
            ),
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: numid.length,
                itemBuilder: (context, index) {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: SizedBox(
                        width: 280,
                        child: CustomTextFormField(
                          controller: driverid,
                          hintText: numid[index]['value'].toString(),
                          keyboardType: TextInputType.name,
                          readOnly: true,
                          fillColor: Color.fromARGB(255, 226, 226, 226),
                          suffixicon: IconButton(
                            icon: Icon(Icons.abc),
                            onPressed: () {},
                          ),
                          icons: Icons.remove_circle_outlined,
                          validate: true,
                          Ontap: () {
                            deleteItem(index);
                          },
                        ),
                      ),
                    ),
                  );
                }),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 40),
                child: CustomTextFormField(
                  controller: EmtidController,
                  hintText: 'EMT ID',
                  keyboardType: TextInputType.name,
                  width: 280,
                  suffixicon: IconButton(
                    icon: Icon(Icons.abc),
                    onPressed: () {},
                  ),
                  icons: Icons.add_circle_outlined,
                  validate: true,
                  Ontap: () {
                    EmtaddList();
                  },
                  onChanged: (Emtcontent) {
                    EmtaddString(Emtcontent);
                  },
                ),
              ),
            ),
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: Emtnumid.length,
                itemBuilder: (context, Emtindex) {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: SizedBox(
                        width: 280,
                        child: CustomTextFormField(
                          controller: emtidcontorller,
                          hintText: Emtnumid[Emtindex]['value'].toString(),
                          keyboardType: TextInputType.name,
                          readOnly: true,
                          fillColor: Color.fromARGB(255, 226, 226, 226),
                          suffixicon: IconButton(
                            icon: Icon(Icons.abc),
                            onPressed: () {},
                          ),
                          icons: Icons.remove_circle_outlined,
                          Ontap: () {
                            EmtdeleteItem(Emtindex);
                          },
                        ),
                      ),
                    ),
                  );
                }),
            Stack(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: CustomTextFormField(
                      controller: ambulancenum,
                      hintText: 'Front Picture',
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
                      final frontImage = await ImagePicker().pickImage(
                        source: ImageSource.gallery,
                      );
                      setState(() {});
                    },
                  ),
                )
              ],
            ),
            Stack(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: CustomTextFormField(
                      controller: realt,
                      hintText: 'Real Picture',
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
                      final realImage = await ImagePicker().pickImage(
                        source: ImageSource.gallery,
                      );
                      setState(() {});
                    },
                  ),
                )
              ],
            ),
            Stack(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: CustomTextFormField(
                      controller: left,
                      hintText: 'Side 1 Picture',
                      keyboardType: TextInputType.name,
                      readOnly: true,
                      validate: true,
                      width: 280,
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
                      final side1Image = await ImagePicker().pickImage(
                        source: ImageSource.gallery,
                      );
                      setState(() {});
                    },
                  ),
                )
              ],
            ),
            Stack(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: CustomTextFormField(
                      controller: right,
                      hintText: 'Side 2 Picture',
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
                      final side2Image = await ImagePicker().pickImage(
                        source: ImageSource.gallery,
                      );
                      setState(() {});
                    },
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 180, right: 25),
              child: CustomTextButton(
                  title: 'Next',
                  background: deepBlue,
                  textColor: white,
                  fontSize: 16,
                  width: 120,
                  height: 40,
                  onTap: () {}),
            ),
            SizedBox(
              height: 40,
            )
          ]),
        ),
      ),
    );
  }
}
