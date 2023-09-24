import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myprojectseller/screens/homepage/cards/view/hotelcard.dart';
import 'package:myprojectseller/screens/homepage/cards/view/ordercard.dart';
import 'package:myprojectseller/screens/homepage/widgets/drawer.dart';
import 'package:myprojectseller/screens/homepage/widgets/floatingaction.dart';
import 'package:myprojectseller/screens/homepage/widgets/navigation_bar.dart';
import 'package:myprojectseller/screens/homepage/widgets/searchbar.dart';
import 'package:myprojectseller/screens/homepage/widgets/slider.dart';
import 'package:myprojectseller/screens/hotels/itemsexpand/item_expanded.dart';
import 'package:myprojectseller/widget/bottom_modal_sheet.dart';
import 'package:myprojectseller/widget/headertext.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String name = 'Ananthu';
  final String item='Burger-5';
  final num seat = 5;
  final String time = '3:00 pm';
  final num price=560;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Center(
            child: Text(
          'FoodNow',
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.red.shade700),
        )),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: CustomSearchBar());
              },
              icon: Icon(Icons.search))
        ],
      ),
      drawer: DrawerCustomer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // SizedBox(height: 60,),

            // DrawerTile(),
            // SizedBox(height: 60,),

            Container(
              height: 200,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Orders',
                          style: headerText(),
                        ),
                        Icon(
                          Icons.notifications,
                          color: Colors.yellow.shade800,
                        )
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          OrderCard(
                              name: name, item: item, seat: seat, time: time,price: price,),
                               OrderCard(
                              name: name, item: item, seat: seat, time: time,price: price,),
                               OrderCard(
                              name: name, item: item, seat: seat, time: time,price: price,),
                               OrderCard(
                              name: name, item: item, seat: seat, time: time,price: price,),
                               OrderCard(
                              name: name, item: item, seat: seat, time: time,price: price,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Text("Mozon Restaurant",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
                  // TextButton(onPressed: () {

                  // }, child: Text('Change location')),
                ],
              ),
            ),
            Divider(thickness: 2,),

            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Today Menu',
                    style: headerText(),
                  ),
                  TextButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ItemExpandedScreen(),));
                  }, child: Text('See all'))
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                children: [
                  HotelCard(),
                  HotelCard(),
                  HotelCard(),
                  HotelCard(),

                ],
                
              ),
            ),
            TextButton(onPressed: () {
              
              showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return ItemModalSheet();
      },
    );
            }, 
            
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Add More Items'),
                Icon(Icons.add)
              ],
            )),
            //  SizedBox(height: 20),
            //  Padding(
            //    padding: const EdgeInsets.only(left: 15),
            //    child: Row(
            //      children: [
            //        Text('Hey! What do you Preffer',style: TextStyle(fontWeight: FontWeight.w500),),
            //      ],
            //    ),
            //  ),
            //  TabBar(
            //   labelColor: Colors.black,
            //   tabs: [
            //   Tab(
            //     text: 'Meals',
            //   ),
            //   Tab(
            //     text: 'Burgers',
            //   ),
            //   Tab(
            //     text: 'Desserts',
            //   ),
            //   Tab(
            //     text: 'Snacks',
            //   ),
            //   ],
            //  controller: _controller,
            //  )
          ],
        ),
      ),
      bottomNavigationBar: buildNavigationBar(),
      // floatingActionButton: BuildFloatingButton(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // extendBody: true,
    );
  }
}
