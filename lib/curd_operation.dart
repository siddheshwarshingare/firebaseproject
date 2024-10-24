import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CurdOperation extends StatefulWidget {
  const CurdOperation({super.key});

  @override
  State<CurdOperation> createState() => _CurdOperationState();
}

class _CurdOperationState extends State<CurdOperation> {
  final CollectionReference items =
      FirebaseFirestore.instance.collection("UserData");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.yellowAccent,
      appBar: AppBar(
        title: const Text("Curd Operation"),
        backgroundColor: Colors.pink,
      ),
      body: StreamBuilder(
        stream: items.snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
          if (streamSnapshot.hasData) {
            return ListView.builder(
              itemCount:
                  streamSnapshot.data!.docs.length, // Specify the item count
              itemBuilder: (context, index) {
                final DocumentSnapshot documentSnapshot =
                    streamSnapshot.data!.docs[index];
                return Card(
                  color: Colors.greenAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 17,
                      backgroundColor: Colors.yellow,
                      child: Text(documentSnapshot["Age"].toString()),
                    ),
                    title: Text(documentSnapshot["Name"]),
                    trailing: SizedBox(
                      width: 100,
                      child: Row(
                        children: [
                          IconButton(
                            color: Colors.black,
                            onPressed:
                                () {}, // Add your edit functionality here
                            icon: const Icon(Icons.edit),
                          ),
                          IconButton(
                            color: Colors.black,
                            onPressed:
                                () {}, // Add your delete functionality here
                            icon: const Icon(Icons.delete),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
