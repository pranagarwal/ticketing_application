
import 'package:booktickets/screens/hotel_screen.dart';
import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/widgets/double_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_list_info.dart';
import '../utils/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text(
                           "Welcome", style: Styles.headLineStyle3,
                       ),
                       const Gap(5),
                       Text(
                           "Book Tickets", style: Styles.headLineStyle1,
                       ),
                     ],
                    ),
                   Container(
                     height: 100,
                     width: 100,

                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       image: const DecorationImage(
                         fit: BoxFit.cover,
                         image: AssetImage("assets/images/img1.jpg"),
                       ),
                     ),
                   ),
                  ],
                ),
                const Gap(30),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      const Icon(Icons.search, color: Colors.grey,),
                      const SizedBox(width: 6,),
                      Text("Search", style: Styles.headLineStyle4,),
                    ],
                  ),
                ),
                Gap(40),
                const AppDoubleTextWidget(bigText: "Upcoming Flights", smallText: "View All"),
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 16),
            child: Row(
              children: ticketList.map((singleTicket) => TicketView(ticket: singleTicket)).toList(),
            ),
          ),
          const Gap(15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const AppDoubleTextWidget(bigText: "Hotels", smallText: "View All"),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 16),
            child: Row(
              children: hotelList.map((singlehotel) => Hotel_Screen(hotel: singlehotel)).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
