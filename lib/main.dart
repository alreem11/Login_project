import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // عشان نستدعي الكلاسات اللي تحت
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: HomePage());
  }
}

bool isSecured = true;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  get color => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 227, 159, 182),
          centerTitle: true,
          title: const Text(
            "Login Page ",
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 24,
          ),
          actions: const [
            Icon(
              Icons.support_agent,
              color: Colors.white,
              size: 24,
            )
          ]),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              'assets/login.jpg',
              width: 350,
              height: 350,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text("Enter Email"),
                      prefixIcon: Icon(Icons.mail,
                          color: Color.fromARGB(255, 227, 159, 182)),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    obscureText: isSecured,
                    decoration: InputDecoration(
                      label: Text("Enter Password"),
                      prefixIcon: Icon(Icons.lock,
                          color: Color.fromARGB(255, 227, 159, 182)),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isSecured = !isSecured;
                          });
                        },
                        icon: Icon(Icons.remove_red_eye),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  InkWell(
                    onTap: () {
                      print("Logged");
                    },
                    child: Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color.fromARGB(255, 227, 159, 182),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Login",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          SizedBox(width: 5),
                          Icon(
                            Icons.login,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
