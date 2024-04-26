import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import '../../utils/global.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  GlobalKey<FormState> formekey = GlobalKey();

  TextEditingController txtname = TextEditingController();
  TextEditingController txtemail = TextEditingController();
  TextEditingController txtphone = TextEditingController();
  TextEditingController txtadd = TextEditingController();
  TextEditingController txtdate = TextEditingController();

  String path = "";

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
          child: Form(
            key: formekey,
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
                    Container(
                      height: 130,
                      width: MediaQuery.sizeOf(context).width * 0.90,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          path.isEmpty
                              ? CircleAvatar(
                                  backgroundColor: Colors.pink.shade200,
                                  maxRadius: 70,
                                  child: const Text(
                                    "ADD",
                                    style: TextStyle(
                                        color: Colors.black38, fontSize: 30),
                                  ),
                                )
                              : CircleAvatar(
                                  backgroundColor: Colors.pink.shade200,
                                  backgroundImage: FileImage(
                                    File(path),
                                  ),
                                  maxRadius: 70,
                                ),
                          IconButton.filled(
                            onPressed: () async {
                              ImagePicker picker = ImagePicker();
                              XFile? image = await picker.pickImage(
                                  source: ImageSource.gallery);
                              setState(() {
                                path = image!.path;
                                g1.profileImage = image.path;
                              });
                            },
                            icon: const Icon(Icons.add),
                          ),
                        ],
                      ),
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
                            validator: (value) {
                              if (value!.isEmpty || value == null) {
                                return "Please Enter The Name";
                              }
                              return null;
                            },
                            controller: txtname,
                            keyboardType: TextInputType.name,
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
                            validator: (value) {
                              if (value!.isEmpty || value == null) {
                                return "email is required";
                              } else if (!RegExp(
                                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                  .hasMatch(value)) {
                                return "please enter email properly";
                              }
                            },
                            controller: txtemail,
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
                            validator: (value) {
                              if (value!.isEmpty || value == null) {
                                return "enter the your phone number";
                              } else if (value.length != 10) {
                                return "please enter the 10 digits";
                              }
                            },
                            controller: txtphone,
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
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Address",
                        labelStyle:
                            TextStyle(color: Colors.black45, fontSize: 19),
                        hintMaxLines: 3,
                        constraints: BoxConstraints(minHeight: 100),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                      ),
                      controller: txtadd,
                      validator: (value) {
                        if (value!.isEmpty || value == null) {
                          return "please enter the address";
                        }
                        return null;
                      },
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
                      controller: txtdate,
                      validator: (value) {
                        if (value!.isEmpty || value == null) {
                          return "please enter the address";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.datetime,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, 'items');
                            FocusManager.instance.primaryFocus?.unfocus();
                            if (formekey.currentState!.validate()) {
                              g1.name = txtname.text;
                              g1.email = txtemail.text;
                              g1.phone = txtphone.text;
                              g1.add = txtadd.text;
                              g1.date = txtdate.text;
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
        ),
      ),
    );
  }
}
