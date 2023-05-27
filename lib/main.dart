import 'package:cryptotracker/services/dataservice.dart';
import 'package:flutter/material.dart';
import 'package:cryptotracker/models/crypto.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'cubit/cubit_service.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      //Bloc Provider to maintain the Cubit state throughout the app
      home: BlocProvider<CryptoCubit>(
          create: (context) => CryptoCubit()..getCrypto(), child: HomePage())));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ignore: deprecated_member_use
  List<Crypto> _cryptoList = <Crypto>[];
  final service = DataService();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCrypto();
    //print(_postList.length.toString());
  }

  void getCrypto() async {
    _cryptoList = await service.fetchPost();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Prices",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  TextButton.icon(
                    onPressed: () {
                      // Respond to button press
                      print("Sort");
                    },
                    icon: Icon(
                      Icons.sort,
                      size: 18,
                      color: Colors.black,
                    ),
                    label: Text(
                      "Sort/Filter",
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              //BlocBuilder to retrieve the data from the BlocProvider at the top of the widget tree
              child: BlocBuilder<CryptoCubit, List<Crypto>>(
                // function where you call your api
                builder: (context, snapshot) {
                  // Snapshot now returns List<Crypto>
                  if (snapshot.isNotEmpty) {
                    return ListView.builder(
                        itemCount: snapshot.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            child: ListTile(
                                subtitle: Text(snapshot
                                    .elementAt(index)
                                    .lastUpdated
                                    .toString()),
                                leading: Container(
                                  height: 100,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Center(
                                    child: Image(
                                      alignment: Alignment.center,
                                      height: 13,
                                      width: 20,
                                      image: NetworkImage(
                                          snapshot.elementAt(index).image!),
                                    ),
                                  ),
                                ),
                                trailing: Text(
                                  "${snapshot.elementAt(index).currentPrice}",
                                  style: TextStyle(
                                      color: Colors.green, fontSize: 15),
                                ),
                                title: Text(
                                  "${snapshot.elementAt(index).name}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                )),
                          );
                        });
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                },
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   backgroundColor: Colors.white,
      //   selectedItemColor: Colors.black,
      //   unselectedItemColor: Colors.black.withOpacity(.60),
      //   selectedFontSize: 14,
      //   unselectedFontSize: 14,
      //   onTap: (value) {
      //     // Respond to item press.
      //   },
      //   items: [
      //     BottomNavigationBarItem(
      //       label: "",
      //       icon: Icon(Icons.bar_chart),
      //     ),
      //     BottomNavigationBarItem(
      //       label: "",
      //       icon: Icon(Icons.blur_circular_rounded),
      //     ),
      //     BottomNavigationBarItem(
      //       label: "",
      //       icon: Icon(Icons.notifications_none),
      //     ),
      //     BottomNavigationBarItem(
      //       label: "",
      //       icon: Icon(Icons.person_outline),
      //     ),
      //   ],
      // ),
    );
  }
}
