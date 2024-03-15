import 'package:flutter/material.dart';

import '../../utils/global.dart';

class ItemsScreen extends StatefulWidget {
  const ItemsScreen({super.key});

  @override
  State<ItemsScreen> createState() => _ItemsScreenState();
}

class _ItemsScreenState extends State<ItemsScreen> {
  List<TextEditingController> l1 = [TextEditingController()];

  double? price;
  double? qty;
  double? tax;
  double? discount;
  double? total;

  GlobalKey<FormState> formekey = GlobalKey();
  TextEditingController txtitemname = TextEditingController();
  TextEditingController txtprice = TextEditingController();
  TextEditingController txtqu = TextEditingController();
  TextEditingController txttax = TextEditingController();
  TextEditingController txtdisc = TextEditingController();

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
        ),
        backgroundColor: Colors.grey.shade200,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.all(20),
                width: MediaQuery.sizeOf(context).width * 0.90,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Form(
                    key: formekey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                            hintText: "Item Name*",
                            hintStyle:
                                TextStyle(color: Colors.black45, fontSize: 18),
                            contentPadding:
                                EdgeInsets.symmetric(vertical: 20.0),
                          ),
                          validator: (value) {
                            if (value!.isEmpty ) {
                              return "Please Enter The Item Name";
                            }
                            return null;
                          },
                          controller: txtitemname,
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
                          children: [
                            Expanded(
                              child: TextFormField(
                                textInputAction: TextInputAction.next,
                                decoration: const InputDecoration(
                                  hintText: "Price*",
                                  hintStyle: TextStyle(color: Colors.black45),
                                  border: OutlineInputBorder(),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty ) {
                                    return "Please Enter The Price";
                                  }
                                  return null;
                                },
                                controller: txtprice,
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
                                validator: (value) {
                                  if (value!.isEmpty ) {
                                    return "Please Enter The Quantity";
                                  }
                                  return null;
                                },
                                controller: txtqu,
                                keyboardType: TextInputType.number,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                textInputAction: TextInputAction.next,
                                decoration: const InputDecoration(
                                  hintText: "Tax*",
                                  hintStyle: TextStyle(color: Colors.black45),
                                  border: OutlineInputBorder(),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Please Enter The Tax";
                                  }
                                  return null;
                                },
                                controller: txttax,
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
                                  hintText: "Discount",
                                  hintStyle: TextStyle(color: Colors.black45),
                                  border: OutlineInputBorder(),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Please Enter The Discount";
                                  }
                                  return null;
                                },
                                controller: txtdisc,
                                keyboardType: TextInputType.number,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment:MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Total",style: TextStyle(color: Colors.black,fontSize: 20),),
                            Text("$total",style: const TextStyle(color: Colors.black,fontSize: 20),),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap : () {
                                Navigator.pop(context);
                                if (formekey.currentState!.validate()) {
                                  Map add = {
                                  'ItemName' : txtitemname.text,
                                  'ItemPrice' : txtprice.text,
                                  'ItemQty' : txtqu.text,
                                  'ItemTax' : txttax.text,
                                  'ItemDisc' : txtdisc.text,
                                  };
                                  g1.l1.add(add);
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text("Data Save"),
                                      backgroundColor: Color(0xff5C3586),
                                      behavior: SnackBarBehavior.floating,
                                      duration: Duration(seconds: 3),
                                    ),
                                  );
                                }
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
            ],
          ),
        ),
      ),
    );
  }
}
