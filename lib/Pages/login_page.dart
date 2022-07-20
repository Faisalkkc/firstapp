import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:nsdd/Pages/signup_page.dart';
import 'package:nsdd/providers/password_provider.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailControl = TextEditingController();
  TextEditingController passwordControl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: SizedBox(
              height: 135.h,
              child: SvgPicture.asset(
                'assets/svg/svgred2.svg',
                color: Color(0xff8B010B),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff8B010B)),
                ),
                SizedBox(
                  height: 10.h,
                ),
                TextFormField(
                  obscureText: false,
                  controller: emailControl,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    labelText: "Email",
                    hintText: "Please Enter Yours Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Consumer<PasswordProvider>(
                        builder: ((context, pp, child) {
                      return TextFormField(
                        obscureText: pp.isObscure,
                        controller: passwordControl,
                        keyboardType: TextInputType.visiblePassword,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                pp.toggleIsObscure();
                              });
                            },
                            icon: Icon(
                              (pp.isObscure
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                            ),
                          ),
                          labelText: "Password",
                          hintText: "Please Enter Yours Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.zero,
                          ),
                        ),
                      );
                    }))),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                    height: 20.h,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text('Forget Password'),
                      ),
                    )),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  width: double.infinity, // <-- match_parent
                  height: 40.h,
                  child: TextButton(
                    // Within the `FirstRoute` widget
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpPage()),
                      );
                    },
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      // textStyle: TextStyle(),
                      backgroundColor: Color(0xff8B010B),
                      onSurface: Colors.grey,
                    ),
                    child: Text(
                      'Sign In',
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
