import 'package:flutter/material.dart';
import 'package:myprojectseller/screens/homepage/home.dart';

class CartPage extends StatefulWidget {
 CartPage({Key? key,required this.totalamount,required this.title,required this.number,required this.price,required this.gst});
  num totalamount;
  String title;
  num number;
  num price;
  num gst;

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
   
 
  void quantityAdd() {
    setState(() {
      widget.number++;
      
    });
  }
  void quantityLess(){
    if(widget.number>1){
      setState(() {
        widget.number--;
      });
    }else{
      showDialog(context: context,
                                 builder: (BuildContext context){
                                  return AlertDialog(
                                   
                                    
                                    title: Center(child: Text('No Item Selected')),
                                    content: Container(
                                      height: 50,
                                      width: 200,
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
                                      child: Column(
                                        children: [
                                         
                                          ElevatedButton(
                                            style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.red.shade200),
                        textStyle:MaterialStateProperty.all<TextStyle>(
                TextStyle(fontSize: 20,),
              ), shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
                        ),
                                            onPressed: () {
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
                                          }, child: Text('Search for restaurant')),
                                        ],
                                      ),
                                    ),
                                  );
                                 }
                                );
      
    }
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
                  leading: IconButton(onPressed: () {
                    Navigator.pop(context);
                  }, icon: Icon(Icons.arrow_back_ios,color: Colors.black,)),
                  title: Center(child: Text('FoodNow            ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.red.shade700),)),
                  
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 12,left: 10,right: 10,bottom: 10),
        child: Container(
          child:Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text('${widget.title} ',style: TextStyle(fontSize: 18),),
                ],
              ),
              Column(
                children: [
                  Text('  ${widget.price*widget.number+widget.gst}',style: TextStyle(fontSize: 18),),
                  Container(
                                height: 40,
                                width: 120,
                                decoration: BoxDecoration(
                                  color: Colors.red.shade100,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    IconButton(onPressed: () {
                                      quantityLess();
                                    }, icon: Icon(Icons.remove)),
                                    Text('${widget.number}'),
                                    IconButton(onPressed: () {
                                      quantityAdd();
                                    }, icon: Icon(Icons.add)),
                                  ],
                                ),
                              ),
                ],
              ),
            ],
          )
        ),
      )
    );
  }
}