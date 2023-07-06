import 'package:bookartify/widgets/password_form_field.dart';
import 'package:bookartify/widgets/register_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String _email = "";
  String _username = "";
  String _password = "";
  String _confirmPassword = "";

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          /* -------- Email -------- */
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 5, left: 20, right: 20),
            child: TextFormField(
              decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "Enter your email",
                  fillColor: Color(0xFFF5EFE1),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none
                  )
              ),
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return "Please, enter your email";
                }
                // Add more email validation if needed
                return null;
              },
              onChanged: (value) {
                setState(() {
                  _email = value;
                });
              },
            ),
          ),
          /* -------- Username -------- */
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: TextFormField(
              decoration: InputDecoration(
                  labelText: "Username",
                  hintText: "Choose a username",
                  fillColor: Color(0xFFF5EFE1),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none
                  )
              ),
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return "Please, choose a username";
                }
                // Add more username validation if needed
                return null;
              },
              onChanged: (value) {
                setState(() {
                  _username = value;
                });
              },
            ),
          ),
          /* -------- Password -------- */
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: PasswordFormField(
              onChanged: (value) {
                setState(() {
                  _password = value;
                });
              },
            )
          ),
          /* -------- Confirm password -------- */
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: PasswordFormField(
              onChanged: (value) {
                setState(() {
                  _confirmPassword = value;
                });
              },
            ),
          ),
          /* -------- Button -------- */
          Container(
            margin: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
            width: double.infinity,
            child: RegisterButton(
              onPressed: () {
                if (_formKey.currentState?.validate() ?? false) {
                  // Perform the login operation or handle form submission
                  // You can access _email and _password variables here
                }
              },
              buttonText: "Create an account",
            ),
          )
        ],
      )
    );
  }
}
