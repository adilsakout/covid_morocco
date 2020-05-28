import 'package:flutter/material.dart';

class SymptomsTabs extends StatelessWidget {

  List<String> items = [
    'HEADACHE',
    'DRY COUGH',
    'SHORT BREATH',
    'HIGHT FEVER',
  ];
  List<String> photos =[
    'images/head.png',
    'images/couch.png',
    'images/breath.png',
    'images/heat.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
          itemCount: items.length,
          itemBuilder: (context,index){
        return Container(
          decoration: BoxDecoration(
              color: Color(0xffE9F4F8),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
                topLeft: Radius.circular(20.0),
              )
          ),
          width: 160.0,
          margin: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  child: Image(
                    image: AssetImage(photos[index]),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xff1E4375),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                        topLeft: Radius.circular(20.0),
                      )
                  ),
                  child: Center(
                    child: Text(items[index],style: TextStyle(
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                      fontSize: 12.0,
                    ),),
                  ),
                ),
              ),
            ],
          ),
        );
      })
    );
  }
}
