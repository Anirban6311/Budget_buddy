
import 'package:budget_buddy/screens/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
import 'package:budget_buddy/utils/appValidator.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key}); // Include key parameter in the constructor

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(_formKey.currentContext!).showSnackBar(
        SnackBar(content: Text("Form submitted successfully")),
      );
    }
  }

  var appValidator= AppValidator();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset:false,
      backgroundColor: Colors.black,

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey, // Assign the GlobalKey to the Form widget
          child: Column(

            children: [
              SizedBox(height: 60),
              Text("Login to your account",
                style: TextStyle(color: Colors.white,fontSize: 30,),),

              SizedBox(height: 30,),

              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,

                decoration: _buildInputDecoration("Email", Icons.email_sharp),
                validator: appValidator.validateEmail,
              ),

              SizedBox(height: 20),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: _buildInputDecoration("Password", Icons.lock),
                validator: appValidator.validatePhone,
              ),
              SizedBox(height: 35),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    colors: [
                      Colors.orange,
                      Colors.purple,
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    _submitForm();
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    primary: Colors.transparent,
                    shadowColor: Colors.transparent, // No shadow
                  ),
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white,fontSize: 20),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              TextButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignupScreen()),
                );
              }, child:
              Text("Create a new account", style: TextStyle(fontSize: 20,color: Colors.white),))

            ],
          ),
        ),
      ),
    );
  }
  InputDecoration _buildInputDecoration(String label ,IconData suffixIcon){
    return
      InputDecoration(
        fillColor: Color(0xAA494A59),
        filled: true,
        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white10)),
        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white10)),
        suffixIcon: Icon(suffixIcon,
          color: Colors.white,),
        labelText: label,
        labelStyle: TextStyle(color: Colors.white),
        hintStyle: TextStyle(color: Colors.white),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      );
  }

}

