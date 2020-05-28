import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:covidmorocco/appbrain.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:covidmorocco/wedgets/content.dart';

class SummaryTabs extends StatefulWidget {
  @override
  _SummaryTabsState createState() => _SummaryTabsState();
}

class _SummaryTabsState extends State<SummaryTabs> {
  Brain appData =Brain();
  bool Sprig = true ;
  int totalCase = 0;
  int totalDeath =0 ;
  int totalRecovered =0 ;
  void uploadUi() async{
    dynamic data = await appData.getData() ;
    setState(() {
      if (data != null) {
        Sprig =false ;
        totalCase = data["cases"];
        totalRecovered = data["recovered"];
        totalDeath = data["deaths"];
      }
    });
}
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    uploadUi()  ;
  }
  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: Sprig,
      child: Container(
        margin: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Covid-19 Statics of Morocco 🇲🇦',style: TextStyle(
              fontSize: 35.0,
              fontWeight: FontWeight.bold ,
              color: Color(0xff1E4375),
            ),),
            Content(title: 'confirmed cases',number: totalCase,color: Color(0xff1E4375) ,),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Content(title: 'Recovered',number: totalRecovered,color: Colors.green,),
                  Content(title: 'total death',number: totalDeath,color: Colors.red,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
