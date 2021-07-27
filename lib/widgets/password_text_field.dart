import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  final TextEditingController textValueController;
  final String valueKey;
  final Function onEditComplete;
  final String hint;
  final Function onValidate;
  final FocusNode node;
  final String labelText;

  PasswordTextField(
      {this.textValueController,
        this.labelText,
        this.hint,
        this.onEditComplete,
        this.onValidate,
        this.valueKey,
        this.node});

  @override
  _PasswordTextFieldState createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {

    return TextFormField(
      style: TextStyle(color: Colors.white),
      key: ValueKey(widget.valueKey),
      controller: widget.textValueController ,
      focusNode: widget.node,
      validator: widget.onValidate,
      textInputAction: TextInputAction.next,
      onEditingComplete: widget.onEditComplete,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        labelText: widget.labelText,
        hintStyle: TextStyle(color: Colors.grey),
        border: OutlineInputBorder(
          borderSide: BorderSide(
              color: Colors.white,
              width: 20
          ),
          borderRadius: BorderRadius.circular(30.0),

        ),
          focusColor: Colors.brown,

          fillColor: Colors.transparent,
          filled: true,
          prefixIcon: Icon(Icons.lock,color: Colors.white,),
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
            child: Icon(_obscureText
                ? Icons.visibility
                : Icons.visibility_off,color:Colors.grey,),
          ),


          hintText: widget.hint,
      ),
      obscureText: _obscureText,

    );
  }
}
