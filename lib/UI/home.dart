import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 130.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.w),
            child: Container(
                width: 319.w,
                height: 234.h,
                decoration: ShapeDecoration(
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                ),
                child: Center(
                  child: Text(
                    "how can i help you?",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28.sp,
                      fontFamily: 'Barlow',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )),
          ),
          SizedBox(height: 30.h,),
          Padding(
            padding: EdgeInsets.only(left: 120.w),
            child: Container(
                width: 150.w,
                height: 150.h,
                decoration: ShapeDecoration(
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                ),
                child: Center(
                  child: Text(
                    "yes",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.sp,
                      fontFamily: 'Barlow',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )),
          ),
          SizedBox(height: 30.h,),
          Padding(
            padding: EdgeInsets.only(left: 30.w),
            child: Container(
                width: 319.w,
                height: 234.h,
                decoration: ShapeDecoration(
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                ),
                child: Center(
                  child: Text(
                    "how can i help you?",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28.sp,
                      fontFamily: 'Barlow',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
