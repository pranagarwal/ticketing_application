import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_list_info.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/tickets_tab.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/column_layout.dart';
import '../widgets/layour_builder_widget.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getHeight(20),
                vertical: AppLayout.getHeight(20)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text(
                "Tickets",
                style: Styles.headLineStyle1,
              ),
              Gap(AppLayout.getHeight(24)),
              const AppTicketTabs(
                firstTab: "Upcoming",
                secondTab: "Previous",
              ),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(
                  ticket: ticketList[0],
                  isColor: true,
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                margin: EdgeInsets.symmetric(horizontal: 15),
                color: Colors.white,
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                          firsttext: "Pranshu Agarwal",
                          secondtext: "Passenger",
                          alignment: CrossAxisAlignment.start,
                          isColor: false),
                      AppColumnLayout(
                          firsttext: "52271 685933",
                          secondtext: "Passport",
                          alignment: CrossAxisAlignment.end,
                          isColor: false),
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  AppLayoutBuilder(sections: 15, isColor: false, width: 5),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                          firsttext: "43478 432 4647",
                          secondtext: "No of E-Ticket",
                          alignment: CrossAxisAlignment.start,
                          isColor: false),
                      AppColumnLayout(
                          firsttext: "B2M4D9B6",
                          secondtext: "Booking Code",
                          alignment: CrossAxisAlignment.end,
                          isColor: false),
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  AppLayoutBuilder(sections: 15, isColor: false, width: 5),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/visa.png',
                                scale: 11,
                              ),
                              Text(
                                " *** 2462",
                                style: Styles.headLineStyle3,
                              ),
                            ],
                          ),
                          Gap(5),
                          Text(
                            "Payment Method",
                            style: Styles.headLineStyle4,
                          ),
                        ],
                      ),
                      AppColumnLayout(
                          firsttext: "\$899.99",
                          secondtext: "Price",
                          alignment: CrossAxisAlignment.end,
                          isColor: false),
                    ],
                  ),
                  SizedBox(
                    height: 1,
                  ),
                ]),
              ),
              SizedBox(
                height: 1,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(21),
                      bottomLeft: Radius.circular(21)),
                ),
                margin: EdgeInsets.only(left: 15, right: 15),
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(15)),
                    child: BarcodeWidget(
                      barcode: Barcode.code128(),
                      data: 'https://github.com/martinovovo',
                      drawText: false,
                      color: Styles.textColor,
                      height: 70,
                      width: double.infinity,
                    ),
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(
                  ticket: ticketList[0],
                ),
              ),
            ],
          ),
          Positioned(
            left: AppLayout.getHeight(22),
            top: AppLayout.getHeight(395),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2),
              ),
              child: CircleAvatar(
                maxRadius: 5,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: AppLayout.getHeight(22),
            top: AppLayout.getHeight(395),
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2),
              ),
              child: CircleAvatar(
                maxRadius: 5,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
