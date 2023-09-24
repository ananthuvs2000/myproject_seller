import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

Widget latestDealsCarousel(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      height: MediaQuery.of(context).size.height * 0.275,
      child: Column(
        children: [
          CarouselSlider(
              items: [
                
                
                GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (BuildContext context) =>
                    //         const SingleCategory(
                    //             tag: "latestdeals")));
                  },
                  child: Stack(children: [
                    Container(
                      margin: const EdgeInsets.only(right: 5,left: 5,bottom: 5),
                      //padding: const EdgeInsets.only(
                      //top: 25, bottom: 25, left: 25, right: 15),
                      width: MediaQuery.of(context).size.width,
                      foregroundDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        // gradient: LinearGradient(
                        //     begin: Alignment.topCenter,
                        //     end: Alignment.bottomCenter,
                        //     colors: [
                        //       Colors.black.withOpacity(0.65),
                        //       Colors.black.withOpacity(0.65)
                        //     ]),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xffffffff),
                          image: const DecorationImage(
                              image: AssetImage("assets/images/topbar.jpeg"),

                              fit: BoxFit.fill),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 1,
                                blurRadius: 1.5,
                                offset: const Offset(2, 2))
                          ]),
                    ),
                    // Positioned(
                    //   left: 20,
                    //   right: 0,
                    //   top: 20,
                    //   bottom: 20,
                    //   child: Column(
                    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     children: [
                    //       Row(
                    //         children: [
                    //           Icon(
                    //             Icons.av_timer_outlined,
                    //             color: Colors.white,
                    //             size: 20,
                    //           ),
                    //           const SizedBox(
                    //             width: 5,
                    //           ),
                    //           Text("Ends 26 May",
                    //               style: TextStyle(
                    //                   color: Colors.white.withOpacity(0.9),
                    //                   fontWeight: FontWeight.bold,
                    //                   fontSize: 13)),
                    //         ],
                    //       ),
                    //
                    //       //const SizedBox(height: 10,),
                    //
                    //       Text(
                    //         "20% OFF ENTIRE FAST FOOD MENU",
                    //         maxLines: 3,
                    //         style: TextStyle(
                    //             color: Colors.white.withOpacity(0.9),
                    //             fontWeight: FontWeight.bold,
                    //             fontSize: 26),
                    //       ),
                    //
                    //       //const SizedBox(height: 10,),
                    //
                    //       Text("Shop now",
                    //           style: TextStyle(
                    //               color: Colors.white.withOpacity(0.9),
                    //               fontWeight: FontWeight.bold,
                    //               fontSize: 14,
                    //               decoration: TextDecoration.underline)),
                    //     ],
                    //   ),
                    // )
                  ]),
                )
              ],
              options: CarouselOptions(
                padEnds: true,
                height: MediaQuery.of(context).size.height * 0.25,
                viewportFraction: 0.9,
                enlargeCenterPage: false,
                initialPage: 0,
                scrollPhysics: BouncingScrollPhysics(),
              )),

          const SizedBox(
            height: 10,
          ),

          //Pagination
         
        ],
      ),
    );
    
  }
