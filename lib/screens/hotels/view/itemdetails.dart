

import 'package:flutter/material.dart';

import 'package:myprojectseller/menutiles/menu.dart';
import 'package:myprojectseller/screens/profile/profile.dart';

class HotelsList extends StatefulWidget {
  HotelsList({Key? key,required this.name,required this.vegcategory,required this.noncategory});
   TextEditingController name=TextEditingController();
   TextEditingController vegcategory=TextEditingController();
   TextEditingController noncategory=TextEditingController();


  @override
  State<HotelsList> createState() => _HotelsListState();
}

class _HotelsListState extends State<HotelsList> {
  // Color favourite=Colors.grey.shade400;
  //  void _changeColor() {
  //   setState(() {
     
  //     favourite = favourite == Colors.red ? Colors.grey : Colors.red;
      
  //   });
  // }
  @override
  Widget build(BuildContext context) {
   
   
   
    return Scaffold(
      
      body:
      
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      SizedBox(height: 30,),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(onPressed: () => Navigator.pop(context), icon: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black,)),
                          IconButton(onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage(),));
                          }, icon: Icon(Icons.person_2_rounded,color: Colors.black,)),
                          
                        ],
                      ),
                     
                    ],
                  ),
                  
                ),
                 Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Stack(
                    children: [
                      Container(
                      height: 300,
                     
                      
                      decoration: BoxDecoration(
                        color: Colors.grey.shade600,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          TextField(controller: widget.name,style: TextStyle(fontSize: 26,color: Colors.white,fontWeight: FontWeight.w600),decoration: InputDecoration(
                enabledBorder: InputBorder.none,focusedBorder: InputBorder.none
              ),textAlign: TextAlign.center,),
                              // Text('${widget.name.text}',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600,color: Colors.white),),
                              // IconButton(onPressed: () {
                              //   // _changeColor();
                              // }, icon: Icon(Icons.edit),),
                          // Row(
                          //   children: [
                          //     Container(
                          //       height: 25,
                          //       width: 60,
                          //       decoration: BoxDecoration(
                          //       color: Colors.green.shade800,
                          //       borderRadius: BorderRadius.circular(20)
                          //     ),
                          //     child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          //       children: [
                          //         Text('4.5',style: TextStyle(color: Colors.white),),
                          //         Icon(Icons.star_rounded,color: Colors.white,size: 18,),
                          //       ],
                          //     ),
                          //     ),
                          //   ],
                          // ),
                          
                      
                          TextField(controller: widget.vegcategory,style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w600),decoration: InputDecoration(
                enabledBorder: InputBorder.none,focusedBorder: InputBorder.none,prefixIcon: Icon(Icons.circle,color: Colors.green,)
              ),),
              
                          TextField(controller: widget.noncategory,style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w600),decoration: InputDecoration(
                enabledBorder: InputBorder.none,focusedBorder: InputBorder.none,prefixIcon: Icon(Icons.circle,color: Colors.red,)
              ),),
              Column(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                 TextButton(onPressed: () {
                
              }, child: Text('Save',style: TextStyle(color: Colors.white),))
                          
              ],)
             
                        ],
                      ),
                      
                    ),
                    
                    ],
                   )
                    
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Column(
                         children: [
                           Text('Recommended',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
                            
                       
                         ],
                       ),
                        TextButton(onPressed: () {
                          
                        }, child: Text('See All',style: TextStyle(color: Colors.black),))
                     ],
                   ),
                 ),
               Container(height: MediaQuery.sizeOf(context).height,
               child: Column(
                children: [
                  MenuTile(),
                  MenuTile(),
                  MenuTile(),
                  MenuTile(),
                  MenuTile(),
                  MenuTile(),
                  MenuTile(),
                  MenuTile(),
                  MenuTile(),
                  MenuTile(),
                ],
               ),)
                      
              ],
            ),
          ),   
    );
  }
}

    
  
