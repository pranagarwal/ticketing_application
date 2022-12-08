import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/double_text_widget.dart';
import 'package:booktickets/widgets/icon_text_widget.dart';
import 'package:booktickets/widgets/tickets_tab.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20), vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text("What are \n you looking for?",
          style: Styles.headLineStyle1.copyWith(fontSize: 35),),
          Gap(AppLayout.getHeight(40)),
          AppTicketTabs(firstTab: "Airline Tickets", secondTab: "Hotels",),
          Gap(AppLayout.getHeight(25)),
          const AppIconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(AppLayout.getHeight(20)),
          const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
          Gap(AppLayout.getHeight(25)),
          Container(
    padding: EdgeInsets.symmetric(vertical: AppLayout.getWidth(18), horizontal: AppLayout.getHeight(15)),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
    color: Color(0xD91130CE),
    ),
    child: Center(
      child: Text("Find Tickets", style: Styles.textStyle.copyWith(color: Colors.white),
    ),
    ),
    ),
          Gap(AppLayout.getHeight(40)),
          AppDoubleTextWidget(bigText: "Upcoming Flights", smallText: "View All"),
          Gap(AppLayout.getHeight(10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(400),
                width: size.width*0.42,
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15), vertical: AppLayout.getWidth(15)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(AppLayout.getWidth(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 3,
                    ),
                  ]
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getWidth(190),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                        image: DecorationImage(
                          image: AssetImage('assets/images/two.jpeg'),
                          fit: BoxFit.cover,
                        )
                      ),
                    ),
                    Gap(AppLayout.getHeight(15)),
                    Text("20% Flat Discount on Selected Hotels and Flights. Don't Miss this amazing CHANCE !!",
                      style: Styles.headLineStyle2,),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width*0.44,
                        height: AppLayout.getHeight(200),
                        decoration: BoxDecoration(
                          color: Color(0xFF3AB8B8),
                          borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15), vertical: AppLayout.getHeight(15 )),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(" Discount \nfor Survey", style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 35),),
                            Gap(AppLayout.getHeight(10)),
                            Text("Take the Survey for our Services and Grab the Discount !!!!", style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.w500, color: Colors.white, fontSize: 18),),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                        padding: EdgeInsets.all(AppLayout.getHeight(30)),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 18, color: Color(0xFF189999)),
                          color: Colors.transparent,
                        ),
                      ),)
                    ],
                  ),
                  const Gap(10),
                  Container(
                    width: size.width*0.44,
                    height: AppLayout.getHeight(190),
                    padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15), vertical: AppLayout.getHeight(15)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                      color: Color(0xFFEC6545),
                    ),
                    child: Column(
                      children: [
                        Text("Take Love", style: Styles.headLineStyle2.copyWith(color: Colors.white, fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                        const Gap(35),
                        RichText(text: const TextSpan(
                          children: [
                            TextSpan(
                              text: '🤩',
                              style: TextStyle(fontSize: 38),
                            ),
                            TextSpan(
                              text: '🤗',
                              style: TextStyle(fontSize: 53),
                            ),
                            TextSpan(
                              text: '😜',
                              style: TextStyle(fontSize: 38),
                            )
                          ]
                        ))
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )

        ],
      ),
    );
  }
}
