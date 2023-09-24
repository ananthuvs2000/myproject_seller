import 'package:flutter/material.dart';
import 'package:myprojectseller/screens/hotels/itemselection/singleitemselction.dart';

class MenuTile extends StatefulWidget {
  MenuTile({super.key});

  @override
  State<MenuTile> createState() => _MenuTileState();
}

class _MenuTileState extends State<MenuTile> {
 
 

  final String? title = 'Chicken Burger';
  final num? price=100;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(15)
          ),
          height: 100,
          child: ListTile(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ItemSelection(title: title!,price: price!,),
                )),
            title: Text(title!),
            // leading: CircleAvatar(
            //   radius: 40,
            //   backgroundImage: AssetImage('assets/images/hotel1.jpeg'),
            // ),
            subtitle: Text('Availabile'),
            trailing: Text(price.toString()),
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// // import other required packages

// class MenuTile extends StatefulWidget {
//   MenuTile({super.key});

//   @override
//   State<MenuTile> createState() => _MenuTileState();
// }

// class _MenuTileState extends State<MenuTile> {
//   int _counter = 0;

//   void quantityAdd() {
//     setState(() {
//       _counter++;
//     });
//   }
//   void quantityLess(){
//     setState(() {
//       _counter--;
//     });
//   }

 
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: Container(
//         child: ListTile(
//           title: Text('Chicken Biriyani'),
//           leading: CircleAvatar(
//             radius: 40,
//             backgroundImage: AssetImage('assets/images/hotel1.jpeg'),
//           ),
//           subtitle: Text('Availability'),
//           trailing: Column(
//             children: [
//               Text('160/-'),
//               Expanded(
//                 child: Container(
//                   height: 30,
//                   width: 90,
//                   child: Row(
//                     children: [
//                        IconButton(onPressed: () {
//                          quantityLess();
//                        }, icon: Icon(Icons.remove)),
//                       Text('$_counter'),
//                       IconButton(
//                         onPressed: () {
//                           quantityAdd();
//                         },
//                         icon: Icon(Icons.add),
//                       ),
//                     ],
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
