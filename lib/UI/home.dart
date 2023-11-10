import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Bloc/chatgpt_bloc.dart';
import '../Repository/ModelClass/chatgpt.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

late Chatgpt data;
TextEditingController controller = TextEditingController();

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                    child: TextFormField(
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35.20.sp,
                        fontFamily: 'Barlow',
                        fontWeight: FontWeight.w700,
                      ),
                      controller: controller,
                      autofocus: true,
                      decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                      ),
                    ),
                  )),
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 120.w),
              child: GestureDetector(
                onTap: () {
                  BlocProvider.of<ChatgptBloc>(context)
                      .add(FetchChatgpt(text: controller.text));
                },
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
            ),
            SizedBox(
              height: 30.h,
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
                    child: BlocBuilder<ChatgptBloc, ChatgptState>(
                        builder: (context, state) {
                      if (state is ChatgptLoading) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      if (state is ChatgptError) {
                        return Text('error');
                      }
                      if (state is ChatgptLoaded) {
                        data = BlocProvider.of<ChatgptBloc>(context).animeModel;
                        return Text(
                          data.response!.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28.sp,
                            fontFamily: 'Barlow',
                            fontWeight: FontWeight.w700,
                          ),
                        );
                      } else {
                        return SizedBox();
                      }
                    }),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
