import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:learn_more_more/model/tutordata.dart';
import 'package:learn_more_more/screens/tutor/seach.dart';
import 'package:learn_more_more/success/drawer.dart';

class resiter extends StatefulWidget {
  @override
  _resiterState createState() => _resiterState();
}

class _resiterState extends State<resiter> {
  final formKey = GlobalKey<FormState>();
  tutor mytutor =
      tutor(fname: '', lname: '', subject: '', level: '', number: '');
  //เตรียม firebase
  final Future<FirebaseApp> firebase = Firebase.initializeApp();
  CollectionReference _studentCollection =
      FirebaseFirestore.instance.collection("tutors");

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: firebase,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Scaffold(
              appBar: AppBar(
                title: Text("Error"),
              ),
              body: Center(
                child: Text("${snapshot.error}"),
              ),
            );
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return Scaffold(
              appBar: AppBar(
                title: Text("ข้อมูลติวเตอร์"),
              ),
              body: Container(
                padding: EdgeInsets.all(20),
                child: Form(
                  key: formKey,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "ชื่อ",
                          style: TextStyle(fontSize: 20),
                        ),
                        TextFormField(
                          validator:
                              RequiredValidator(errorText: "กรุณาระบุชื่อ"),
                          onSaved: (String? fname) {
                            mytutor.fname = fname!;
                          },
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "นามสกุล",
                          style: TextStyle(fontSize: 20),
                        ),
                        TextFormField(
                          validator:
                              RequiredValidator(errorText: "กรุณาระบุนามสกุล"),
                          onSaved: (String? lname) {
                            mytutor.lname = lname!;
                          },
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "วิชาที่สอน",
                          style: TextStyle(fontSize: 20),
                        ),
                        TextFormField(
                          validator: RequiredValidator(
                              errorText: "กรุณาระบุวิชาที่สอน"),
                          onSaved: (String? subject) {
                            mytutor.subject = subject!;
                          },
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "ระดับชั้นที่สอน",
                          style: TextStyle(fontSize: 20),
                        ),
                        TextFormField(
                          validator: RequiredValidator(
                              errorText: "กรุณาระบุระดับชั้นที่สอน"),
                          onSaved: (String? level) {
                            mytutor.level = level!;
                          },
                          keyboardType: TextInputType.number,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "เบอร์โทรศัพท์",
                          style: TextStyle(fontSize: 20),
                        ),
                        TextFormField(
                          validator: RequiredValidator(
                              errorText: "กรุณาระบุเบอร์โทรศัพท์"),
                          onSaved: (String? number) {
                            mytutor.number = number!;
                          },
                          keyboardType: TextInputType.number,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              child: Text(
                                "บันทึกข้อมูล",
                                style: TextStyle(fontSize: 20),
                              ),
                              onPressed: () async {
                                if (formKey.currentState!.validate()) {
                                  formKey.currentState!.save();
                                  await _studentCollection.add({
                                    "fname": mytutor.fname,
                                    "lname": mytutor.lname,
                                    "subject": mytutor.subject,
                                    "level": mytutor.level,
                                    "number": mytutor.number,
                                  });
                                  formKey.currentState!.reset();
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => seach()));
                                }
                              }),
                        )
                      ],
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
            drawer: Drawer(child: tapbar()),
          );
        });
  }

  static student() {}
}

class student {}
