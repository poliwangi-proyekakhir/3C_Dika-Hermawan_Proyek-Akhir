import 'dart:ui';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:rojotani/layout.dart';

class tambahProdukPage extends StatefulWidget {
  @override
  _tambahProdukPageState createState() => _tambahProdukPageState();
}

class _tambahProdukPageState extends State<tambahProdukPage> {
  Widget title(String text) {
    return Padding(
      padding: EdgeInsets.only(left: 15.w),
      child: Text(text,
          style: TextStyle(
              fontFamily: 'Mulish',
              fontSize: 18.sp,
              fontWeight: FontWeight.w700)),
    );
  }

  Widget Input(String input) {
    return Padding(
      padding: EdgeInsets.only(left: 15.w),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: input,
          hintStyle: TextStyle(
            // <-- Change this
            fontSize: 16.sp,
          ),
          // contentPadding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height/4)
        ),
      ),
    );
  }

  Widget space() {
    return Column(
      children: [
        Divider(
          thickness: 1,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(
        BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height),
        designSize: Size(390, 844),
        context: context,
        minTextAdapt: true,
        orientation: Orientation.portrait);
    final MediaQueryHeight = MediaQuery.of(context).size.height;
    final MediaQueryWidth = MediaQuery.of(context).size.width;

    // final bool isLandscape =
    //   MediaQuery.of(context).orientation == Orientation.landscape;
    return new Scaffold(
        appBar: new AppBar(
          elevation: 3,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              // Route route =
              //     MaterialPageRoute(builder: (context) => ());
              // Navigator.push(context, route);
            },
          ),
          title: Text(
            'Tambah Produk',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontFamily: 'Mulish',
              color: Colors.black,
              fontSize: 22.sp,
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30.h,
                ),
                Container(
                  color: Colors.grey[200],
                  height: MediaQuery.of(context).size.height * 0.83,
                  width: MediaQuery.of(context).size.width * 0.99,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.w),
                        child: InkWell(
                          onTap: () {
                            print("tapped");
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.1,
                            width: MediaQuery.of(context).size.width * 0.2,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    width: 1.w, color: Color(0xFF53B175)),
                                borderRadius: BorderRadius.circular(5.r)),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10.h,
                                ),
                                Icon(
                                  Icons.add,
                                  size: 45.sp,
                                  color: Color(0xFF53B175),
                                ),
                                Text("Gambar",
                                    style: TextStyle(
                                        fontFamily: 'Mulish',
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                          ),
                        ),
                      ),
                      space(),
                      title('Nama Produk'),
                      Input('Masukkan Nama Produk'),
                      space(),
                      title('Harga Produk'),
                      Input('Masukkan Harga Produk'),
                      space(),
                      title('Satuan Produk'),
                      Input('Masukkan Satuan Produk'),
                      space(),
                      title('Stok Produk'),
                      Input('Masukkan Stok Produk'),
                      space(),
                      title('Jenis Produk'),
                      Input('Masukkan Jenis Produk'),
                      space(),
                      title('Deskripsi Produk'),
                      Input('Masukkan Deskripsi Produk'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 60.w,
                    ),
                    Container(
                      width: 200.w,
                      height: 55.h,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xFF53B175),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Simpan",
                          style: TextStyle(
                            fontFamily: "Mulish",
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.h,
                ),
              ],
            ),
          ),
        ));
  }
}
