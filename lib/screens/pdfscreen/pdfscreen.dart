import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/global.dart';
import '../../utils/pdfgenerate.dart';

class PdfScreen extends StatefulWidget {
  const PdfScreen({super.key});

  @override
  State<PdfScreen> createState() => _PdfScreenState();
}

class _PdfScreenState extends State<PdfScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff5C3586),
          title: const Text(
            "Items Bill",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          centerTitle: true,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back, color: Colors.white),
          ),
          actions: [
            InkWell(
              onTap: () {
                pdfGenerate();
              },
              child: const Icon(
                Icons.save,
                color: Colors.white,
                size: 30,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: FileImage(
                    File("${g1.profileImage}"),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Name :- ${g1.name}",
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                "Mobile :- ${g1.phone}",
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                "Address :- ${g1.add}",
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(
                "Bill Received :- ${g1.date}",
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                height: 20,
                color: Colors.black,
              ),
              const SizedBox(height: 10),
              const Text(
                "Your Transaction",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: Colors.black,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Items",
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    "Price",
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              const Divider(color: Colors.black),
              const SizedBox(height: 10),
              Column(
                  children: g1.l1
                      .map(
                        (e) => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "${e['ItemName']}",
                              style: const TextStyle(fontSize: 18),
                            ),
                            const Spacer(),
                            Text(
                              "${e['ItemPrice']} /-",
                              style: const TextStyle(fontSize: 18),
                            ),
                            const SizedBox(height: 10),
                            const Divider(
                              color: Colors.black,
                            ),
                          ],
                        ),
                      )
                      .toList()),
            ],
          ),
        ),
      ),
    );
  }
}
