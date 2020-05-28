import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Content extends StatelessWidget {
  Content({this.number,this.title, this.color});
  final String title ;
  final int number ;
  final Color color ;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(10.0),
        padding: EdgeInsets.symmetric(vertical: 25.0,horizontal: 10.0),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2.0,
            color: Color(0xff1E4375),
          ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
              topLeft: Radius.circular(20.0),
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(title ,style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
            )),
            SizedBox(
              height: 10.0,
            ),
            Text(number.toString() ,style: TextStyle(
              color: color,
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),),
          ],
        ),
      ),
    );
  }
}
