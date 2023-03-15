import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartplanner/src/modules/vendor/vendor_ctrl.dart';
import 'package:smartplanner/src/modules/vendor/vendorprofile/vendorprofile_src.dart';

class VendorScreen extends StatelessWidget {
  VendorScreen({Key? key}) : super(key: key);

  final VendorController controller = Get.put(VendorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Vendor',
          style: GoogleFonts.raleway(
            textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 20.0, right: 20.0),
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: TextField(
                      textAlign: TextAlign.start,
                      onChanged: controller.setSearchQuery,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
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
                        contentPadding: EdgeInsets.zero,
                        hintText: 'Search',
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
                  width: 10,
                ),
                Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(0, 188, 212, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/filtericon.png',
                        height: 20,
                        width: 20,
                      ),
                    ))
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              child: Obx(() {
                return GridView.builder(
                  scrollDirection: Axis.vertical,
                  physics: const ScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  shrinkWrap: true,
                  itemCount: controller.filteredVendor.length,
                  itemBuilder: (context, index) {
                    final person = controller.filteredVendor[index];
                    return InkWell(
                      onTap: () {
                        Get.to(
                          VendorProfileScreen(
                            title: person.title,
                            image: person.image,
                            distance: person.distance,
                            categoryName: person.categoryName,
                            address: person.address,
                            products: person.products,
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              colors: [
                                Color.fromRGBO(0, 188, 212, 0.2),
                                Color.fromRGBO(205, 205, 205, 0.2)
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Card(
                          color: Colors.transparent,
                          elevation: 0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 45,
                                backgroundImage: AssetImage(person.image),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                width: 87,
                                height: 32,
                                child: Text(
                                  person.title,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.raleway(
                                    textStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                '${person.distance.toString()} km away',
                                style: GoogleFonts.raleway(
                                  textStyle: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
