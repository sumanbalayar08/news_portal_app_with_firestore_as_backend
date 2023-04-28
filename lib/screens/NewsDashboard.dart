import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class NewsDashboard extends StatelessWidget {
  final String text;
  NewsDashboard({Key? key, required this.text,}) : super(key: key);
  List dataList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("International News"),
        backgroundColor: Color(0xFF222240),
      ),
      body: FutureBuilder(
        future: getdisplay(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Text(
              "Something went wrong",
            );
          }

          if (snapshot.connectionState == ConnectionState.done) {
            dataList = snapshot.data as List;
            return buildItems(dataList);
          }
          //Text("No News Available At the Moment");
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

  Widget buildItems(dataList) => ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: dataList.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: (){

          },
          child: Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 150,
                  width: 140,
                  child: Image.network(
                    dataList[index]['photo'],
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 150,
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          dataList[index]['title'], maxLines: 1,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        SizedBox(height: 20.0,),
                        Text(dataList[index]['text'],maxLines: 4,style: const TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 12.0,
                        ),),
                            const Spacer(),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      });

  Future getdisplay() async {
    List studentsList = [];
    final CollectionReference collectionRef =
    FirebaseFirestore.instance.collection(text.toString());
    try {
      await collectionRef.get().then((querySnapshot) {
        for (var result in querySnapshot.docs) {
          studentsList.add(result.data());
        }
      });

      return studentsList;
    } catch (e) {
      debugPrint("Error - $e");
      return e;
    }
  }
}


