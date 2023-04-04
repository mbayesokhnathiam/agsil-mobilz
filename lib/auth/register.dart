import 'package:ajiledakarv/auth/login.dart';
import 'package:ajiledakarv/bottom_navigation_bar.dart';
import 'package:ajiledakarv/common/color.dart';
import 'package:ajiledakarv/common/input.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
var _isObscur ;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _isObscur = true ; 
  }
  @override
  Widget build(BuildContext context) {
    
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(0, 20, 0, 30),
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: null, child: Text('Creationn den compte')),
                  TextButton(
                    
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => bnv()));
                      },
                      child: Text('Passer' , style:TextStyle(
                            decoration: TextDecoration.underline,
                       color: Colors.grey
                      ) ,))
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: w * 0.14),
                height: 120,
                child: Image(image: AssetImage('assets/images/logo-agil.png')),
              ),
              Form(
                child: Column(
                  children: [
                    CustomInput(
                      SufixIcon : Icon(Icons.mail),
                        isPassword: false,
                        hintText: "email",
                        labelText: 'email'),
                  
                     SizedBox(
                      height: w * 0.06,
                    ),
                    CustomInput(
                        isPassword: _isObscur ? true :false,
                        SufixIcon: IconButton(
                          focusColor: primary ,
                          onPressed: () {
                          setState(() {
                            _isObscur = !_isObscur;
                          });
                        }, icon: _isObscur ? Icon(Icons.visibility): Icon(Icons.visibility_off)),
                        hintText: "Mot de passe",
                        labelText: 'Mot de passe'),
                     SizedBox(
                      height: w * 0.06,
                    ),
                    CustomInput(
                        isPassword: _isObscur ? true :false,
                        SufixIcon: IconButton(onPressed: () {
                          setState(() {
                            _isObscur = !_isObscur;
                          });
                        }, icon: _isObscur ? Icon(Icons.visibility): Icon(Icons.visibility_off)),
                        hintText: "Confimer mot de passe",
                        labelText: 'Confirmer mot de passe'),
                       SizedBox(
                      height: 45,
                    ),
                    GestureDetector(
                      onTap: () {
                       Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Login()));
                      },
                      child: Container(
                        width: w * 0.7,
 height: 45,                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: primary,
                        ),
                        child: const Center(
                          child: Text(
                            'Inscription',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 40),
                    ),
                    const Text('ou se connecter avec :'),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          child:  Icon(
                            Icons.facebook,
                            color: Colors.blue,
                          ),
                          decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(255, 56, 56, 56),
                                blurRadius: 4,
                                offset: Offset(0.3, 2), // Shadow position
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(255, 56, 56, 56),
                                blurRadius: 4,
                                offset: Offset(0.3, 2), // Shadow position
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          child: const Icon(
                            Icons.access_alarm,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
