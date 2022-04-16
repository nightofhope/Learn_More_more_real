import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:learn_more_more/main.dart';
import 'package:learn_more_more/screens/acc/frist.dart';

import '../../success/bar.dart';
import 'login.dart';
import 'model/profile.dart';

class oldacc extends StatefulWidget {
  const oldacc({Key? key}) : super(key: key);

  @override
  _oldaccState createState() => _oldaccState();
}

class _oldaccState extends State<oldacc> {
  final formKey = GlobalKey<FormState>();
  Profile profile = Profile(email: '', password: '');
  final Future<FirebaseApp> firebase = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Learn More", style: TextStyle(color: Colors.white)),
      ),
      body: Container(
        color: Colors.green[50],
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                gradient: LinearGradient(
                    colors: [Colors.blue.shade100, Colors.blue.shade50])),
            margin: EdgeInsets.all(32),
            padding: EdgeInsets.all(24),
            child: FutureBuilder(
                future: firebase,
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Scaffold(
                      body: Center(
                        child: Text("${snapshot.error}"),
                      ),
                    );
                  }
                  if (snapshot.connectionState == ConnectionState.done) {
                    return Scaffold(
                      body: SingleChildScrollView(
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Form(
                              key: formKey,
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("E-mail",
                                        style: TextStyle(fontSize: 20)),
                                    TextFormField(
                                      validator: MultiValidator([
                                        EmailValidator(
                                            errorText:
                                                "กรุณาป้อนอีเมล์ที่ถูกต้อง"),
                                        RequiredValidator(
                                            errorText: "กรุณาป้อนอีเมล์"),
                                      ]),
                                      keyboardType: TextInputType.emailAddress,
                                      onSaved: (String? email) {
                                        profile.email = email!;
                                      },
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text("password",
                                        style: TextStyle(fontSize: 20)),
                                    TextFormField(
                                      validator: RequiredValidator(
                                          errorText: "กรุณาป้อนรหัสผ่าน"),
                                      obscureText: true,
                                      onSaved: (String? password) {
                                        profile.password = password!;
                                      },
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      constraints:
                                          BoxConstraints.expand(height: 50),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                          color: Colors.blue[200]),
                                      child: ElevatedButton(
                                          child: Text("เข้าสู่ระบบ",
                                              style: TextStyle(fontSize: 16)),
                                          onPressed: () {
                                            if (formKey.currentState!
                                                .validate()) {
                                              formKey.currentState!.save();
                                              try {
                                                FirebaseAuth.instance
                                                    .signInWithEmailAndPassword(
                                                        email: profile.email,
                                                        password:
                                                            profile.password)
                                                    .then((value) {
                                                  formKey.currentState!.reset();
                                                  Navigator.push(context,
                                                      MaterialPageRoute(
                                                          builder: (context) {
                                                    return acc2();
                                                  }));
                                                });
                                              } catch (e) {
                                                Fluttertoast.showToast(
                                                    msg:
                                                        "อีเมล์หรือรหัสผ่านไม่ถูกต้อง",
                                                    gravity: ToastGravity.TOP);
                                              }
                                            }
                                          }),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }
                  return Scaffold(
                    body: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                }),
          ),
        ),
      ),
    );
  }
}
