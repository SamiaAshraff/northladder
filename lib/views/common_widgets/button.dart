import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onPress;
  const CommonButton({this.text, this.onPress});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.purple),
            onPressed: onPress,
            child: Text(text!)));
  }
}
