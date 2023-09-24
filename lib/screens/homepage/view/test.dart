// import 'package:flutter/material.dart';
// import 'package:myproject/screens/homepage/cards/view/hotelcard.dart';

// import '../widgets/slider.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: Drawer(
//         backgroundColor: Colors.white,
//         child: ListView(
//           children: [
//             UserAccountsDrawerHeader(
//               currentAccountPicture:
//                CircleAvatar(
//                 backgroundImage: AssetImage('assets/images/loginpage.webp'),
//               ),
//               accountName: Text('Ananthu'), accountEmail: Text('ananthu@gmail.com')),
//                Container(
//                 color: Colors.white,
//               padding: EdgeInsets.all(16.0),
//               child: Row(
//                 children:[
//                   Icon(Icons.info),
//                   SizedBox(width: 16.0),
//                   Text('Additional Information'),
//                 ],
//               ),
              
//             ),
//           ],

//         ),
//       ),
//       body: 
      
//       CustomScrollView(
        
//         slivers: [
          
//           SliverAppBar(
//             backgroundColor: Colors.black,
            
//             expandedHeight: 180,
//             flexibleSpace: FlexibleSpaceBar(
//               // background:Image.asset('assets/images/topbar2.jpeg',fit: BoxFit.cover,),
//               background:SliderScreen(),
//             ),
//             actions: [Row(
//               children: [
//                 CircleAvatar(backgroundColor: Colors.white60,
//                 child: IconButton(onPressed: () {
                  
//                 }, icon: Icon(Icons.search,color: Colors.black87,))),
//                   SizedBox(width: 10),
//                  CircleAvatar(backgroundColor: Colors.white60,
//                 child: IconButton(onPressed: () {
                  
//                 }, icon: Icon(Icons.favorite,color: Colors.black87,))),
//                 SizedBox(width: 10,),
               
//               ],
//             )],
//           ),
//           SliverPadding(
//             padding:EdgeInsets.all(10) ,
//             sliver: SliverToBoxAdapter(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text("Restaurants near you",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,)),
//                   TextButton(onPressed: () {
                    
//                   }, child: Text('Change Location'),),
//                 ],

//               ),

//             ),
            
//           ),
//          SliverToBoxAdapter(
//           child: Row(
//             children: [
//               Container(
//                 width: 220,
//                 child: Column(
//                   children: [
//                     AspectRatio(aspectRatio: 1.25,
//                     child:HotelCard()),
                    
//                   ],
//                 ),
                

//               ),
//             ],
//           ),
//          )
     
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(items: [const BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
//       BottomNavigationBarItem(icon:Icon(Icons.settings),label: 'Settings' ),
//       ]),
//     );
//   }
// }