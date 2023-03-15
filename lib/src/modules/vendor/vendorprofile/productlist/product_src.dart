import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartplanner/src/modules/vendor/vendorprofile/productlist/productdetails/productdetails_src.dart';

import '../../vendor_mdl.dart';

class ProductListScreen extends StatelessWidget {
  final List<Product> productss;
  ProductListScreen({
    Key? key,
    required this.productss,
  }) : super(key: key);

  final searchController = TextEditingController();
  final RxList<Product> filteredProducts = <Product>[].obs;

  void onSearchChanged(String query) {
    filteredProducts.value = productss
        .where((product) => product.name
            .toString()
            .toLowerCase()
            .contains(query.toString().toLowerCase()))
        .toList();
  }

  init() {
    filteredProducts.value = productss;
    log("filteredProducts = ${productss.length}");
  }

  @override
  Widget build(BuildContext context) {
    init();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            'Products',
            style: GoogleFonts.raleway(
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                child: SizedBox(
                  height: 50,
                  child: TextField(
                    textAlign: TextAlign.start,
                    onChanged: onSearchChanged,
                    decoration: InputDecoration(
                      focusedErrorBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 0),
                      ),
                      errorBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.white, width: 0),
                          borderRadius: BorderRadius.circular(10)),
                      disabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.white, width: 0),
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.white, width: 0),
                          borderRadius: BorderRadius.circular(10)),
                      border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.white, width: 0),
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      fillColor: const Color(0xFFF3F3F3),
                      contentPadding: EdgeInsets.zero,
                      hintText: 'Search product',
                      hintStyle: GoogleFonts.raleway(
                        textStyle: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      prefixIcon: Container(
                        margin: const EdgeInsets.all(16),
                        padding: EdgeInsets.zero,
                        child: Image.asset(
                          'assets/searchicon.png',
                          height: 16,
                          width: 16,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    style: GoogleFonts.raleway(
                      textStyle: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              filteredProducts != null
                  ? Obx(() => ListView.builder(
                        shrinkWrap: true,
                        itemCount: filteredProducts.length,
                        itemBuilder: (BuildContext context, index) {
                          return Padding(
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 20.0, bottom: 20.0),
                              child: InkWell(
                                onTap: () {
                                  Get.to(ProductDetailsScreen(
                                    details: filteredProducts[index],
                                  ));
                                },
                                child: Container(
                                  height: 97,
                                  decoration: BoxDecoration(
                                      gradient: const LinearGradient(
                                          colors: [
                                            Color.fromRGBO(0, 188, 212, 0.2),
                                            Color.fromRGBO(204, 204, 204, 0.2)
                                          ],
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Center(
                                          child: Image.asset(
                                            filteredProducts[index]
                                                .image
                                                .toString(),
                                            height: 87,
                                            width: 87,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 15.0),
                                          child: SizedBox(
                                            width: 135,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 15.0),
                                                  child: Text(
                                                    filteredProducts[index]
                                                        .name
                                                        .toString(),
                                                    style: GoogleFonts.raleway(
                                                      textStyle:
                                                          const TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "\$",
                                                      style:
                                                          GoogleFonts.raleway(
                                                        textStyle:
                                                            const TextStyle(
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      "${filteredProducts[index].price}",
                                                      style:
                                                          GoogleFonts.raleway(
                                                        textStyle:
                                                            const TextStyle(
                                                          fontSize: 21,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 42,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 15.0),
                                          child: Container(
                                            width: 25,
                                            height: 25,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                color: const Color.fromRGBO(
                                                    200, 200, 200, 1),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            child: const Center(
                                                child: Icon(
                                              Icons.arrow_right_alt,
                                              size: 20,
                                            )),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ));
                        },
                      ))
                  : SizedBox(
                      height: Get.height * 0.7,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                            child: Image.asset(
                              'assets/nodata.png',
                              height: Get.height / 4,
                            ),
                          ),
                          const Text(
                            'No Data Found',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
