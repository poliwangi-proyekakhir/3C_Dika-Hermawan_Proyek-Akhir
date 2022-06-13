import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:rojotani/layout.dart';
import 'package:rojotani/petani/produk/product_card.dart';

class katalogPage extends StatefulWidget {
  @override
  State<katalogPage> createState() => _katalogPageState();
}

class _katalogPageState extends State<katalogPage> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: MediaQuery.of(context).size.height),
      designSize: Size(390, 844),
      context: context,
      minTextAdapt: true,
    );
    final MediaQueryHeight = MediaQuery.of(context).size.height;
    final MediaQueryWidth = MediaQuery.of(context).size.width;

    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Scaffold(
        body: SafeArea(
            child: (isLandscape)
                ? Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.70,
                                height:
                                    MediaQuery.of(context).size.height * 0.10,
                                decoration: BoxDecoration(
                                    color: Colors.grey[100],
                                    borderRadius: BorderRadius.circular(15)),
                                child: TextField(
                                  decoration: InputDecoration(
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    hintText: 'Cari produk',
                                    prefixIcon: Icon(Icons.search),
                                    // contentPadding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height/4)
                                  ),
                                ),
                              ),
                              SizedBox(width: 9.w),
                              Container(
                                child: IconButton(
                                  icon: Icon(Icons.shopping_cart_rounded),
                                  onPressed: () {
                                    // Route route =
                                    //     MaterialPageRoute(builder: (context) => ());
                                    // Navigator.push(context, route);
                                  },
                                ),
                                width:
                                    MediaQuery.of(context).size.width * 0.060,
                                height:
                                    MediaQuery.of(context).size.height * 0.11,
                                decoration: BoxDecoration(
                                    color: Colors.grey[100],
                                    borderRadius: BorderRadius.circular(25)),
                              ),
                              SizedBox(width: 6.w),
                              Container(
                                child: IconButton(
                                  icon: Icon(Icons.notifications),
                                  onPressed: () {
                                    // Route route =
                                    //     MaterialPageRoute(builder: (context) => ());
                                    // Navigator.push(context, route);
                                  },
                                ),
                                width:
                                    MediaQuery.of(context).size.width * 0.060,
                                height:
                                    MediaQuery.of(context).size.height * 0.11,
                                decoration: BoxDecoration(
                                    color: Colors.grey[100],
                                    borderRadius: BorderRadius.circular(25)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.w),
                            child: Text(
                              'Produk',
                              style: TextStyle(
                                  fontFamily: 'Mulish',
                                  fontSize: 45.sp,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          SingleChildScrollView(
                            child: Container(
                              margin: EdgeInsets.only(left: 25.w, right: 15.w),
                              width: 375.w,
                              height: MediaQuery.of(context).size.height * 0.65,
                              child: GridView.count(
                                crossAxisCount: 3,
                                childAspectRatio: 23 / 25,
                                crossAxisSpacing: 15,
                                mainAxisSpacing: 8,
                                children: [
                                  productCard(
                                    img: 'asset/gambar/pissang.png',
                                    title: 'Pisang Ambon',
                                    harga: 'Rp. 15.000 / Kg',
                                    press: () {},
                                  ),
                                  productCard(
                                    img: 'asset/gambar/lemuru.png',
                                    title: 'Ikan Lemuru',
                                    harga: 'Rp. 10.000 / Kg',
                                    press: () {},
                                  ),
                                  productCard(
                                    img: 'asset/gambar/nangka.png',
                                    title: 'Nangka',
                                    harga: 'Rp. 20.000 / Buah',
                                    press: () {},
                                  ),
                                  productCard(
                                    img: 'asset/gambar/jagung.png',
                                    title: 'Jagung Manis',
                                    harga: 'Rp. 3000 / Kg',
                                    press: () {},
                                  ),
                                  productCard(
                                    img: 'asset/gambar/kakap.png',
                                    title: 'Ikan Kakap',
                                    harga: 'Rp. 17.000 / Kg',
                                    press: () {},
                                  ),
                                  productCard(
                                    img: 'asset/gambar/tengiri.png',
                                    title: 'Ikan Tengiri',
                                    harga: 'Rp. 8000 / Kg',
                                    press: () {},
                                  )
                                ],
                              ),
                            ),
                          ),
                        ]),
                  )
                ////////////////////////////
                //Potrait
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 25.w,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.6,
                              height:
                                  MediaQuery.of(context).size.height * 0.061,
                              decoration: BoxDecoration(
                                  color: Colors.grey[100],
                                  borderRadius: BorderRadius.circular(15)),
                              child: TextField(
                                style: TextStyle(fontFamily: 'Mulish'),
                                decoration: InputDecoration(
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  hintText: 'Cari produk',
                                  prefixIcon: Icon(Icons.search),
                                  // contentPadding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height/4)
                                ),
                              ),
                            ),
                            SizedBox(width: 6.w),
                            Container(
                              child: IconButton(
                                icon: Icon(Icons.shopping_cart_rounded),
                                onPressed: () {
                                  // Route route =
                                  //     MaterialPageRoute(builder: (context) => ());
                                  // Navigator.push(context, route);
                                },
                              ),
                              width: MediaQuery.of(context).size.width * 0.12,
                              height:
                                  MediaQuery.of(context).size.height * 0.062,
                              decoration: BoxDecoration(
                                  color: Colors.grey[100],
                                  borderRadius: BorderRadius.circular(25)),
                            ),
                            SizedBox(width: 6.w),
                            Container(
                              child: IconButton(
                                icon: Icon(Icons.notifications),
                                onPressed: () {
                                  // Route route =
                                  //     MaterialPageRoute(builder: (context) => ());
                                  // Navigator.push(context, route);
                                },
                              ),
                              width: MediaQuery.of(context).size.width * 0.12,
                              height:
                                  MediaQuery.of(context).size.height * 0.062,
                              decoration: BoxDecoration(
                                  color: Colors.grey[100],
                                  borderRadius: BorderRadius.circular(25.r)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 38.sp),
                          child: Text(
                            'Lelang',
                            style: TextStyle(
                                fontFamily: 'Mulish',
                                fontSize: 25.sp,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Container(
                          color: Color(0xFF53B175),
                          height: MediaQuery.of(context).size.height * 0.29,
                          width: MediaQuery.of(context).size.width * 1,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 20.w,
                                ),
                                lelangCard(
                                  img: 'asset/gambar/jagung.png',
                                  title: 'Pisang Ambon',
                                  harga: 'Rp. 15.000 / Kg',
                                  press: () {},
                                ),
                                lelangCard(
                                  img: 'asset/gambar/jagung.png',
                                  title: 'Pisang Ambon',
                                  harga: 'Rp. 15.000 / Kg',
                                  press: () {},
                                ),
                                lelangCard(
                                  img: 'asset/gambar/jagung.png',
                                  title: 'Pisang Ambon',
                                  harga: 'Rp. 15.000 / Kg',
                                  press: () {},
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 38.sp),
                          child: Text(
                            'Produk',
                            style: TextStyle(
                                fontFamily: 'Mulish',
                                fontSize: 25.sp,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        SingleChildScrollView(
                          child: Container(
                            margin: EdgeInsets.only(left: 25.w, right: 25.w),
                            width: 375.w,
                            height: MediaQuery.of(context).size.height * 0.45,
                            child: GridView.count(
                              crossAxisCount: 2,
                              childAspectRatio: 16 / 21,
                              crossAxisSpacing: 15,
                              children: [
                                productCard(
                                  img: 'asset/gambar/pissang.png',
                                  title: 'Pisang Ambon',
                                  harga: 'Rp. 15.000 / Kg',
                                  press: () {},
                                ),
                                productCard(
                                  img: 'asset/gambar/lemuru.png',
                                  title: 'Ikan Lemuru',
                                  harga: 'Rp. 10.000 / Kg',
                                  press: () {},
                                ),
                                productCard(
                                  img: 'asset/gambar/nangka.png',
                                  title: 'Nangka',
                                  harga: 'Rp. 20.000 / Buah',
                                  press: () {},
                                ),
                                productCard(
                                  img: 'asset/gambar/jagung.png',
                                  title: 'Jagung Manis',
                                  harga: 'Rp. 3000 / Kg',
                                  press: () {},
                                ),
                                productCard(
                                  img: 'asset/gambar/kakap.png',
                                  title: 'Ikan Kakap',
                                  harga: 'Rp. 17.000 / Kg',
                                  press: () {},
                                ),
                                productCard(
                                  img: 'asset/gambar/tengiri.png',
                                  title: 'Ikan Tengiri',
                                  harga: 'Rp. 8000 / Kg',
                                  press: () {},
                                )
                              ],
                            ),
                          ),
                        ),
                      ])));
  }
}

