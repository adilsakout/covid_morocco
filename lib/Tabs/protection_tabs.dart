import 'package:flutter/material.dart';

class ProtectionTabs extends StatelessWidget {
  List<String> items =[
    'WEAR MASK',
    'WASH YOUR HANDS',
    'COVER YOUR MOUTH',
    'CLEAN EVERYTHING'
  ];
  List<String> photo = [
    'images/mask.png',
    'images/hand.png',
    'images/face.png',
    'images/soop.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 15.0,left: 8.0),
          height: 200.0,
          child: ListView.builder(
              itemCount: items.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
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
                            image: AssetImage(photo[index]),
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
              }),
        ),
        Container(
          width: double.infinity,
          height: 200.0,
          margin: EdgeInsets.all(15.0),
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
            children: [
              Text('The best way to PROTECT',style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 10.0,),
              Text('avoid being exposed to it!',style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey
              ),),
              SizedBox(height: 10.0,),
              Text('Stay HOME, Stay SAFE',style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),),
            ],
          ),
        )
      ],
    );
  }
}
