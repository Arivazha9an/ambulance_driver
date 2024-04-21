import 'package:ambulance_driver/constants.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool isObscure;
  final TextInputType keyboardType;
  final bool validate;
  final bool readOnly;
  final VoidCallback? ontap;
  final ValueChanged? onChanged;
  final int maxLines;
  final int? maxLength;
  final double? width;
  final Color? fillColor;
  final IconData? prefixicon;
  final IconData? icons;
  final VoidCallback? Ontap;

  final IconButton? suffixicon;
  const CustomTextFormField(
      {super.key,
      required this.controller,
      required this.hintText,
      this.isObscure = false,
      required this.keyboardType,
      this.validate = true,
      this.readOnly = false,
      this.ontap,
      this.onChanged,
      this.maxLines = 1,
      this.maxLength,
      this.width,
      this.fillColor,
      this.prefixicon,
      this.suffixicon,
      this.icons,
      this.Ontap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        boxShadow: const [
          // BoxShadow(
          //   color: Color(0x40000000),
          //   blurRadius: 38.099998474121094,
          // ),
          BoxShadow(
            offset: Offset(-4, 4),
            blurRadius: 18,
            spreadRadius: 0,
            color: const Color(0x17000000),
          )
        ],
      ),
      child: TextFormField(
        minLines: 1,
        maxLength: maxLength,
        maxLines: maxLines,
        readOnly: readOnly,
        controller: controller,
        validator: validate
            ? (value) {
                if (value!.isEmpty) {
                  return "Field cannot be empty";
                } else {
                  if (maxLength != null) {
                    if (value.length != maxLength) {
                      return "Invallid data";
                    }
                  }
                  return null;
                }
              }
            : (value) {
                return null;
              },
        onChanged: onChanged,
        keyboardType: keyboardType,
        style: const TextStyle(
          fontSize: 14,
          color: black,
          fontWeight: FontWeight.w400,
          letterSpacing: 1,
        ),
        onTap: ontap,
        obscureText: isObscure,
        obscuringCharacter: "*",
        decoration: InputDecoration(
            prefixIcon: prefixicon != null
                ? Icon(
                    prefixicon,
                  )
                : null,
            suffixIcon: suffixicon != null
                ? IconButton(onPressed: Ontap, icon: Icon(icons))
                : null,
            counter: const Offstage(),
            hintText: hintText,
            hintStyle: const TextStyle(
              fontSize: 14,
              letterSpacing: 1,
              color: grey,
            ),
            filled: true,
            fillColor: fillColor ?? Colors.white,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 18,
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(10),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(10),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(4),
            )),
      ),
    );
  }
}
