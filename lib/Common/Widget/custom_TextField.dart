import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class customTextField extends StatelessWidget {
  final TextEditingController? textController;
  final String hintText;
  final Function(String)? onChange;
  final bool changeBorderColor;
  final Widget? prefixIcon;
  const customTextField(
      {super.key,
      this.textController,
      required this.hintText,
      this.onChange,
      this.changeBorderColor = false,
      this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(
        fontSize: 16,
        color: Colors.black,
        fontWeight: FontWeight.w400,
        decorationThickness: 0,
      ),
      controller: textController,
      onChanged: onChange,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.black45),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black54, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black54, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }
}
