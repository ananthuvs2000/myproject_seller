import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myprojectseller/screens/cartpage/view/cartpage.dart';
import 'package:myprojectseller/widget/dropdown.dart';
import 'package:myprojectseller/widget/textformfield.dart';

class ItemSelection extends StatefulWidget {
   ItemSelection({required this.title,required this.price,super.key});
  String title;
  num price;
  
  @override
  State<ItemSelection> createState() => _ItemSelectionState();
}

class _ItemSelectionState extends State<ItemSelection> {
  
  int _counter=1;
  void quantityAdd() {
    setState(() {
      _counter++;
    });
  }
  void quantityLess(){
    setState(() {
      _counter--;
    });
  }
  double gst=3.50;
  
  
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        body:
       Stack(
        
        children: [
            
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              children: [
                
                Expanded(
                 
                  
                  child: Container(
                    color: Colors.white54,
                    width: MediaQuery.sizeOf(context).width,
                    height: MediaQuery.sizeOf(context).height,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(  
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
          
                          SizedBox(height: 150,),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            
                              Text('${widget.title}',style: TextStyle(color: Colors.black87,fontSize: 20),),
                              Container(
                                height: 40,
                                width: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    IconButton(onPressed: () {
                                      quantityLess();
                                    }, icon: Icon(Icons.remove)),
                                    Text('$_counter'),
                                    IconButton(onPressed: () {
                                      quantityAdd();
                                    }, icon: Icon(Icons.add)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                         
                          SizedBox(height: 20,),
                         
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('GST Amount'),
                              Text('$gst'),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Total Amount'),
                              Text('${_counter*widget.price+gst}')
                            ],
                          ),
                          SizedBox(height: 10),
                           Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Add a coupon'),
                              TextButton(onPressed: () {
                                showDialog(context: context,
                                 builder: (BuildContext context){
                                  return AlertDialog(
                                   
                                    
                                    title: Center(child: Text('Add Coupon')),
                                    content: Container(
                                      height: 100,
                                      width: 100,
                                      child: Column(
                                        children: [
                                          TextField(
                                            decoration: InputDecoration(
                                              hintText: 'Coupon Code',
            
                                            ),
                                          ),
                                          ElevatedButton(onPressed: () {
                                            
                                          }, child: Text('Apply')),
                                        ],
                                      ),
                                    ),
                                  );
                                 }
                                );
                              }, child: Text('Coupon'),),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Text('Time '),
                              
                            ],
                          ),

                          SizedBox(height: 10,),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('No.of persons'),
                             DropdownWidget(),
                            ],
                          ),
                          
                          
                        ],
                      ),
                    ),
                  ),   
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.red.shade700),
                          textStyle:MaterialStateProperty.all<TextStyle>(
                  TextStyle(fontSize: 20,color: Colors.black),
                ), shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                          ),
                      onPressed: () {
                        num totalAmount = _counter * 100 + gst;
                        Get.to(CartPage(totalamount: totalAmount, title: widget.title,number: _counter,price: widget.price,gst: gst,));

                        Get.snackbar('Added', 'Item added to List',icon:Icon( Icons.shopping_cart_outlined),snackPosition: SnackPosition.BOTTOM);
                      
                    }, child: Text('Next')),
                  ],
                )
              
              ],
            ),
          ),
        ],
      ),
      
     
    );

  }
}