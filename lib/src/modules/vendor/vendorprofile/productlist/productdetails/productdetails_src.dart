import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartplanner/src/modules/vendor/vendorprofile/productlist/productdetails/order/order_src.dart';
import 'package:smartplanner/src/modules/vendor/vendorprofile/productlist/productdetails/productdetails_crtl.dart';
import '../../../../../widgets/ColorsSchemes.dart';
import '../../../vendor_mdl.dart';
import 'package:get/get.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product details;
  ProductDetailsScreen({Key? key, required this.details}) : super(key: key);

  var widgetList = <Widget>[];

  init() {
    for (var text in details.description) {
      widgetList.add(Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "• ",
            style: GoogleFonts.raleway(
              textStyle: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: GoogleFonts.raleway(
                textStyle: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              textAlign: TextAlign.start,
            ),
          ),
        ],
      ));

      widgetList.add(const SizedBox(height: 5.0));
    }
  }

  int currentIndex = 0;
  final controller = ProductDetailController();

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
        ),
        bottomNavigationBar: Container(
          height: 90,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(0, 188, 212, 0.2),
                Color.fromRGBO(204, 204, 204, 0.2),
                Color.fromRGBO(204, 204, 204, 0.2),
                Color.fromRGBO(204, 204, 204, 0.2)
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '\$',
                      style: GoogleFonts.raleway(
                        textStyle: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Text(
                      details.price.toString(),
                      style: GoogleFonts.raleway(
                        textStyle: const TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: SizedBox(
                  height: 50,
                  width: 145,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(OrderScreen(order: details));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: AppColor.buttonColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'Buy',
                      style: GoogleFonts.raleway(
                        textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSlider.builder(
                itemCount: details.imagecarousel.length,
                itemBuilder: (BuildContext context, int itemIndex,
                        int pageViewIndex) =>
                    Image.asset(details.imagecarousel[itemIndex].toString()),
                options: CarouselOptions(onPageChanged: (index, reason) {
                  controller.currentIndex.value = index;
                }),
              ),
              const SizedBox(
                height: 8,
              ),
              Obx(
                () => Center(
                  child: DotsIndicator(
                    dotsCount: details.imagecarousel.length,
                    position: controller.currentIndex.value.toDouble(),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 157,
                      child: Text(
                        details.name,
                        style: GoogleFonts.raleway(
                          textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '\$',
                          style: GoogleFonts.raleway(
                            textStyle: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          details.price.toString(),
                          style: GoogleFonts.raleway(
                            textStyle: const TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(children: widgetList),
              )
            ],
          ),
        ),
      ),
    );
  }
}
