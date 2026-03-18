import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  bool isFavarote = false;

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white.withOpacity(0.9),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello, Md. Akash',
                        style: TextStyle(
                          fontSize: 25.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Welcome to SkyTravel',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
    
                  SizedBox(width: 13),
    
                  CircleAvatar(
                    radius: 20.r,
                    backgroundImage: NetworkImage(
                      'https://media.licdn.com/dms/image/v2/D4D03AQFvwSL9TeVHVA/profile-displayphoto-scale_200_200/B4DZiiOC4GGgAc-/0/1755068250704?e=2147483647&v=beta&t=CwZzl7bG0j-wFxX0m4C4TpT4enC29-UIIlLFA5zZEuk',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
    
              // search bar
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextFormField(
                  textAlign: TextAlign.start,
                  showCursor: true,
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    // label: Text('Search'),
                    hintText: 'Search',
    
                    hintStyle: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    prefixIcon: Icon(Icons.search_rounded, size: 25.sp),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'asset/image/filter.png',
                        height: 30.h,
                      ),
                    ),
                  ),
                ),
              ),
            ),
    
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Select your next trip',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  // Asia scroll bar
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 0,
                        vertical: 10,
                      ),
                      child: Row(
                        children: [
                          ElevatedButton(onPressed: () {}, child: Text('Asia')),
                          SizedBox(width: 8),
                          ElevatedButton(onPressed: () {}, child: Text('Asia')),
                          SizedBox(width: 8),
                          ElevatedButton(onPressed: () {}, child: Text('Asia')),
                          SizedBox(width: 8),
                          ElevatedButton(onPressed: () {}, child: Text('Asia')),
                          SizedBox(width: 8),
                          ElevatedButton(onPressed: () {}, child: Text('Asia')),
                          SizedBox(width: 8),
                          ElevatedButton(onPressed: () {}, child: Text('Asia')),
                          SizedBox(width: 8),
                          ElevatedButton(onPressed: () {}, child: Text('Asia')),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                ],
              ),
            ),
    
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
    
                  Container(
                    height: 300.h,
                    width: 300.w,
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYKgVQ8UwYP8P0Gpk8RYnoGnOO_iwESqO-ZQ&s',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          right: 12,
                          top: 12,
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                isFavarote = !isFavarote;
                              });
                            },
                            icon: isFavarote
                                ? Icon(
                                    Icons.favorite,
                                    size: 40,
                                    color: Colors.red,
                                  )
                                : Icon(
                                    Icons.favorite_border_rounded,
                                    size: 40,
                                    color: Colors.amberAccent,
                                  ),
                          ),
                        ),
                        Positioned(
                          bottom: 15,
                          left: 15,
                          child: SizedBox(
                            height: 40,
                            width: 350,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text('See More'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    height: 300.h,
                    width: 300.w,
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYKgVQ8UwYP8P0Gpk8RYnoGnOO_iwESqO-ZQ&s',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          right: 12,
                          top: 12,
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                isFavarote = !isFavarote;
                              });
                            },
                            icon: isFavarote
                                ? Icon(
                                    Icons.favorite,
                                    size: 40,
                                    color: Colors.red,
                                  )
                                : Icon(
                                    Icons.favorite_border_rounded,
                                    size: 40,
                                    color: Colors.amberAccent,
                                  ),
                          ),
                        ),
                        Positioned(
                          bottom: 15,
                          left: 15,
                          child: SizedBox(
                            height: 40,
                            width: 350,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text('See More'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    
                  ),

                  SizedBox(width: 30,),

                  Container(
                    height: 300.h,
                    width: 300.w,
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYKgVQ8UwYP8P0Gpk8RYnoGnOO_iwESqO-ZQ&s',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          right: 12,
                          top: 12,
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                isFavarote = !isFavarote;
                              });
                            },
                            icon: isFavarote
                                ? Icon(
                                    Icons.favorite,
                                    size: 40,
                                    color: Colors.red,
                                  )
                                : Icon(
                                    Icons.favorite_border_rounded,
                                    size: 40,
                                    color: Colors.amberAccent,
                                  ),
                          ),
                        ),
                        Positioned(
                          bottom: 15,
                          left: 15,
                          child: SizedBox(
                            height: 40,
                            width: 350,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text('See More'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 30),
                  Container(
                    height: 300.h,
                    width: 300.w,
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYKgVQ8UwYP8P0Gpk8RYnoGnOO_iwESqO-ZQ&s',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          right: 12,
                          top: 12,
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                isFavarote = !isFavarote;
                              });
                            },
                            icon: isFavarote
                                ? Icon(
                                    Icons.favorite,
                                    size: 40,
                                    color: Colors.red,
                                  )
                                : Icon(
                                    Icons.favorite_border_rounded,
                                    size: 40,
                                    color: Colors.amberAccent,
                                  ),
                          ),
                        ),
                        Positioned(
                          bottom: 15,
                          left: 15,
                          child: SizedBox(
                            height: 40,
                            width: 350,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text('See More'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
              
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
