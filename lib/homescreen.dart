import 'package:flutter/material.dart';
import 'Tabs/protection_tabs.dart';
import 'Tabs/summary_tabs.dart';
import 'Tabs/symptoms_tabs.dart';
import 'appbrain.dart';

class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<Tab> tabs =[
    Tab(text: 'Protection',),
    Tab(text: 'Symptoms',),
    Tab(text: 'Summary',)
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(150.0),
          child: Column(
            children: [
              Container(
                height: 150.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(20.0)),
                  image: DecorationImage(
                    image: AssetImage('images/Covid19.jpg'),
                    fit: BoxFit.cover,
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Center(
                      child: Text('Covid-19',style: TextStyle(
                        fontSize: 50.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                    Container(
                      transform: Matrix4.translationValues(0.0, 25.0, 0.0),
                      width: 350.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Color(0xff1E4375),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(40.0))
                      ),
                      child: TabBar(
                        indicator: BoxDecoration(
                            color: Color(0xff1E4375),
                            borderRadius: BorderRadius.all(Radius.circular(40.0))
                        ),
                        indicatorColor: Colors.transparent,
                        indicatorSize: TabBarIndicatorSize.tab,
                        labelColor: Colors.white,
                        labelStyle: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500,
                        ),
                        unselectedLabelColor: Color(0xff1E4375),
                        tabs: tabs,
                      ),
                    )
                  ],
                )
              ),

            ],
          )
        ),
        body: TabBarView(
          children: [
            ProtectionTabs(),
            SymptomsTabs(),
            SummaryTabs(),
          ],
        ),
      ),
    );
  }
}
