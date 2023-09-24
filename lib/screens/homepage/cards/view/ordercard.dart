import 'package:flutter/material.dart';
import 'package:myprojectseller/screens/orderpage/order.dart';

class OrderCard extends StatelessWidget {
  const OrderCard(
      {Key? key,
      required this.name,
      required this.item,
      required this.seat,
      required this.time,
      required this.price});
  final String name;
  final String item;
  final num seat;
  final String time;
  final num price;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OrderPage(
                name: name, item: item.toString(), seat: seat, time: time,price: price,),
          )),
      child: Container(
        height: 150,
        width: 100,
        child: Card(
          color: Colors.teal.shade200,
          shadowColor: Colors.black,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(name),
                    Text(item),
                    Text(seat.toString()),
                    Text(time),
                    Text(price.toString())

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
