import 'package:flutter/material.dart';
import 'package:mafqoudat/view/components/MyTextField.dart';

class MyDrop extends StatelessWidget {
  MyDrop ({required this.hint});
  final String hint;

  @override
  Widget build(BuildContext context) {
    return DropdownMenuItem (
      child: MyTextField (hint: hint),

    );
  }
}
