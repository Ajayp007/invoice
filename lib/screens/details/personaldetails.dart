import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  List<TextEditingController> l1 = [TextEditingController()];
  List<String> l2 = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff5C3586),
          title: const Text(
            "Invoice Details",
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
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "Cancel",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
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
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 150,
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.shade100,
                            ),
                            child: const Text(
                              "#INV0005",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Customer Details",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: TextFormField(
                              textInputAction: TextInputAction.next,
                              decoration: const InputDecoration(
                                labelText: "Name",
                                labelStyle: TextStyle(color: Colors.black45),
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: TextFormField(
                              textInputAction: TextInputAction.next,
                              decoration: const InputDecoration(
                                labelText: "Email",
                                labelStyle: TextStyle(color: Colors.black45),
                                constraints: BoxConstraints(minWidth: 10),
                                border: OutlineInputBorder(),
                              ),
                              keyboardType: TextInputType.emailAddress,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: TextFormField(
                              textInputAction: TextInputAction.next,
                              decoration: const InputDecoration(
                                labelText: "Phone Number",
                                labelStyle: TextStyle(color: Colors.black45),
                                border: OutlineInputBorder(),
                              ),
                              keyboardType: TextInputType.phone,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: TextFormField(
                              textInputAction: TextInputAction.next,
                              decoration: const InputDecoration(
                                labelText: "Business Number",
                                labelStyle: TextStyle(color: Colors.black45),
                                constraints: BoxConstraints(minWidth: 10),
                                border: OutlineInputBorder(),
                              ),
                              keyboardType: TextInputType.phone,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        textInputAction: TextInputAction.done,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Address",
                          labelStyle:
                              TextStyle(color: Colors.black45, fontSize: 19),
                          hintMaxLines: 3,
                          constraints: BoxConstraints(minHeight: 100),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 30, horizontal: 10),
                        ),
                        keyboardType: TextInputType.name,
                      ),
                      TextFormField(
                        textInputAction: TextInputAction.done,
                        decoration: const InputDecoration(
                          hintText: "DD/MM/YYYY*",
                          hintStyle:
                              TextStyle(color: Colors.black45, fontSize: 18),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 10),
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.datetime,
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
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xff5C3586),
          onPressed: () {
            Navigator.pushNamed(context, 'items');
          },
          child: const Icon(
            Icons.arrow_forward,
            size: 28,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
