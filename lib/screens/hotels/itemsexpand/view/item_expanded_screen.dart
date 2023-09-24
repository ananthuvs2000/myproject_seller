import 'package:flutter/material.dart';
import 'package:myprojectseller/screens/homepage/cards/cards.dart';

class ItemExpandedScreen extends StatefulWidget {
  ItemExpandedScreen({super.key});
  List<Widget>items=[HotelCard(),HotelCard()];

  @override
  State<ItemExpandedScreen> createState() => _ItemExpandedScreenState();
}

class _ItemExpandedScreenState extends State<ItemExpandedScreen>

 {
   List<Widget>items=[HotelCard(),HotelCard(),HotelCard(),HotelCard(),HotelCard(),HotelCard(),HotelCard(),HotelCard()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: GridView.builder(
        padding: EdgeInsets.only(left: 8,right: 8,top: 4),
        physics: BouncingScrollPhysics(),
        itemCount:items.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisSpacing: 3,crossAxisCount: 2,childAspectRatio: .8), itemBuilder: (context, index) {
        return HotelCard();
      },)
    );
  }
}