import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SingupScreen extends StatefulWidget {
  const SingupScreen({super.key});

  @override
  State<SingupScreen> createState() => _SingupScreenState();
}

class _SingupScreenState extends State<SingupScreen> {

  final _fromKey = GlobalKey<FormState>();
  bool showPassword = false;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController cnfPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    
    void showAlertDialog(){
       showDialog(
          context: context, builder: (context)=>AlertDialog(
        title: Text('⚠️ Warning'),
        titleTextStyle: TextStyle(
          fontSize: 25.sp,
          color: Colors.black

        ),
        content: Text('New Password or Confirm Password not same'),
        actions: [
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text('OK'))
        ],
      ),
        
      );
    }


    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueAccent.shade100,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),

                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.lightBlueAccent,
                      border: Border.all(
                        color: Colors.cyanAccent,
                        width: 3.0,
                        style: BorderStyle.solid,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    width: 380,
                    child: Form(
                      key: _fromKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sing Up',
                            style: TextStyle(
                              fontSize: 35.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text("hello let's join with us",
                          style: TextStyle(
                            fontSize: 15.sp
                          ),),
                          SizedBox(height: 30),
                          TextFormField(
                            controller: nameController,
                            validator: (value) {
                              if(value == null || value.isEmpty){
                                return 'Please Input Your Name';
                              } else {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              hintText: 'Name',
                              prefixIcon: Icon(Icons.person, size: 18.sp),
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          TextFormField(
                            controller: emailController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please Enter Here';
                              } else if (!value.contains('@')) {
                                return 'Please Valid Email';
                              } else {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: 'Email',
                              prefixIcon: Icon(Icons.email, size: 18.sp),
                            ),
                          ),
                          SizedBox(height: 12),

                          TextFormField(
                            controller: newPasswordController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please input Password';
                              } else if (value.length < 8) {
                                return 'Password Must be 8';
                              } else {
                                return null;
                              }
                            },

                            obscureText: showPassword,
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              hintText: 'New Password',
                              prefixIcon: Icon(Icons.lock, size: 18.sp),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    showPassword = !showPassword;
                                  });
                                },
                                icon: Icon(
                                  showPassword
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 12),

                          TextFormField(
                            controller: cnfPasswordController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please input Password';
                              } else if (value.length < 8) {
                                return 'Password Must be 8';
                              } else {
                                return null;
                              }
                            },
                            maxLength: 20,
                            obscureText: showPassword,
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              hintText: 'Confirm Password',
                              prefixIcon: Icon(Icons.lock, size: 18.sp),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    showPassword = !showPassword;
                                  });
                                },
                                icon: Icon(
                                  showPassword
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 12),
                          SizedBox(
                            width: double.infinity,
                            height: 40,
                            child: ElevatedButton(
                              onPressed: () {

                                if(newPasswordController.text == cnfPasswordController.text){
                                  if (_fromKey.currentState!.validate()) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text('LogIn Successful'),
                                        showCloseIcon: true,
                                      ),
                                    );
                                  }
                                } else {
                                  showAlertDialog();
                                }


                              },
                              child: Text('Log in'),
                            ),
                          ),
                          SizedBox(height: 7),
                          Center(
                            child: TextButton(
                              onPressed: () {},
                              child: Text('Already have account?'),
                            ),
                          ),
                          Divider(
                            color: Colors.blueGrey,
                            indent: 50,
                            endIndent: 50,

                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

  }
}


