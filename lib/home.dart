import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  Text(
                    'Hello, Md Akash',
                    style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),
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
           
          ],
        ),
      ),
    );
  }
}
