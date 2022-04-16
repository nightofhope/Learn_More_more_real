import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:form_field_validator/form_field_validator.dart';
import 'package:learn_more_more/model/student.dart';
import 'package:learn_more_more/screens/acc/acc.dart';

class FormScreen extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final formKey = GlobalKey<FormState>();
  Student mystudent = Student(fname: '', lname: '', school: '', level: '');
  //เตรียม firebase
  final Future<FirebaseApp> firebase = Firebase.initializeApp();
  CollectionReference _studentCollection =
      FirebaseFirestore.instance.collection("students");

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
                title: Text("บันทึกข้อมูลผู้ใช้งาน"),
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
                            mystudent.fname = fname!;
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
                            mystudent.lname = lname!;
                          },
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "โรงเรียน",
                          style: TextStyle(fontSize: 20),
                        ),
                        TextFormField(
                          validator:
                              RequiredValidator(errorText: "กรุณาระบุโรงเรียน"),
                          onSaved: (String? email) {
                            mystudent.school = email!;
                          },
                          keyboardType: TextInputType.emailAddress,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "มัธยมศึกษาปีที่",
                          style: TextStyle(fontSize: 20),
                        ),
                        TextFormField(
                          validator: RequiredValidator(
                              errorText: "กรุณาระบุระดับชั้นที่กำลังศึกษา"),
                          onSaved: (String? score) {
                            mystudent.level = score!;
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
                                    "fname": mystudent.fname,
                                    "lname": mystudent.lname,
                                    "email": mystudent.school,
                                    "score": mystudent.level
                                  });
                                  formKey.currentState!.reset();
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              DisplayScreen()));
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
          );
        });
  }

  static student() {}
}

class student {}
