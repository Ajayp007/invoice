import 'package:flutter/material.dart';

class ItemsScreen extends StatefulWidget {
  const ItemsScreen({super.key});

  @override
  State<ItemsScreen> createState() => _ItemsScreenState();
}

class _ItemsScreenState extends State<ItemsScreen> {
  List<TextEditingController> l1 = [TextEditingController()];
  List<String> l2 = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff5C3586),
          title: const Text(
            "Items Details",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          centerTitle: true,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.check,
                color: Colors.white,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.grey.shade200,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.all(20),
            width: MediaQuery.sizeOf(context).width * 0.90,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                          hintText: "Item Name*",
                          hintStyle:
                              TextStyle(color: Colors.black45, fontSize: 18),
                          contentPadding: EdgeInsets.symmetric(vertical: 20.0),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                          hintText: "Description",
                          hintStyle:
                              TextStyle(color: Colors.black45, fontSize: 18),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: TextFormField(
                              textInputAction: TextInputAction.next,
                              decoration: const InputDecoration(
                                hintText: "Price*",
                                hintStyle: TextStyle(color: Colors.black45),
                                border: OutlineInputBorder(),
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: TextFormField(
                              textInputAction: TextInputAction.next,
                              decoration: const InputDecoration(
                                hintText: "Qty.*",
                                hintStyle: TextStyle(color: Colors.black45),
                                border: OutlineInputBorder(),
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: TextFormField(
                              textInputAction: TextInputAction.next,
                              decoration: const InputDecoration(
                                hintText: "Tax*",
                                hintStyle: TextStyle(color: Colors.black45),
                                border: OutlineInputBorder(),
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: TextFormField(
                              textInputAction: TextInputAction.done,
                              decoration: const InputDecoration(
                                hintText: "Sub Total",
                                hintStyle: TextStyle(color: Colors.black45),
                                border: OutlineInputBorder(),
                              ),
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("Saved Successfully"),
                                  backgroundColor: Color(0xff5C3586),
                                  behavior: SnackBarBehavior.floating,
                                  duration: Duration(seconds: 3),
                                ),
                              );
                            },
                            child: Container(
                              height: 50,
                              width: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  16,
                                ),
                                color: const Color(0xff5C3586),
                              ),
                              child: const Center(
                                child: Text(
                                  "Save",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
