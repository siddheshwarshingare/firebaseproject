import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddtheDataInFirebase extends StatelessWidget {
  const AddtheDataInFirebase({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController();
    TextEditingController age = TextEditingController();
    TextEditingController qualification = TextEditingController();
    TextEditingController hobby = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Add The Data In Firestore"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              controller: name,
              decoration: InputDecoration(
                hintText: "Enter Name",
              ),
            ),
            TextFormField(
              controller: age,
              decoration: InputDecoration(
                hintText: "Enter Age",
              ),
            ),
            TextFormField(
              controller: qualification,
              decoration: InputDecoration(
                hintText: "Enter Qualification",
              ),
            ),
            TextFormField(
              controller: hobby,
              decoration: InputDecoration(
                hintText: "Enter Hobby",
              ),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () {
                  final CollectionReference<Object> items =
                      FirebaseFirestore.instance.collection("EmploeeDetails");
                  items.add({
                    "age": age.text,
                    "hobby": hobby.text,
                    "name": name.text,
                    "qualification": qualification.text
                  });
                },
                child: Text("Submit"))
          ],
        ),
      ),
    );
  }

  void createTableInFirestore() {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    // Create a collection (like a table) called 'products' and add documents (rows)
    firestore.collection('products').add(
        {'name': 'Laptop', 'price': 1200, 'quantity': 10, 'company': 'Dell'});

    firestore.collection('products').add(
        {'name': 'Smartphone', 'price': 800, 'quantity': 25, 'company': 'Mac'});

    firestore.collection('products').add(
        {'name': 'Tablet', 'price': 600, 'quantity': 15, 'company': 'Benq'});
  }
}
// ElevatedButton(
//                 onPressed: () {
//                   CollectionReference collRef =
//                       FirebaseFirestore.instance.collection("EmploeeDetails");
//                   collRef.add({
//                     'name': name.text,
//                     'age': age.text,
//                     'hobby': hobby.text,
//                     'qualification': qualification.text
//                   });
//                   //createTableInFirestore();
//                 },
//                 child: Text("Submit"))