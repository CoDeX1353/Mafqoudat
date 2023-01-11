import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class MyOTP extends StatelessWidget {
  const MyOTP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container (
      decoration: BoxDecoration (
        border: Border.all(color: Color (0xff6F3CFF),width: 1),
          borderRadius: BorderRadius.circular(10),
      ),
      height: 65,width: 62,
      child: TextFormField(
        onChanged: (value){
          if (value.length==1){
            FocusScope.of(context).nextFocus();
          }
        },
        style: Theme.of(context).textTheme.headline6,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
      ),

    );
  }
}