class lelangCard extends StatelessWidget {
  final String title, harga, img;
  final Function press;
  const lelangCard({
    Key key,
    this.title,
    this.harga,
    this.img,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
      BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: MediaQuery.of(context).size.height),
      designSize: Size(390, 844),
      context: context,
      minTextAdapt: true,
    );
    final MediaQueryHeight = MediaQuery.of(context).size.height;
    final MediaQueryWidth = MediaQuery.of(context).size.width;
    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(right: 6.w),
      width: MediaQuery.of(context).size.width * 0.45,
      height: MediaQuery.of(context).size.height * 0.28,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(width: 1.w, color: Colors.grey),
      ),
      child: InkWell(
        onTap: press,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 2.h,
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.r),
                  child: Image.asset(
                    img,
                    width: size.width * 0.36,
                    height: size.width * 0.3,
                  )),
            ),
            Row(
              children: [
                SizedBox(
                  width: 17.w,
                ),
                Container(
                  margin: const EdgeInsets.only(
                    right: 16.0,
                  ),
                  width: 138.w,
                  child: Text(
                    title,
                    style: TextStyle(
                        fontFamily: 'Mulish',
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 3.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 17.w,
                ),
                Container(
                  margin: const EdgeInsets.only(
                    right: 18.0,
                  ),
                  width: 138,
                  child: Text(
                    harga,
                    style: TextStyle(
                        fontFamily: 'Mulish',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 7.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15.w,
                ),
                Material(
                  child: InkWell(
                    onTap: press,
                    child: Container(
                      width: size.width * 0.35,
                      height: size.height * 0.04,
                      decoration: BoxDecoration(
                        color: Color(0xFF53B175),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Center(
                        child: Text(
                          "Tawar",
                          style: TextStyle(
                            fontFamily: 'Mulish',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
    /////////////////////////////////////////////////
    //Potrait
  }
}
