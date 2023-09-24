import 'package:flutter/material.dart';
import 'package:myprojectseller/widget/headertext.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key,required this.name,required this.item,required this.seat,required this.time,required this.price});
  final String name;
  final String item;
  final num seat;
  final String time;
  final num price;

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: IconButton(onPressed: () {
      //     Navigator.pop(context);
      //   }, icon: Icon(Icons.arrow_back_ios_new,color: Colors.black87,)),
      //   backgroundColor: Colors.white,
      // ),
      body: Column(
        children: [
          Container(height: 30,child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.black54,
              ),
            ],
          ),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Orders',style: headerText(),),
          ),
          Container(
            color: Colors.teal.shade100,
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: Column(crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Name : ${widget.name}'),
                Text('Items : ${widget.item}'),
                Text('Seats : ${widget.seat}'),
                Text('Time : ${widget.time}'),
                Text('Total Amount: ${widget.price}'),
                SizedBox(height: 10,),
                ElevatedButton(onPressed: () {
                  
                }, child: Text('Confirm')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}