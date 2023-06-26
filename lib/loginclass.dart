import 'package:flutter/material.dart';
import 'package:fyp/fyp_dashboard.dart';
import 'package:fyp/signup.dart';



class myAppp extends StatefulWidget {
  const myAppp({Key? key}) : super(key: key);

  @override
  State<myAppp> createState() => _myApppState();
}

class _myApppState extends State<myAppp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: loginclass()
    );
  }
}


class loginclass extends StatefulWidget {
  const loginclass({Key? key}) : super(key: key);

  @override
  State<loginclass> createState() => _loginclassState();
}

class _loginclassState extends State<loginclass> {
  bool value = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "CV builder",
            style: TextStyle(
              fontSize: 28,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.drag_handle_outlined))
          ],
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        body: ListView(
          children: [
            Container(
              width: 200,
              height: 20,
              color: Colors.lightBlueAccent,
            ),
            Padding(padding: EdgeInsets.fromLTRB(50, 10, 10, 10)),
            //SizedBox(height: 30,),
            //SizedBox(width: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "   Cv Builder Login",
                  style: TextStyle(
                    fontSize: 28,
                    //fontFamily: "times new roman",
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 40,
            ),
            Row(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  "    Welcome back to Cv Builder",
                  style: TextStyle(
                    fontSize: 20,
                    //fontFamily: "times new roman",
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  "    login with your registered email & password.",
                  style: TextStyle(
                    fontSize: 16,
                    //fontFamily: "times new roman",
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 50,
              width: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  autofocus: false,
                  initialValue: 'email',
                  style: new TextStyle(
                      fontWeight: FontWeight.normal, color: Colors.black),
                  decoration: InputDecoration(
                    hintText: '70078578@student.uol.edu.pk',
                    prefixIcon:
                    //padding: EdgeInsets.only(top: 15), // add padding to adjust icon
                    Icon(
                      Icons.account_box,
                      size: 40,
                      color: Colors.black,
                    ),
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  autofocus: false,
                  initialValue: 'password',
                  style: new TextStyle(
                      fontWeight: FontWeight.normal, color: Colors.black),
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'password',
                    prefixIcon:
                    //padding: EdgeInsets.only(top: 15), // add padding to adjust icon
                    Icon(
                      Icons.lock,
                      size: 30,
                      color: Colors.black,
                    ),
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Checkbox(
                      value: this.value,
                      onChanged: (bool? value) {},
                    ),
                    Text(
                      "    Remember me",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "      Forget password?",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: 500,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => dashboard()));
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      "   don't have an account? ",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            new MaterialPageRoute(builder: (context) => new signup()));
                      },
                      child: Text(
                        'Register now',
                        style: TextStyle(
                          //fontFamily: 'Times New Roman',
                          color: Colors.blueAccent,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
    );
  }
}

