import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "Coffee",
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.all(20),
              color: Colors.black,
              width: double.infinity,
              height: 150,
              child: Text(
                "Menu",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  ListTile(
                    onTap: () {},
                    leading: Icon(Icons.person),
                    title: Text("Account"),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Icon(Icons.menu_book),
                    title: Text("Menu"),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Icon(Icons.history),
                    title: Text("History"),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              child: Text(
                "Recomended",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 350,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.amber,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("images/coffee_1.png"),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              width: 350,
                              height: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.amber,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("images/coffee_2.png"),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Container(
                                      width: 350,
                                      height: 200,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.amber,
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image:
                                              AssetImage("images/coffee_3.png"),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              child: Text(
                "Categories",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    FloatingActionButton.extended(
                      onPressed: () {},
                      icon: Icon(Icons.coffee),
                      label: Text(
                        "Cappucino",
                        style: TextStyle(color: Colors.white),
                      ),
                      backgroundColor: Colors.green[900],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            FloatingActionButton.extended(
                              onPressed: () {},
                              icon: Icon(
                                Icons.coffee,
                                color: Colors.black,
                              ),
                              label: Text(
                                "Cappucino",
                                style: TextStyle(color: Colors.black),
                              ),
                              backgroundColor: Colors.white,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    FloatingActionButton.extended(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.coffee,
                                        color: Colors.black,
                                      ),
                                      label: Text(
                                        "Cappucino",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      backgroundColor: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Card(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Image(
                              image: AssetImage("images/menu_1.png"),
                            ),
                          ),
                          Container(
                            width: 200,
                            child: Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: Title(
                                color: Colors.black,
                                child: Text(
                                  "Cappucino",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                width: 200,
                                child: Padding(
                                  padding: EdgeInsets.all(30),
                                  child: Text("Rp 25.000"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(3),
                                child: FloatingActionButton(
                                  backgroundColor: Colors.green[900],
                                  onPressed: () {},
                                  child: Icon(Icons.add_shopping_cart),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Image(
                              image: AssetImage("images/menu_2.png"),
                            ),
                          ),
                          Container(
                            width: 200,
                            child: Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: Title(
                                color: Colors.black,
                                child: Text(
                                  "Cappucino",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                width: 200,
                                child: Padding(
                                  padding: EdgeInsets.all(30),
                                  child: Text("Rp 25.000"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(3),
                                child: FloatingActionButton(
                                  backgroundColor: Colors.green[900],
                                  onPressed: () {},
                                  child: Icon(Icons.add_shopping_cart),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Image(
                              image: AssetImage("images/menu_3.png"),
                            ),
                          ),
                          Container(
                            width: 200,
                            child: Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: Title(
                                color: Colors.black,
                                child: Text(
                                  "Cappucino",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                width: 200,
                                child: Padding(
                                  padding: EdgeInsets.all(30),
                                  child: Text("Rp 25.000"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(3),
                                child: FloatingActionButton(
                                  backgroundColor: Colors.green[900],
                                  onPressed: () {},
                                  child: Icon(Icons.add_shopping_cart),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                "Spesial Offer",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        Container(
                          width: 150,
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "images/coffee_4.png",
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 200,
                          alignment: Alignment.center,
                          child: Title(
                            color: Colors.black,
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Text(
                                "Get two cookies for cappuccinous Breakfast",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        Container(
                          width: 150,
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "images/coffee_4.png",
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 200,
                          alignment: Alignment.center,
                          child: Title(
                            color: Colors.black,
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Text(
                                "Get two cookies for cappuccinous Breakfast",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        Container(
                          width: 150,
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "images/coffee_4.png",
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 200,
                          alignment: Alignment.center,
                          child: Title(
                            color: Colors.black,
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Text(
                                "Get two cookies for cappuccinous Breakfast",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        Container(
                          width: 150,
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "images/coffee_4.png",
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 200,
                          alignment: Alignment.center,
                          child: Title(
                            color: Colors.black,
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Text(
                                "Get two cookies for cappuccinous Breakfast",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
