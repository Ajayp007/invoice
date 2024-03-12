import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff5C3586),
          title: const Text(
            "Invoice",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white, // Change Custom Drawer Icon Color
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          centerTitle: true,
        ),
        backgroundColor: Colors.grey.shade200,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 170,
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(10),
                width: MediaQuery.sizeOf(context).width * 0.90,
                decoration: BoxDecoration(
                  color: const Color(0xffA367B1),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                        color: Color(0xffA367B1),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(6, 6))
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Client Name : Ajay Purohit",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Invoice : #00005",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Created Date : 09/03/2024",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'items');
                          },
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              Color(0xff5C3586),
                            ),
                          ),
                          child: const Text(
                            "Edit",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              Color(0xff5C3586),
                            ),
                          ),
                          child: const Text(
                            "Delete",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xff5C3586),
          onPressed: () {
            Navigator.pushNamed(context, 'details');
          },
          child: const Icon(
            Icons.add,
            size: 28,
            color: Colors.white,
          ),
        ),
        drawer: Drawer(
          backgroundColor: const Color(0xffFFFFFF),
          surfaceTintColor: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  "assets/images/1.png",
                  height: 200,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 50,
                width: MediaQuery.sizeOf(context).width * 0.60,
                decoration: const BoxDecoration(
                  color: Color(0xff5C3586),
                  borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(15),
                  ),
                ),
                child: const Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.fast_forward,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(width: 20),
                    Text(
                      "Share",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 50,
                width: MediaQuery.sizeOf(context).width * 0.60,
                decoration: const BoxDecoration(
                  color: Color(0xff5C3586),
                  borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(15),
                  ),
                ),
                child: const Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.rate_review,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(width: 20),
                    Text(
                      "Rate Us",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
