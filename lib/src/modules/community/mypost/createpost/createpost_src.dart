import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartplanner/src/modules/community/mypost/mypost_ctrl.dart';
import 'package:smartplanner/src/modules/community/mypost/mypost_mdl.dart';

import 'package:intl/intl.dart';

class CreatePost extends StatelessWidget {
  CreatePost({Key? key}) : super(key: key);

  final MyPostController itemController = Get.put(MyPostController());
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final DateTime now = DateTime.now();
    final DateFormat formatter = DateFormat('dd MMMM yyyy');
    final String formatted = formatter.format(now);

    var title = '';
    var imageUrl = '';
    var description = '';
    var date = formatted;
    var category = '';
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[50],
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            'Add Post',
            style: GoogleFonts.raleway(
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Text(
                    'Category',
                    style: GoogleFonts.raleway(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(0, 0, 0, 0.8),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Obx(
                    () => DropdownButtonFormField(
                      decoration: InputDecoration(
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
                        hintText: 'Anniversary',
                        hintStyle: GoogleFonts.raleway(
                          textStyle: const TextStyle(
                            color: Color(0xFF9B9B9B),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                      ),
                      style: GoogleFonts.raleway(
                        textStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      value: itemController.selectedNotification.value,
                      onChanged: (String? newValue) {
                        category = newValue!;
                      },
                      items: itemController.notification
                          .map<DropdownMenuItem<String>>((String country) {
                        return DropdownMenuItem<String>(
                          value: country,
                          child: Text(country),
                        );
                      }).toList(),
                    ),
                  ),
                  const SizedBox(height: 14),
                  Text(
                    'Title',
                    style: GoogleFonts.raleway(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(0, 0, 0, 0.8),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    style: GoogleFonts.raleway(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    decoration: InputDecoration(
                      hintStyle: GoogleFonts.raleway(
                        textStyle: const TextStyle(
                          fontSize: 14,
                          color: Color(0xFF9B9B9B),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
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
                      hintText: 'Life on Mars',
                      fillColor: Colors.white,
                      filled: true,
                    ),
                    validator: (value) =>
                        value!.isEmpty ? 'Description cannot be empty' : null,
                    onChanged: (value) => title = value,
                  ),
                  const SizedBox(height: 14),
                  Text(
                    'Description',
                    style: GoogleFonts.raleway(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(0, 0, 0, 0.8),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    style: GoogleFonts.raleway(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    decoration: InputDecoration(
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
                      hintText:
                          'By 2028, a Mars-themed party could have a very different meaning. With visionaries like Elon Musk actively plotting to make visits to Mars a reality, ',
                      hintStyle: GoogleFonts.raleway(
                        textStyle: const TextStyle(
                          fontSize: 14,
                          color: Color(0xFF9B9B9B),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                    maxLines: 5,
                    validator: (value) =>
                        value!.isEmpty ? 'Date cannot be empty' : null,
                    onChanged: (value) => description = value,
                  ),
                  const SizedBox(height: 14),
                  Text(
                    'Upload Image',
                    style: GoogleFonts.raleway(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(0, 0, 0, 0.8),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    enabled: false,
                    readOnly: true,
                    decoration: InputDecoration(
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
                      hintText: 'Click to pick image',
                      hintStyle: GoogleFonts.raleway(
                        textStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF9B9B9B),
                        ),
                      ),
                      suffixIcon: Container(
                        width: 77,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(0, 188, 212, 1),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                          child: Text(
                            'Browse',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                    validator: (value) =>
                        value!.isEmpty ? 'Image URL cannot be empty' : null,
                    onChanged: (value) => imageUrl = value,
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 50,
                    width: Get.width,
                    child: ElevatedButton(
                      child: const Text('Post'),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          itemController.addItem(Mypost(
                            title: title.toString(),
                            description: description.toString(),
                            date: date.toString(),
                            imageUrl: imageUrl.toString(),
                            category: category.toString(),
                          ));
                          _formKey.currentState!.reset();
                          Get.back();
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
