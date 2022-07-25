import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nsdd/Pages/province.dart';

class PersonalInformation2 extends StatefulWidget {
  const PersonalInformation2({Key? key}) : super(key: key);

  @override
  State<PersonalInformation2> createState() => _PersonalInformation2State();
}

class _PersonalInformation2State extends State<PersonalInformation2> {
  List<DropdownMenuItem<Provice>> get dropdownItemProvice {
    return [
      DropdownMenuItem(
        child: Text('Punjab'),
        value: Provice(id: 1, name: 'punjab'),
      ),
      DropdownMenuItem(
        child: Text('Sindh'),
        value: Provice(id: 1, name: 'sindh'),
      ),
      DropdownMenuItem(
        child: Text('Sarhad'),
        value: Provice(id: 1, name: 'sarhad'),
      ),
      DropdownMenuItem(
        child: Text('BCH'),
        value: Provice(id: 1, name: 'bch'),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              child: SizedBox(
                height: 170.h,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: 0,
                      right: 0,
                      child: SvgPicture.asset("svg/svgred2.svg"),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            Positioned(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    height: 40.h,
                    child: const Text(
                      "Personal Information",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: Color(0xff8B010B),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              child: Padding(
                padding: const EdgeInsets.all(56.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30.h,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Email",
                          prefixIcon: Icon(Icons.email),
                          fillColor: Colors.transparent,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.r))),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Contact No.",
                          prefixIcon: Icon(Icons.phone),
                          fillColor: Colors.transparent,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.r))),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: " Other Contact No.",
                          prefixIcon: Icon(Icons.phone),
                          fillColor: Colors.transparent,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.r))),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: " Guardian Contact No.",
                          prefixIcon: Icon(Icons.phone),
                          fillColor: Colors.transparent,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.r))),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: " Postal Address",
                          prefixIcon: Icon(Icons.location_on_outlined),
                          fillColor: Colors.transparent,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.r))),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: " Permanent Address",
                          prefixIcon: Icon(Icons.location_on_outlined),
                          fillColor: Colors.transparent,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.r))),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    DropdownButtonFormField<Provice>(
                      items: dropdownItemProvice,
                      onChanged: (Provice? value) {},
                      decoration: InputDecoration(
                          hintText: "Domicile Distt",
                          prefixIcon: Icon(Icons.document_scanner),
                          fillColor: Colors.transparent,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.r))),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Minority",
                          prefixIcon: Icon(Icons.add_box),
                          suffixIcon: Icon(Icons.rectangle_outlined),
                          fillColor: Colors.transparent,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.r))),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
