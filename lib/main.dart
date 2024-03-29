import 'package:flutter/material.dart';
import 'gen/assets.gen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children:[
              Container(
                alignment: Alignment.center,
                child: Column(
                  children:[
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Text('Create Account', style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Assets.female.image(
                        width: 88,
                        height: 88
                      ),
                    ),
                    Text('Create account with', style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400
                    )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        AccountHolder(image: Assets.github.image(
                          width: 43, height: 43
                        )),
                        AccountHolder(image: Assets.google.image(
                          width: 43, height: 43
                        )),
                        AccountHolder(image: Assets.linkedin.image(
                          width: 43, height: 43
                        )),
                      ] 
                    ),
                    Text('Or', style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400
                      ),),
                    IconTextFieldRow(
                      image: Assets.user.path, hint: 'Name'),
                    IconTextFieldRow(
                      image: Assets.email.path, hint: 'Email'),
                    IconTextFieldRow(
                      image: Assets.password.path, hint: 'Password',
                      suffiximage: Assets.showpassword.image(width: 43, height: 43),
                      ),
                    Container(
                      margin: EdgeInsets.all(8),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.indigo,
                        borderRadius: BorderRadius.circular(7),
                      ),                   
                      child:
                      Text('Signup', style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                      )
                      ),
                    Text('Or', style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400
                    ),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Already have an account?', style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400
                      ),),
                    ),
                    Text('Login', style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Colors.indigo
                    ),),
                  ]
                )
                ),
              Positioned(
                top: 5,
                left: 3,
                child: Assets.modebuttons.image(
                  width: 20,
                  height: 60
                  ),
              ),
            ])
          )
        ),
      );
  }
}

class AccountHolder extends StatelessWidget {
  const AccountHolder ({required this.image, super.key});
  final Image image;

  @override
  Widget build(BuildContext context) => Container(
    margin: EdgeInsets.all(8),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.white,
      boxShadow: [
        BoxShadow (
          blurRadius: 40,
          blurStyle: BlurStyle.outer,
          color: Colors.black.withOpacity(0.3),
          offset: Offset(2,2)
        )
      ]
    ),
    child: image,
  );
}

class IconTextFieldRow extends StatelessWidget {
  const IconTextFieldRow({required this.image, required this.hint, this.suffiximage, super.key});

  final String image;
  final String hint;
  final Image? suffiximage;

  @override 
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    child: Row(
      children: [
        Image.asset(image, width: 43, height: 43),
        SizedBox(width: 20),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  offset: Offset(2,2),
                  blurRadius: 40
                )
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(16)
            ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(12),
                  hintText: hint,
                  suffixIcon: suffiximage
                )
              ),
            ),
          ),
      ],)
  );
}