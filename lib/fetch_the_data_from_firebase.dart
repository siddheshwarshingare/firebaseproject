import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FetchTheDataFromFirebase extends StatefulWidget {
  const FetchTheDataFromFirebase({super.key});

  @override
  State<FetchTheDataFromFirebase> createState() =>
      _FetchTheDataFromFirebaseState();
}

class _FetchTheDataFromFirebaseState extends State<FetchTheDataFromFirebase> {
  final CollectionReference<Object> items =
      FirebaseFirestore.instance.collection("EmploeeDetails");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Curd Operation"),
        backgroundColor: Colors.pink,
      ),
      body: StreamBuilder(
          stream: items.snapshots(),
          builder: (BuildContext context,
              AsyncSnapshot<QuerySnapshot<Object?>> streamSnapshot) {
            if (streamSnapshot.hasData) {
              return ListView.builder(
                itemCount: streamSnapshot.data!.docs.length,
                itemBuilder: (context, index) {
                  final DocumentSnapshot documentSnapshot =
                      streamSnapshot.data!.docs[index];
                  return Card(
                    color: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: EdgeInsets.all(10),
                    child: ListTile(
                        leading: CircleAvatar(
                          radius: 17,
                          backgroundColor: Colors.yellow,
                          child: Text(documentSnapshot["age"]),
                        ),
                        trailing: Text(documentSnapshot["name"])
                        //Text(documentSnapshot["qualification"]),
                        ),
                  );
                },
              );
            }
            return const Center(child: CircularProgressIndicator());
          }),
    );
  }
}
