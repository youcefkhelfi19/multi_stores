import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController textValueController;
  final String valueKey;
  final Function onValidate;
  final Function onEditComplete;
  final Function onSave;
  final String hint;
  final FocusNode node;
  final Icon icon;
  final String labelText;
  CustomTextField(
      {this.textValueController,
        this.labelText,
        this.onEditComplete,
      this.onValidate,
      this.onSave,
      this.valueKey,
      this.icon,
      this.hint,
      this.node});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: Colors.white),
      controller: textValueController,
       key: ValueKey(valueKey),
        validator: onValidate,
        textInputAction: TextInputAction.next,
        onEditingComplete: onEditComplete,
         keyboardType: TextInputType.emailAddress,
         decoration: InputDecoration(
          labelText: labelText,
           hintStyle: TextStyle(color: Colors.grey),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.white,
                  width: 20
              ),
              borderRadius: BorderRadius.circular(30.0),

            ),
            fillColor: Colors.transparent,
            filled: true,
            prefixIcon: icon,

            //
            hintText: hint),
             );
  }
}
