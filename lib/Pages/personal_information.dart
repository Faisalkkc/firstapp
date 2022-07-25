import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nsdd/Pages/personal_information2.dart';
import 'package:nsdd/Pages/province.dart';

class PersonalInformation extends StatefulWidget {
  PersonalInformation({
    Key? key,
  }) : super(key: key);

  @override
  State<PersonalInformation> createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {
  TextEditingController nameController = TextEditingController();
  TextEditingController shortNameController = TextEditingController();
  TextEditingController cniController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  final _dateOfBirthController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController contactNoController = TextEditingController();
  TextEditingController otherContactNoController = TextEditingController();
  TextEditingController guardianContactNoController = TextEditingController();
  TextEditingController postalAddressController = TextEditingController();
  TextEditingController permanentAddressController = TextEditingController();
  TextEditingController DomicileDisttController = TextEditingController();
  TextEditingController minorityController = TextEditingController();

  void myDatePicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2000),
            lastDate: DateTime.now())
        .then((pickedDate) {
      if (pickedDate != null) {
        _dateOfBirthController.text = pickedDate.toString();
      }
    });
  }

  List<DropdownMenuItem<String>> get dropdownItem {
    return [
      DropdownMenuItem(child: Text('USA'), value: 'usa'),
      DropdownMenuItem(child: Text('England'), value: 'Eng'),
      DropdownMenuItem(child: Text('Pakistan'), value: 'Pak'),
      DropdownMenuItem(child: Text('Natherland'), value: 'nather'),
    ];
  }

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
                        prefixIcon: const Icon(Icons.person),
                        hintText: "Name",
                        filled: true,
                        fillColor: Colors.transparent,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.r)),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Short Name",
                        filled: true,
                        fillColor: Colors.transparent,
                        prefixIcon: const Icon(Icons.person),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.r)),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "36690-1213124-6",
                        filled: true,
                        fillColor: Colors.transparent,
                        prefixIcon: const Icon(Icons.fingerprint),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.r)),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Gender",
                        filled: true,
                        fillColor: Colors.transparent,
                        prefixIcon: const Icon(Icons.person),
                        suffixIcon: const Icon(Icons.arrow_drop_down_sharp),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.r)),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Father Name",
                        fillColor: Colors.transparent,
                        filled: true,
                        prefixIcon: const Icon(Icons.person),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.r)),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    DropdownButtonFormField<dynamic>(
                      icon: Icon(Icons.arrow_downward_outlined),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.transparent,
                          prefixIcon: Icon(
                            Icons.sensor_occupied,
                            color: Colors.grey,
                          ),
                          hintText: "Father occpation",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.r),
                          )
                          // borderSide: BorderSide.none),
                          ),
                      items: const [
                        DropdownMenuItem<dynamic>(
                          child: Text("data"),
                          value: 1,
                        ),
                        DropdownMenuItem<dynamic>(
                          child: Text("data"),
                          value: 1,
                        ),
                      ],
                      onChanged: (value) {
                        value = value;
                      },
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.calendar_view_day),
                        suffixIcon: IconButton(
                          onPressed: () {
                            myDatePicker();
                          },
                          icon: const Icon(Icons.calendar_month),
                        ),
                        hintText: "Date of Birth",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                      ),
                      controller: _dateOfBirthController,
                      readOnly: true,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const PersonalInformation2()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff8B010B),
                        ),
                        child: Text('move'))
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
