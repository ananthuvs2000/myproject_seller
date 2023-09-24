import 'package:flutter/material.dart';

import 'package:myprojectseller/screens/hotels/hotels.dart';

class HotelCard extends StatelessWidget {
    HotelCard({Key? key }) : super(key: key);
  final TextEditingController name=TextEditingController(text: 'Burgers');
  final TextEditingController vegcategory=TextEditingController(text: 'Veg');
  final TextEditingController noncategory=TextEditingController(text: 'Non veg');

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade200,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), ),
        margin: EdgeInsets.all(5),
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => HotelsList(name: name, vegcategory: vegcategory,noncategory: noncategory,)));
            },
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 5,top: 2),
                    child: ClipRRect(
                  borderRadius: BorderRadius.circular(10), 
                  child: Image.asset('assets/images/burger.jpeg',height: 130,width:120),),
                ),
                
                Text(name.text,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                
                  
                    Center(
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                           Icon(Icons.circle,color: Colors.green,size: 14,),
                          Text(vegcategory.text,style: TextStyle(fontSize: 12),),
                        ],
                      ),
                    ),
                    SizedBox(width: 10,),
                    
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         Icon(Icons.circle,color: Colors.red,size: 14,),
                        Text(noncategory.text,style: TextStyle(fontSize: 12),),
                      ],
                    ),      
              ],
              
            ),
            
          ),
        ),
      
      );
  }
}