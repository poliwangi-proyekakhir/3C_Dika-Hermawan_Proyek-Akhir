import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:rojotani/Awal/loginPetani.dart';
import 'package:rojotani/Awal/registerAs.dart';
import 'package:rojotani/Awal/dataDiri.dart';

class homePage extends StatefulWidget {
  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
        BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height),
        designSize: Size(390, 844),
        context: context,
        minTextAdapt: true,
        orientation: Orientation.landscape);
    return Scaffold(
       
        body: SafeArea(
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 36.w),
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 25,),
                         Container(
                           height: 50.h,
                          // color: Colors.blue,
                           child: Row(
                             children: [
                               Container(
                                 width: 247.w,
                                 height: 39.w,
                                 decoration: BoxDecoration(
                                    color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(8.r),
                                 ),
                                 
                                 child: TextFormField(
                                   decoration: InputDecoration(
                                       prefixIcon: IconButton(
                                         icon: Icon(Icons.search),
                                         onPressed: (){},
                                       ),
                                       border: OutlineInputBorder(
                                         borderRadius: new BorderRadius.circular(10.r),
                                       ),
                                       focusedBorder: OutlineInputBorder(
                                           borderRadius: new BorderRadius.circular(10.r),
                                           borderSide: BorderSide(
                                               color: Colors.grey)),
                                       contentPadding: EdgeInsets.symmetric(
                                           horizontal: 14.w, vertical: 14.h),
                                       hintText: 'Cari Disini',
                                       hintStyle: TextStyle(
                                           color: Colors.grey,
                                           fontFamily: 'Mulish',
                                           fontWeight: FontWeight.w400)),
                                  ),
                                ),
                                SizedBox(width: 10.w,),
                            InkWell(onTap: () {}, child: Icon(Icons.shopping_cart_outlined,  )),
                            SizedBox(width: 5.w,),
                            InkWell(onTap: () {}, child: Icon(Icons.notifications_outlined  )),
                            
                             ],
                           ),
                         ),
                      ]),
                ))));
  }

}
