import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'naigation',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
   
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('FirstRoute')),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 50), 

            Image.asset(
              'asset/images/akun.png',
              width: 100,
            ),

            SizedBox(height: 50,),

            Text(
              "Please sign in to continue",
              style: TextStyle(
                color: const Color.fromARGB(255, 0, 162, 255),
                fontSize: 16,
              ),
            ),

            SizedBox(height: 40),

            // Email 
            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[200],
                hintText: 'Email',
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(Icons.email, color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              ),
            ),

            const SizedBox(height: 10),

            
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                suffixIconColor: const Color.fromARGB(255, 0, 153, 255),
                filled: true,
                fillColor: Colors.grey[200],
                hintText: 'Password',
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(Icons.lock, color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              ),
            ),

            const SizedBox(height: 20),
            OutlinedButton(
              child: const Text('Log In'),
              onPressed: () {
               Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondRoute()),
            );
              }
            ),

            SizedBox(height: 20,),

            Text(
              "Forgot Password?   Don't have an account? Sign up",
              style: TextStyle(
                color: const Color.fromARGB(255, 0, 153, 255),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

          ],
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SecondRoute"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              'This is the second route',
              style: TextStyle(fontSize: 19),
            ),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {
                Navigator.pop(context); 
              },
              child: const Text('Go back!'),
            ),
          ],
        ),
      ),
    );
  }
}

class OutlinedButtonExampleApp extends StatelessWidget {
  const OutlinedButtonExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('OutlinedButton Sample')),
        body: const Center(child: OutlinedButtonExample()),
      ),
    );
  }
}

class OutlinedButtonExample extends StatelessWidget {
  const OutlinedButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        debugPrint('Received click');
      },
      child: const Text('Click Me'),
    );
  }
}