import 'package:flutter/material.dart';
import 'package:fyp/drawer.dart';
import 'package:fyp/fyp_dashboard.dart';
class MyApp1 extends StatelessWidget {
  const MyApp1({Key? key}) : super(key: key);

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bottom NavBar Demo',
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
        splashColor: Colors.blue,
        highlightColor: Colors.blueAccent,
        hoverColor: Colors.blue,
        backgroundColor: Colors.blue,
      ),

      home: HomePage(),

    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  final pages = [
    const Job(),
    const post(),
    const about(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => dashboard()));
          },
        ),

      ),
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white60,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(0),
          topRight: Radius.circular(0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 0;
                  });
                },
                icon: pageIndex == 0
                    ? const Icon(
                  Icons.work,
                  color: Colors.black,
                  size: 35,
                )
                    : const Icon(
                  Icons.work_outline,
                  color: Colors.black,
                  size: 35,
                ),
              ),
              Text(" Jobs",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 1;
                  });
                },
                icon: pageIndex == 1
                    ? const Icon(
                  Icons.add_box_sharp,
                  color: Colors.black,
                  size: 35,
                )
                    : const Icon(
                  Icons.add_box_outlined,
                  color: Colors.black,
                  size: 35,
                ),
              ),
              Text(" Post",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
            ],
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 2;
                  });
                },
                icon: pageIndex == 2
                    ? const Icon(
                  Icons.event_available,
                  color: Colors.black,
                  size: 35,
                )
                    : const Icon(
                  Icons.event_available_outlined,
                  color: Colors.black,
                  size: 35,
                ),
              ),
              Text(" About Us",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
            ],
          ),
        ],
      ),
    );
  }
}
class about extends StatefulWidget {
  const about({Key? key}) : super(key: key);

  @override
  State<about> createState() => _aboutState();
}

class _aboutState extends State<about> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [Padding(padding: EdgeInsets.all(20.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("About us ",style: TextStyle(
                    fontSize: 25,
                    fontFamily: "Playfair Display"
                ),)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.grey,
                  child: Image(image: NetworkImage("https://www.clearvision-cm.com/wp-content/uploads/2021/09/we-are-hiring.png"),),
                ),
                // Container(
                //   height: 200,
                //   width: 200,
                //   color: Colors.grey,
                //   child: Image(image: NetworkImage(""),),
                // ),
              ],
            ),
            SizedBox(height: 20,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 380,
                  height: 410,

                  color: Colors.white70,

                  child: Text("CV Builder is an online platform that offers a range of tools and resources to help job seekers create compelling resumes and cover letters. Our mission is to simplify the job application process by providing users with a user-friendly interface and a variety of customizable templates that can be tailored to their specific needs."
                      " we understand that the job market is highly competitive and that a well-crafted resume can make all the difference. Our team of experts has developed a range of resources and tools to help job seekers create resumes that stand out from the crowd. We are committed to providing high-quality resources and excellent customer service to our users.",style:
                  TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontFamily: "Playfair Display"
                  ),),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 260,
                  // width: 310,
                  color: Colors.grey,
                  child: Image(image: NetworkImage("https://static.vecteezy.com/system/resources/previews/008/297/514/original/clean-professional-resume-and-cover-letter-layout-template-for-business-job-applications-minimalist-resume-cv-template-resume-design-cv-design-curriculum-vitae-design-template-free-vector.jpg"),),
                ),
                // Container(
                //   height: 200,
                //   width: 200,
                //   color: Colors.grey,
                //   child: Image(image: NetworkImage(""),),
                // ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 260,
                  // width: 310,
                  color: Colors.grey,
                  child: Image(image: NetworkImage("https://elements-cover-images-0.imgix.net/4c7ff8be-8e2d-44ee-8fd6-ebaf6a698906?auto=compress%2Cformat&fit=max&w=900&s=f896c104cbff7e881e527116a46788d3"),),
                ),
                // Container(
                //   height: 200,
                //   width: 200,
                //   color: Colors.grey,
                //   child: Image(image: NetworkImage(""),),
                // ),
              ],
            ),
            SizedBox(height: 20,),

            Row(
              children: [
                SizedBox(width: 20,),
                Text("Contact us",style: TextStyle(
                  fontSize: 30,
                  fontFamily: "Playfair Display",
                ),),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [Padding(padding:EdgeInsets.all(10)),
                Container(
                  height: 30,
                  width: 30,
                  child:Image(image: NetworkImage("https://img.freepik.com/free-icon/telephone-symbol-button_318-41893.jpg"),),

                ),
                SizedBox(width:40,),
                Text("+92-316-4136-893",style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Playfair Display",
                ),)
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [Padding(padding:EdgeInsets.all(10)),
                Container(
                  height: 30,
                  width: 30,
                  child:Image(image: NetworkImage("https://workspace.google.com/static/img/products/png/gmail.png?cache=f50ecb6"),),

                ),
                SizedBox(width:40,),
                Text("iqraiqbalcs@gmail.com",style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Playfair Display",
                ),)
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [Padding(padding:EdgeInsets.all(10)),
                Container(
                  height: 30,
                  width: 30,
                  child:Image(image: NetworkImage("https://www.facebook.com/images/fb_icon_325x325.png"),),

                ),
                SizedBox(width:40,),
                Text("iqraiqbal82",style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Playfair Display",
                ),)
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [Padding(padding:EdgeInsets.all(10)),
                Container(
                  height: 30,
                  width: 30,
                  child:Image(image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Instagram-Icon.png/1200px-Instagram-Icon.png"),),

                ),
                SizedBox(width:40,),
                Text("iqraiqbal82",style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Playfair Display",
                ),)
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [Padding(padding:EdgeInsets.all(10)),
                Container(
                  height: 30,
                  width: 30,
                  child:Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4n_urpJ9XpwOTdzBVbGvactwHrPagYQrTJPYjxfxLGkSyu7nJZVqRVGAeohnPgKMrnKE&usqp=CAU"),),

                ),
                SizedBox(width:40,),
                Text("iqraiqbal2588",style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Playfair Display",
                ),)
              ],
            ),
            SizedBox(height: 20,),
          ],

        ),

    );
  }
}

class Job extends StatefulWidget {
  const Job({Key? key}) : super(key: key);

  @override
  State<Job> createState() => _JobState();
}

class _JobState extends State<Job> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


        body: ListView(
          children: [Padding(padding: EdgeInsets.all(10.0),),
            SizedBox(width: 50,),
            SizedBox(
              height: 40,
              width: 440,
              child:


              TextFormField(

                style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1.0),
                    borderRadius: BorderRadius.circular(100.0),

                  ),
                  hintText: "search job titles, companies",
                  hintStyle: TextStyle(color: Colors.black, fontSize: 18),
                  prefixIcon: Icon(Icons.search,
                    color: Colors.black,),
                ),
              ),

            ),
            SizedBox(height: 5,),
            SizedBox(
              height: 40,
              width: 440,
              child:


              TextFormField(
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 100.0),
                    borderRadius: BorderRadius.circular(100.0),

                  ),
                  hintText: "city, zip code",
                  hintStyle: TextStyle(color: Colors.black, fontSize: 18),
                  prefixIcon: Icon(Icons.search,
                    color: Colors.black,),
                ),
              ),

            ),
            SizedBox(height: 20,),
            // Container(
            //   child: ListTile(
            //     leading: Image(image: NetworkImage("https://media.licdn.com/dms/image/C4E0BAQFRoTuqtdHtuQ/company-logo_200_200/0/1533107713316?e=2147483647&v=beta&t=LbmA2d0xQEGeyYNTOa6pwOSviYYyeQbZ45q8_iPD9pA")),
            //     title: Text('System administrator',style: TextStyle(
            //       fontSize: 25,
            //       color: Colors.black,
            //       fontWeight: FontWeight.bold,
            //     ),),
            //     trailing: Icon(Icons.favorite_border_sharp ,size: 30,),
            //     // trailing: Image(image: NetworkImage("")),
            //
            //
            //   ),
            //
            // ),
            // Row(
            //   children: [Padding(padding: EdgeInsets.all(10.0)),
            //     Icon(Icons.home_work),
            //     Text(" Estrats",style: TextStyle(
            //       fontSize: 22,
            //       color: Colors.black,
            //
            //     ),),
            //
            //   ],
            // ),
            // Row(
            //   children: [Padding(padding: EdgeInsets.all(10.0)),
            //     Icon(Icons.location_on),
            //   Text(" Islamabad, Pakistan",style: TextStyle(
            //         fontSize: 22,
            //         color: Colors.black,
            //
            //       ),),
            //
            //   ],
            // ),
            // SizedBox(height: 10,),
            // Row(
            //   children: [Padding(padding: EdgeInsets.all(10.0)),
            //     Icon(Icons.work),
            //     Container(
            //       height:30,
            //       width:150,
            //       color: Colors.white60,
            //
            //       child: Text(" Full-time",style: TextStyle(
            //         fontSize: 22,
            //         color: Colors.black,
            //
            //       ),),
            //     ),
            //   ],
            // ),
            // SizedBox(height: 10,),
            // Row(
            //   children: [Padding(padding: EdgeInsets.all(10.0)),
            //     Icon(Icons.add_card),
            //     Container(
            //       height:30,
            //       width:350,
            //       color: Colors.white70,
            //
            //       child: Text(" Rs 35,000 - Rs 50,000 a month",style: TextStyle(
            //         fontSize: 22,
            //         color: Colors.black,
            //
            //       ),),
            //     ),
            //   ],
            // ),
            // SizedBox(height: 10,),
            // Row(
            //   children: [Padding(padding: EdgeInsets.all(10.0)),
            //     Icon(Icons.email),
            //     Text("info@estratcom.com",style: TextStyle(
            //       fontSize: 22,
            //       color: Colors.black,
            //
            //     ),),
            //   ],
            // ),
            // SizedBox(height: 10,),
            // Row(
            //   children: [Padding(padding: EdgeInsets.all(10.0)),
            //     Icon(Icons.contacts_rounded),
            //     Text("+92-518486782",style: TextStyle(
            //       fontSize: 22,
            //       color: Colors.black,
            //
            //     ),),
            //   ],
            // ),
            // SizedBox(height: 20,),
            // const Divider(
            //   height: 20,
            //   thickness: 2,
            //   indent: 20,
            //   endIndent: 0,
            //   color: Colors.black,
            // ),
            Container(
              child: ListTile(
                leading: Image(image: NetworkImage("https://devinnovationsummit.com/wp-content/uploads/2022/05/Dev-Innovation-Summit-Preview.jpg")),
                title: Text('Flutter Developer',style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),),
                trailing: Icon(Icons.favorite_border_sharp ,size: 30,),
                // trailing: Image(image: NetworkImage("")),

              ),

            ),
            Row(
              children: [Padding(padding: EdgeInsets.all(10.0)),
                Icon(Icons.home_work),
                Text(" InnovationDev",style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,

                ),),

              ],
            ),
            Row(
              children: [Padding(padding: EdgeInsets.all(10.0)),
                Icon(Icons.location_on),
                Text(" Lahore, Pakistan",style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,

                ),),

              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [Padding(padding: EdgeInsets.all(10.0)),
                Icon(Icons.work),
                Container(
                  height:30,
                  width:150,
                  color: Colors.white60,

                  child: Text(" Full-time",style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,

                  ),),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [Padding(padding: EdgeInsets.all(10.0)),
                Icon(Icons.add_card),
                Container(
                  height:30,
                  width:350,
                  color: Colors.white70,

                  child: Text(" Rs 50,000 - Rs 80,000 a month",style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,

                  ),),
                ),
              ],
            ),

            SizedBox(height: 10,),
            Row(
              children: [Padding(padding: EdgeInsets.all(10.0)),
                Icon(Icons.email),
                Text("info@estratcom.com",style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,

                ),),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [Padding(padding: EdgeInsets.all(10.0)),
                Icon(Icons.contacts_rounded),
                Text("+92-518486782",style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,

                ),),
              ],
            ),
            SizedBox(height: 10,),
            const Divider(
              height: 20,
              thickness: 2,
              indent: 20,
              endIndent: 0,
              color: Colors.black,
            ),
            SizedBox(height: 10,),

            //another
            Container(
              child: ListTile(
                leading: Image(image: NetworkImage("https://pbs.twimg.com/profile_images/1481852862196031488/-X3icqqU_400x400.jpg")),
                title: Text('Blockchain',style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),),
                trailing: Icon(Icons.favorite_border_sharp ,size: 30,),


              ),

            ),
            SizedBox(height: 10,),
            Row(
              children: [Padding(padding: EdgeInsets.all(10.0)),
                Icon(Icons.home_work),
                Text(" VAIVAL Technologies,",style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,

                ),),

              ],
            ),
            Row(
              children: [Padding(padding: EdgeInsets.all(10.0)),
                Icon(Icons.location_on),
                Text(" Lahore, Pakistan",style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,

                ),),

              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [Padding(padding: EdgeInsets.all(10.0)),
                Icon(Icons.work),
                Container(
                  height:30,
                  width:150,
                  color: Colors.white60,

                  child: Text(" Full-time",style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,

                  ),),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [Padding(padding: EdgeInsets.all(10.0)),
                Icon(Icons.add_card),
                Container(
                  height:30,
                  width:350,
                  color: Colors.white70,

                  child: Text(" Rs 90,000 - Rs 99,000 a month",style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,

                  ),),
                ),
              ],
            ),

            SizedBox(height: 10,),
            Row(
              children: [Padding(padding: EdgeInsets.all(10.0)),
                Icon(Icons.email),
                Text("careers@vaival.com",style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,

                ),),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [Padding(padding: EdgeInsets.all(10.0)),
                Icon(Icons.contacts_rounded),
                Text("+92 42 359 116 85",style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,

                ),),

              ],
            ),
            SizedBox(height: 10,),
            const Divider(
              height: 20,
              thickness: 2,
              indent: 20,
              endIndent: 0,
              color: Colors.black,
            ),
            SizedBox(height: 10,),
            Container(
              child: ListTile(
                leading: Image(image: NetworkImage("https://media.licdn.com/dms/image/C4E0BAQE-j_D9j6aZOw/company-logo_200_200/0/1639719004779?e=2147483647&v=beta&t=0xJ_6iupueY9AHv-FqwxLFWrI0EixzXPrHe7xL3jCjk")),
                title: Text('Marketing',style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),),
                trailing: Icon(Icons.favorite_border_sharp ,size: 30,),


              ),

            ),
            SizedBox(height: 10,),
            Row(
              children: [Padding(padding: EdgeInsets.all(10.0)),
                Icon(Icons.home_work),
                Text(" CYBERMART,",style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,

                ),),

              ],
            ),
            Row(
              children: [Padding(padding: EdgeInsets.all(10.0)),
                Icon(Icons.location_on),
                Text(" Lahore, Pakistan",style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,

                ),),

              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [Padding(padding: EdgeInsets.all(10.0)),
                Icon(Icons.work),
                Container(
                  height:30,
                  width:150,
                  color: Colors.white60,

                  child: Text(" Full-time",style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,

                  ),),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [Padding(padding: EdgeInsets.all(10.0)),
                Icon(Icons.add_card),
                Container(
                  height:30,
                  width:350,
                  color: Colors.white70,

                  child: Text(" Rs 90,000 - Rs 99,000 a month",style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,

                  ),),
                ),
              ],
            ),


            SizedBox(height: 10,),
            Row(
              children: [Padding(padding: EdgeInsets.all(10.0)),
                Icon(Icons.email),
                Text("waseem@cybermart.com",style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,

                ),),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [Padding(padding: EdgeInsets.all(10.0)),
                Icon(Icons.contacts_rounded),
                Text("+92 333-6666679",style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,

                ),),

              ],
            ),
            SizedBox(height: 10,),
            const Divider(
              height: 20,
              thickness: 2,
              indent: 20,
              endIndent: 0,
              color: Colors.black,
            ),
            SizedBox(height: 20,),

            SizedBox(height: 20,),
            Container(
              child: ListTile(
                leading: Image(image: NetworkImage("https://pcilearning.com/wp-content/uploads/2019/12/full_stack_web_2.jpg")),
                title: Text('Web Senior Developer',style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),),
                trailing: Icon(Icons.favorite_border_sharp ,size: 30,),


              ),

            ),
            SizedBox(height: 10,),
            Row(
              children: [Padding(padding: EdgeInsets.all(10.0)),
                Icon(Icons.home_work),
                Text(" Tech Stacks",style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,

                ),),

              ],
            ),
            Row(
              children: [Padding(padding: EdgeInsets.all(10.0)),
                Icon(Icons.location_on),
                Text(" Lahore, Pakistan",style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,

                ),),

              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [Padding(padding: EdgeInsets.all(10.0)),
                Icon(Icons.work),
                Container(
                  height:30,
                  width:150,
                  color: Colors.white60,

                  child: Text(" Full-time",style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,

                  ),),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [Padding(padding: EdgeInsets.all(10.0)),
                Icon(Icons.add_card),
                Container(
                  height:30,
                  width:350,
                  color: Colors.white70,

                  child: Text(" Rs 90,000 - Rs 99,000 a month",style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,

                  ),),
                ),
              ],
            ),

            SizedBox(height: 10,),
            Row(
              children: [Padding(padding: EdgeInsets.all(10.0)),
                Icon(Icons.email),
                Text("info@hazelsoft.net",style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,

                ),),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [Padding(padding: EdgeInsets.all(10.0)),
                Icon(Icons.contacts_rounded),
                Text("0300-1133805",style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,

                ),),

              ],
            ),
            SizedBox(height: 10,),
            const Divider(
              height: 20,
              thickness: 2,
              indent: 20,
              endIndent: 0,
              color: Colors.black,
            ),
            SizedBox(height: 20,),


            Container(
              child: ListTile(
                leading: Image(image: NetworkImage("https://i.pinimg.com/280x280_RS/15/46/be/1546be1de19dd0add7a55805a57faace.jpg")),
                title: Text('Web Front-end Developer',style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),),
                //trailing: Icon(Icons.favorite_border_sharp ,size: 30,),
                trailing: Icon(Icons.favorite_border_sharp ,size: 30,),

              ),

            ),
            SizedBox(height: 10,),
            Row(
              children: [Padding(padding: EdgeInsets.all(10.0)),
                Icon(Icons.home_work),
                Text(" Focusteck,",style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,

                ),),

              ],
            ),
            Row(
              children: [Padding(padding: EdgeInsets.all(10.0)),
                Icon(Icons.location_on),
                Text(" Lahore, Pakistan",style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,

                ),),

              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [Padding(padding: EdgeInsets.all(10.0)),
                Icon(Icons.work),
                Container(
                  height:30,
                  width:150,
                  color: Colors.white60,

                  child: Text(" Full-time",style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,

                  ),),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [Padding(padding: EdgeInsets.all(10.0)),
                Icon(Icons.add_card),
                Container(
                  height:30,
                  width:350,
                  color: Colors.white70,

                  child: Text(" Rs 60,000 - Rs 90,000 a month",style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,

                  ),),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [Padding(padding: EdgeInsets.all(10.0)),
                Icon(Icons.email),
                Text("he@focusteck.com",style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,

                ),),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [Padding(padding: EdgeInsets.all(10.0)),
                Icon(Icons.contacts_rounded),
                Text("042-37870173",style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,

                ),),

              ],
            ),
            SizedBox(height: 20,),
            const Divider(
              height: 20,
              thickness: 2,
              indent: 20,
              endIndent: 0,
              color: Colors.black,
            ),
            SizedBox(height: 20,),

            SizedBox(height: 20,),
            Container(
              child: ListTile(
                leading: Image(image: NetworkImage("https://media.licdn.com/dms/image/C4E05AQG81EazRqTkbg/videocover-high/0/1669290051399?e=2147483647&v=beta&t=W2ZCShUz_s0wl2yHD93yWeI6SI2V1JgMKQR5EXraVe0")),
                title: Text('C# Developer',style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),),
                trailing: Icon(Icons.favorite_border_sharp ,size: 30,),

              ),

            ),
            SizedBox(height: 10,),
            Row(
              children: [Padding(padding: EdgeInsets.all(10.0)),
                Icon(Icons.home_work),
                Text(" optimal Greeks,",style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,

                ),),

              ],
            ),
            Row(
              children: [Padding(padding: EdgeInsets.all(10.0)),
                Icon(Icons.location_on),
                Text(" Lahore, Pakistan",style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,

                ),),

              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [Padding(padding: EdgeInsets.all(10.0)),
                Icon(Icons.work),
                Container(
                  height:30,
                  width:150,
                  color: Colors.white60,

                  child: Text(" Full-time",style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,

                  ),),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [Padding(padding: EdgeInsets.all(10.0)),
                Icon(Icons.add_card),
                Container(
                  height:30,
                  width:350,
                  color: Colors.white70,

                  child: Text(" Rs 80,000 - Rs 90,000 a month",style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,

                  ),),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [Padding(padding: EdgeInsets.all(10.0)),
                Icon(Icons.email),
                Text("hoptimalgreeks.com@",style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,

                ),),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [Padding(padding: EdgeInsets.all(10.0)),
                Icon(Icons.contacts_rounded),
                Text("0300-1133805",style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,

                ),),

              ],
            ),
            SizedBox(height: 20,),
            const Divider(
              height: 20,
              thickness: 2,
              indent: 20,
              endIndent: 0,
              color: Colors.black,
            ),
            SizedBox(height: 20,),

            SizedBox(height: 20,),
            Container(
              child: ListTile(
                leading: Image(image: NetworkImage("https://s3.amazonaws.com/logos.brandpa.com/uploads/9fa8599a0594eeaaec2d32ba466151e5/UpGenic.png")),
                title: Text('Machine Learning',style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),),
                trailing: Icon(Icons.favorite_border_sharp ,size: 30,),

              ),

            ),
            SizedBox(height: 10,),
            Row(
              children: [Padding(padding: EdgeInsets.all(10.0)),
                Icon(Icons.home_work),
                Text(" Upgenics,",style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,

                ),),


              ],
            ),
            Row(
              children: [Padding(padding: EdgeInsets.all(10.0)),
                Icon(Icons.location_on),
                Text(" Lahore, Pakistan",style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,

                ),),

              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [Padding(padding: EdgeInsets.all(10.0)),
                Icon(Icons.work),
                Container(
                  height:30,
                  width:150,
                  color: Colors.white60,

                  child: Text(" Full-time",style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,

                  ),),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [Padding(padding: EdgeInsets.all(10.0)),
                Icon(Icons.add_card),
                Container(
                  height:30,
                  width:350,
                  color: Colors.white70,

                  child: Text(" Rs 100,000 - Rs 150,000 a month",style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,

                  ),),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [Padding(padding: EdgeInsets.all(10.0)),
                Icon(Icons.email),
                Text("careers@upgenicsint.com",style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,

                ),),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [Padding(padding: EdgeInsets.all(10.0)),
                Icon(Icons.contacts_rounded),
                Text("+92 3216575008",style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,

                ),),

              ],
            ),
            SizedBox(height: 20,),
            const Divider(
              height: 20,
              thickness: 2,
              indent: 20,
              endIndent: 0,
              color: Colors.black,
            ),
            SizedBox(height: 20,),

            SizedBox(height: 20,),
            Container(
              child: ListTile(
                leading: Image(image: NetworkImage("https://marketplace.canva.com/EAFUdYqHyx0/1/0/1280w/canva-green-modern-customer-testimonials-instagram-post-p8RrhQOeAmc.jpg")),
                title: Text('QA automation & Testing',style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),),
                trailing: Icon(Icons.favorite_border_sharp ,size: 30,),


              ),

            ),
            SizedBox(height: 10,),
            Row(
              children: [Padding(padding: EdgeInsets.all(10.0)),
                Icon(Icons.home_work),
                Text(" TESTIMONAILS,",style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,

                ),),

              ],
            ),
            Row(
              children: [Padding(padding: EdgeInsets.all(10.0)),
                Icon(Icons.location_on),
                Text(" Lahore, Pakistan",style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,

                ),),

              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [Padding(padding: EdgeInsets.all(10.0)),
                Icon(Icons.work),
                Container(
                  height:30,
                  width:150,
                  color: Colors.white60,

                  child: Text(" Full-time",style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,

                  ),),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [Padding(padding: EdgeInsets.all(10.0)),
                Icon(Icons.add_card),
                Container(
                  height:30,
                  width:350,
                  color: Colors.white70,

                  child: Text(" Rs 70,000 - Rs 80,000 a month",style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,

                  ),),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [Padding(padding: EdgeInsets.all(10.0)),
                Icon(Icons.email),
                Text("info@piecyfer.com",style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,

                ),),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [Padding(padding: EdgeInsets.all(10.0)),
                Icon(Icons.contacts_rounded),
                Text("+92 (423) 548-1131",style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,

                ),),

              ],
            ),
            SizedBox(height: 20,),
            const Divider(
              height: 20,
              thickness: 2,
              indent: 20,
              endIndent: 0,
              color: Colors.black,
            ),
            SizedBox(height: 20,),
          ],
        ),

    );
  }
}

class post extends StatefulWidget {
  const post({Key? key}) : super(key: key);

  @override
  State<post> createState() => _postState();
}

class _postState extends State<post> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            children: [
              Text(
                "Tell us Who you're Hiring",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Roboto"),
              ),
            ],
          ),
          Container(
            child: ListTile(
              leading: Icon(Icons.laptop_chromebook_sharp,
                  size: 50, color: Colors.black),
              title: Text(
                "Job title*",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Roboto"),
              ),
              trailing: PopupMenuButton(
                  color: Colors.white,
                  elevation: 4,
                  padding: EdgeInsets.zero,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(2))),
                  icon: Icon(Icons.add_circle_outline_outlined,size: 40,),
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      value: 1,
                      child: ListTile(
                        onTap: (){
                          Navigator.pop(context);
                          showMyDilog();
                        },
                        leading: Icon(Icons.add),
                        title: Text('Add'),
                      ),
                    ),
                  ]
              ),
              subtitle: Text(
                "Add job title",
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          const Divider(
            height: 20,
            thickness: 2,
            indent: 20,
            endIndent: 0,
            color: Colors.grey,
          ),
          Container(
            child: ListTile(
              leading:
              Icon(Icons.comment_bank, size: 50, color: Colors.black),
              title: Text(
                "Company*",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Roboto"),
              ),
              trailing: PopupMenuButton(
                  color: Colors.white,
                  elevation: 4,
                  padding: EdgeInsets.zero,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(2))),
                  icon: Icon(Icons.add_circle_outline_outlined,size: 40,),
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      value: 1,
                      child: ListTile(
                        onTap: (){
                          Navigator.pop(context);
                          showMyDilog();
                        },
                        leading: Icon(Icons.add),
                        title: Text('Add'),
                      ),
                    ),
                  ]
              ),
              subtitle: Text(
                "Add company",
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          const Divider(
            height: 20,
            thickness: 2,
            indent: 20,
            endIndent: 0,
            color: Colors.grey,
          ),

          Container(
            child: ListTile(
              leading: Icon(Icons.location_on, size: 50, color: Colors.black),
              title: Text(
                "Job location*",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Roboto"),
              ),
              trailing: PopupMenuButton(
                  color: Colors.white,
                  elevation: 4,
                  padding: EdgeInsets.zero,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(2))),
                  icon: Icon(Icons.add_circle_outline_outlined,size: 40,),
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      value: 1,
                      child: ListTile(
                        onTap: (){
                          Navigator.pop(context);
                          showMyDilog();
                        },
                        leading: Icon(Icons.add),
                        title: Text('Add'),
                      ),
                    ),
                  ]
              ),
              subtitle: Text(
                "Lahore,Punjab,Pakistan",
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          const Divider(
            height: 20,
            thickness: 2,
            indent: 20,
            endIndent: 0,
            color: Colors.grey,
          ),
          Container(
            child: ListTile(
              leading: Icon(Icons.description, size: 50, color: Colors.black),
              title: Text(
                "Job description*",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Roboto"),
              ),
              trailing: PopupMenuButton(
                  color: Colors.white,
                  elevation: 4,
                  padding: EdgeInsets.zero,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(2))),
                  icon: Icon(Icons.add_circle_outline_outlined,size: 40,),
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      value: 1,
                      child: ListTile(
                        onTap: (){
                          Navigator.pop(context);
                          showMyDilog();
                        },
                        leading: Icon(Icons.add),
                        title: Text('Add'),
                      ),
                    ),
                  ]
              ),
              subtitle: Text(
                "Full-time",
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          const Divider(
            height: 20,
            thickness: 2,
            indent: 20,
            endIndent: 0,
            color: Colors.grey,
          ),
          Container(
            child: ListTile(
              leading: Icon(Icons.add_card_sharp, size: 50, color: Colors.black),
              title: Text(
                "Monthly Salary*",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Roboto"),
              ),
              trailing: PopupMenuButton(
                  color: Colors.white,
                  elevation: 4,
                  padding: EdgeInsets.zero,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(2))),
                  icon: Icon(Icons.add_circle_outline,size: 40,),
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      value: 1,
                      child: ListTile(
                        onTap: (){
                          Navigator.pop(context);
                          showMyDilog();
                        },
                        leading: Icon(Icons.add),
                        title: Text('Add'),
                      ),
                    ),
                  ]
              ),
              subtitle: Text(
                "Rs 50,000 - Rs 70,000",
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          const Divider(
            height: 20,
            thickness: 2,
            indent: 20,
            endIndent: 0,
            color: Colors.grey,
          ),
          SizedBox(
            height: 10,
          ),

          Container(
            child: ListTile(
              leading: Icon(Icons.email, size: 50, color: Colors.black),
              title: Text(
                "gmail*",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Roboto"),
              ),
              trailing: PopupMenuButton(
                  color: Colors.white,
                  elevation: 4,
                  padding: EdgeInsets.zero,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(2))),
                  icon: Icon(Icons.add_circle_outline_outlined,size: 40,),
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      value: 1,
                      child: ListTile(
                        onTap: (){
                          Navigator.pop(context);
                          showMyDilog();
                        },
                        leading: Icon(Icons.add),
                        title: Text('Add'),
                      ),
                    ),
                  ]
              ),
              subtitle: Text(
                "iqraiqbalcs@gmail.com",
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          const Divider(
            height: 20,
            thickness: 2,
            indent: 20,
            endIndent: 0,
            color: Colors.grey,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: ListTile(
              leading: Icon(Icons.contact_phone_outlined,
                  size: 50, color: Colors.black),
              title: Text(
                "Phone*",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Roboto"),
              ),
              trailing: PopupMenuButton(
                  color: Colors.white,
                  elevation: 4,
                  padding: EdgeInsets.zero,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(2))),
                  icon: Icon(Icons.add_circle_outline_outlined,size: 40,),
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      value: 1,
                      child: ListTile(
                        onTap: (){
                          Navigator.pop(context);
                          showMyDilog();
                        },
                        leading: Icon(Icons.add),
                        title: Text('Add'),
                      ),
                    ),
                  ]
              ),
              subtitle: Text(
                "+92 3164136893",
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          const Divider(
            height: 20,
            thickness: 2,
            indent: 20,
            endIndent: 0,
            color: Colors.grey,
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text("Next"),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> showMyDilog(){
    return showDialog(
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            title: Text("Edit"),
            content: Container(
              child: TextField(
                decoration: InputDecoration(
                ),
              ),
            ),
            actions: [
              TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text("Update"))
            ],
          );
        }
    );
  }
}

// class jobs extends StatefulWidget {
//   const jobs({Key? key}) : super(key: key);
//
//   @override
//   State<jobs> createState() => _jobsState();
// }
//
// class _jobsState extends State<jobs> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           leading: Icon(Icons.shopping_bag),
//           backgroundColor: Colors.blueAccent,
//           title: Text('Jobs_place'),
//           actions: [
//             Container(
//               child: Icon(Icons.add_alert_sharp),
//             ),
//             SizedBox(width: 20.0,),
//             Container(
//               child: Icon(Icons.line_weight_rounded),
//             ),
//
//             SizedBox(width: 20.0,),
//
//           ],
//
//         ),
//
//         body: ListView(
//           children: [Padding(padding: EdgeInsets.all(10.0),),
//             SizedBox(
//               height: 40,
//               width: 440,
//               child:
//
//
//               TextFormField(
//                 style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300),
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.black, width: 1.0),
//                     borderRadius: BorderRadius.circular(100.0),
//
//                   ),
//                   hintText: "search job titles, companies",
//                   hintStyle: TextStyle(color: Colors.black, fontSize: 18),
//                   prefixIcon: Icon(Icons.search,
//                     color: Colors.black,),
//                 ),
//               ),
//
//             ),
//             SizedBox(height: 5,),
//             SizedBox(
//               height: 40,
//               width: 440,
//               child:
//
//
//               TextFormField(
//                 style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300),
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.black, width: 100.0),
//                     borderRadius: BorderRadius.circular(100.0),
//
//                   ),
//                   hintText: "city, zip code",
//                   hintStyle: TextStyle(color: Colors.black, fontSize: 18),
//                   prefixIcon: Icon(Icons.search,
//                     color: Colors.black,),
//                 ),
//               ),
//
//             ),
//             SizedBox(height: 20,),
//             Container(
//               child: ListTile(
//
//                 leading: Image(image: NetworkImage("https://media.licdn.com/dms/image/C4E0BAQFRoTuqtdHtuQ/company-logo_200_200/0/1533107713316?e=2147483647&v=beta&t=LbmA2d0xQEGeyYNTOa6pwOSviYYyeQbZ45q8_iPD9pA")),
//                 title: Text('Flutter Developer',style: TextStyle(
//                   fontSize: 25,
//                   color: Colors.black,
//                   fontWeight: FontWeight.bold,
//                 ),),
//
//                 // trailing: Image(image: NetworkImage("")),
//                 subtitle: Text(' Estrats, Islamad',style: TextStyle(
//                   fontSize: 25,
//                   color: Colors.black,
//                 ),),
//
//               ),
//
//             ),
//             Row(
//               children: [Padding(padding: EdgeInsets.all(10.0)),
//                 Icon(Icons.email),
//                 Text("Full-time",style: TextStyle(
//                   fontSize: 22,
//                   color: Colors.black,
//
//                 ),),
//               ],
//             ),
//             SizedBox(height: 20,),
//             Row(
//               children: [Padding(padding: EdgeInsets.all(10.0)),
//                 Icon(Icons.email),
//                 Text("info@estratcom.com",style: TextStyle(
//                   fontSize: 22,
//                   color: Colors.black,
//
//                 ),),
//               ],
//             ),
//             SizedBox(height: 10,),
//             Row(
//               children: [Padding(padding: EdgeInsets.all(10.0)),
//                 Icon(Icons.contacts_rounded),
//                 Text("+92-518486782",style: TextStyle(
//                   fontSize: 22,
//                   color: Colors.black,
//
//                 ),),
//               ],
//             ),
//             SizedBox(height: 20,),
//             const Divider(
//               height: 20,
//               thickness: 2,
//               indent: 20,
//               endIndent: 0,
//               color: Colors.black,
//             ),
//             SizedBox(height: 20,),
//
//             //another
//             Container(
//               child: ListTile(
//                 leading: Image(image: NetworkImage("https://pbs.twimg.com/profile_images/1481852862196031488/-X3icqqU_400x400.jpg")),
//                 title: Text('Blockchain',style: TextStyle(
//                   fontSize: 25,
//                   color: Colors.black,
//                   fontWeight: FontWeight.bold,
//                 ),),
//
//                 subtitle: Text(' VAIVAL Technologies, Lahore ',style: TextStyle(
//                   fontSize: 25,
//                   color: Colors.black,
//                 ),),
//
//               ),
//
//             ),
//             Row(
//               children: [Padding(padding: EdgeInsets.all(10.0)),
//                 Container(
//                   height:25,
//                   width:100,
//                   color: Colors.grey,
//
//                   child: Text(" Full-time",style: TextStyle(
//                     fontSize: 22,
//                     color: Colors.black,
//
//                   ),),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20,),
//             Row(
//               children: [Padding(padding: EdgeInsets.all(10.0)),
//                 Icon(Icons.email),
//                 Text("careers@vaival.com",style: TextStyle(
//                   fontSize: 22,
//                   color: Colors.black,
//
//                 ),),
//               ],
//             ),
//             SizedBox(height: 10,),
//             Row(
//               children: [Padding(padding: EdgeInsets.all(10.0)),
//                 Icon(Icons.contacts_rounded),
//                 Text("+92 42 359 116 85",style: TextStyle(
//                   fontSize: 22,
//                   color: Colors.black,
//
//                 ),),
//
//               ],
//             ),
//             SizedBox(height: 20,),
//             const Divider(
//               height: 20,
//               thickness: 2,
//               indent: 20,
//               endIndent: 0,
//               color: Colors.black,
//             ),
//             SizedBox(height: 20,),
//
//             SizedBox(height: 20,),
//             Container(
//               child: ListTile(
//                 leading: Image(image: NetworkImage("https://media.licdn.com/dms/image/C4E0BAQE-j_D9j6aZOw/company-logo_200_200/0/1639719004779?e=2147483647&v=beta&t=0xJ_6iupueY9AHv-FqwxLFWrI0EixzXPrHe7xL3jCjk")),
//                 title: Text('Marketing',style: TextStyle(
//                   fontSize: 25,
//                   color: Colors.black,
//                   fontWeight: FontWeight.bold,
//                 ),),
//
//                 subtitle: Text(' CYBERMART, Lahore ',style: TextStyle(
//                   fontSize: 25,
//                   color: Colors.black,
//                 ),),
//
//               ),
//
//             ),
//             Row(
//               children: [Padding(padding: EdgeInsets.all(10.0)),
//                 Container(
//                   height:25,
//                   width:100,
//                   color: Colors.grey,
//
//                   child: Text(" Full-time",style: TextStyle(
//                     fontSize: 22,
//                     color: Colors.black,
//
//                   ),),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20,),
//             Row(
//               children: [Padding(padding: EdgeInsets.all(10.0)),
//                 Icon(Icons.email),
//                 Text("waseem@cybermart.com",style: TextStyle(
//                   fontSize: 22,
//                   color: Colors.black,
//
//                 ),),
//               ],
//             ),
//             SizedBox(height: 10,),
//             Row(
//               children: [Padding(padding: EdgeInsets.all(10.0)),
//                 Icon(Icons.contacts_rounded),
//                 Text("+92 333-6666679",style: TextStyle(
//                   fontSize: 22,
//                   color: Colors.black,
//
//                 ),),
//
//               ],
//             ),
//             SizedBox(height: 20,),
//             const Divider(
//               height: 20,
//               thickness: 2,
//               indent: 20,
//               endIndent: 0,
//               color: Colors.black,
//             ),
//             SizedBox(height: 20,),
//
//             SizedBox(height: 20,),
//             Container(
//               child: ListTile(
//                 leading: Image(image: NetworkImage("https://pcilearning.com/wp-content/uploads/2019/12/full_stack_web_2.jpg")),
//                 title: Text('Web Senior Developer',style: TextStyle(
//                   fontSize: 25,
//                   color: Colors.black,
//                   fontWeight: FontWeight.bold,
//                 ),),
//
//                 subtitle: Text(' Tech Stacks, Lahore ',style: TextStyle(
//                   fontSize: 25,
//                   color: Colors.black,
//                 ),),
//
//               ),
//
//             ),
//             Row(
//               children: [Padding(padding: EdgeInsets.all(10.0)),
//                 Container(
//                   height:25,
//                   width:100,
//                   color: Colors.grey,
//
//                   child: Text(" Full-time",style: TextStyle(
//                     fontSize: 22,
//                     color: Colors.black,
//
//                   ),),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20,),
//             Row(
//               children: [Padding(padding: EdgeInsets.all(10.0)),
//                 Icon(Icons.email),
//                 Text("info@hazelsoft.net",style: TextStyle(
//                   fontSize: 22,
//                   color: Colors.black,
//
//                 ),),
//               ],
//             ),
//             SizedBox(height: 10,),
//             Row(
//               children: [Padding(padding: EdgeInsets.all(10.0)),
//                 Icon(Icons.contacts_rounded),
//                 Text("0300-1133805",style: TextStyle(
//                   fontSize: 22,
//                   color: Colors.black,
//
//                 ),),
//
//               ],
//             ),
//             SizedBox(height: 20,),
//             const Divider(
//               height: 20,
//               thickness: 2,
//               indent: 20,
//               endIndent: 0,
//               color: Colors.black,
//             ),
//             SizedBox(height: 20,),
//
//             SizedBox(height: 20,),
//             Container(
//               child: ListTile(
//                 leading: Image(image: NetworkImage("https://i.pinimg.com/280x280_RS/15/46/be/1546be1de19dd0add7a55805a57faace.jpg")),
//                 title: Text('Web Front-end Developer',style: TextStyle(
//                   fontSize: 25,
//                   color: Colors.black,
//                   fontWeight: FontWeight.bold,
//                 ),),
//                 //trailing: Icon(Icons.favorite_border_sharp ,size: 30,),
//                 subtitle: Text(' Focusteck, Lahore ',style: TextStyle(
//                   fontSize: 25,
//                   color: Colors.black,
//                 ),),
//
//               ),
//
//             ),
//             Row(
//               children: [Padding(padding: EdgeInsets.all(10.0)),
//                 Container(
//                   height:25,
//                   width:100,
//                   color: Colors.grey,
//
//                   child: Text(" Full-time",style: TextStyle(
//                     fontSize: 22,
//                     color: Colors.black,
//
//                   ),),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20,),
//             Row(
//               children: [Padding(padding: EdgeInsets.all(10.0)),
//                 Icon(Icons.email),
//                 Text("he@focusteck.com",style: TextStyle(
//                   fontSize: 22,
//                   color: Colors.black,
//
//                 ),),
//               ],
//             ),
//             SizedBox(height: 10,),
//             Row(
//               children: [Padding(padding: EdgeInsets.all(10.0)),
//                 Icon(Icons.contacts_rounded),
//                 Text("042-37870173",style: TextStyle(
//                   fontSize: 22,
//                   color: Colors.black,
//
//                 ),),
//
//               ],
//             ),
//             SizedBox(height: 20,),
//             const Divider(
//               height: 20,
//               thickness: 2,
//               indent: 20,
//               endIndent: 0,
//               color: Colors.black,
//             ),
//             SizedBox(height: 20,),
//
//             SizedBox(height: 20,),
//             Container(
//               child: ListTile(
//                 leading: Image(image: NetworkImage("https://media.licdn.com/dms/image/C4E05AQG81EazRqTkbg/videocover-high/0/1669290051399?e=2147483647&v=beta&t=W2ZCShUz_s0wl2yHD93yWeI6SI2V1JgMKQR5EXraVe0")),
//                 title: Text('C# Developer',style: TextStyle(
//                   fontSize: 25,
//                   color: Colors.black,
//                   fontWeight: FontWeight.bold,
//                 ),),
//                 subtitle: Text(' Optimal Greeks, Lahore ',style: TextStyle(
//                   fontSize: 25,
//                   color: Colors.black,
//                 ),),
//
//               ),
//
//             ),
//             Row(
//               children: [Padding(padding: EdgeInsets.all(10.0)),
//                 Container(
//                   height:25,
//                   width:100,
//                   color: Colors.grey,
//
//                   child: Text(" Full-time",style: TextStyle(
//                     fontSize: 22,
//                     color: Colors.black,
//
//                   ),),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20,),
//             Row(
//               children: [Padding(padding: EdgeInsets.all(10.0)),
//                 Icon(Icons.email),
//                 Text("hoptimalgreeks.com@",style: TextStyle(
//                   fontSize: 22,
//                   color: Colors.black,
//
//                 ),),
//               ],
//             ),
//             SizedBox(height: 10,),
//             Row(
//               children: [Padding(padding: EdgeInsets.all(10.0)),
//                 Icon(Icons.contacts_rounded),
//                 Text("0300-1133805",style: TextStyle(
//                   fontSize: 22,
//                   color: Colors.black,
//
//                 ),),
//
//               ],
//             ),
//             SizedBox(height: 20,),
//             const Divider(
//               height: 20,
//               thickness: 2,
//               indent: 20,
//               endIndent: 0,
//               color: Colors.black,
//             ),
//             SizedBox(height: 20,),
//
//             SizedBox(height: 20,),
//             Container(
//               child: ListTile(
//                 leading: Image(image: NetworkImage("https://s3.amazonaws.com/logos.brandpa.com/uploads/9fa8599a0594eeaaec2d32ba466151e5/UpGenic.png")),
//                 title: Text('Machine Learning',style: TextStyle(
//                   fontSize: 25,
//                   color: Colors.black,
//                   fontWeight: FontWeight.bold,
//                 ),),
//                 trailing: Icon(Icons.favorite_border_sharp ,size: 30,),
//                 subtitle: Text(' upgenics, Lahore ',style: TextStyle(
//                   fontSize: 25,
//                   color: Colors.black,
//                 ),),
//
//               ),
//
//             ),
//             Row(
//               children: [Padding(padding: EdgeInsets.all(10.0)),
//                 Container(
//                   height:25,
//                   width:100,
//                   color: Colors.grey,
//
//                   child: Text(" Full-time",style: TextStyle(
//                     fontSize: 22,
//                     color: Colors.black,
//
//                   ),),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20,),
//             Row(
//               children: [Padding(padding: EdgeInsets.all(10.0)),
//                 Icon(Icons.email),
//                 Text("careers@upgenicsint.com",style: TextStyle(
//                   fontSize: 22,
//                   color: Colors.black,
//
//                 ),),
//               ],
//             ),
//             SizedBox(height: 10,),
//             Row(
//               children: [Padding(padding: EdgeInsets.all(10.0)),
//                 Icon(Icons.contacts_rounded),
//                 Text("+92 3216575008",style: TextStyle(
//                   fontSize: 22,
//                   color: Colors.black,
//
//                 ),),
//
//               ],
//             ),
//             SizedBox(height: 20,),
//             const Divider(
//               height: 20,
//               thickness: 2,
//               indent: 20,
//               endIndent: 0,
//               color: Colors.black,
//             ),
//             SizedBox(height: 20,),
//
//             SizedBox(height: 20,),
//             Container(
//               child: ListTile(
//                 leading: Image(image: NetworkImage("https://marketplace.canva.com/EAFUdYqHyx0/1/0/1280w/canva-green-modern-customer-testimonials-instagram-post-p8RrhQOeAmc.jpg")),
//                 title: Text('QA automation & Testing',style: TextStyle(
//                   fontSize: 25,
//                   color: Colors.black,
//                   fontWeight: FontWeight.bold,
//                 ),),
//                 trailing: Icon(Icons.favorite_border_sharp ,size: 30,),
//                 subtitle: Text(' TESTIMONAILS, Lahore ',style: TextStyle(
//                   fontSize: 25,
//                   color: Colors.black,
//                 ),),
//
//               ),
//
//             ),
//             Row(
//               children: [Padding(padding: EdgeInsets.all(10.0)),
//                 Container(
//                   height:25,
//                   width:100,
//                   color: Colors.grey,
//
//                   child: Text(" Full-time",style: TextStyle(
//                     fontSize: 22,
//                     color: Colors.black,
//
//                   ),),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20,),
//             Row(
//               children: [Padding(padding: EdgeInsets.all(10.0)),
//                 Icon(Icons.email),
//                 Text("info@piecyfer.com",style: TextStyle(
//                   fontSize: 22,
//                   color: Colors.black,
//
//                 ),),
//               ],
//             ),
//             SizedBox(height: 10,),
//             Row(
//               children: [Padding(padding: EdgeInsets.all(10.0)),
//                 Icon(Icons.contacts_rounded),
//                 Text("+92 (423) 548-1131",style: TextStyle(
//                   fontSize: 22,
//                   color: Colors.black,
//
//                 ),),
//
//               ],
//             ),
//             SizedBox(height: 20,),
//             const Divider(
//               height: 20,
//               thickness: 2,
//               indent: 20,
//               endIndent: 0,
//               color: Colors.black,
//             ),
//             SizedBox(height: 20,),
//           ],
//         ),
//
//
//     );
//   }
// }


//about us

class job_about extends StatefulWidget {
  const job_about({Key? key}) : super(key: key);

  @override
  State<job_about> createState() => _job_aboutState();
}

class _job_aboutState extends State<job_about> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [Padding(padding: EdgeInsets.all(20.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("About us ",style: TextStyle(
                    fontSize: 25,
                    fontFamily: "Playfair Display"
                ),)
              ],
            ),
            SizedBox(height: 20,),

            // Container(
            //   height: 200,
            //   width: 200,
            //   color: Colors.grey,
            //   child: Image(image: NetworkImage(""),),
            // ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.grey,
                  child: Image(image: NetworkImage("https://www.wright.edu/sites/www.wright.edu/files/USAC_WeServeYouLogo_2017_0.jpg"),),
                ),
                // Container(
                //   height: 200,
                //   width: 200,
                //   color: Colors.grey,
                //   child: Image(image: NetworkImage(""),),
                // ),
              ],
            ),
            SizedBox(height: 20,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 380,
                  height: 410,

                  color: Colors.white70,

                  child: Text("CV Builder is an online platform that offers a range of tools and resources to help job seekers create compelling resumes and cover letters. Our mission is to simplify the job application process by providing users with a user-friendly interface and a variety of customizable templates that can be tailored to their specific needs."
                      " we understand that the job market is highly competitive and that a well-crafted resume can make all the difference. Our team of experts has developed a range of resources and tools to help job seekers create resumes that stand out from the crowd. We are committed to providing high-quality resources and excellent customer service to our users.",style:
                  TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontFamily: "Playfair Display"
                  ),),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 260,
                  // width: 310,
                  color: Colors.grey,
                  child: Image(image: NetworkImage("https://static.vecteezy.com/system/resources/previews/008/297/514/original/clean-professional-resume-and-cover-letter-layout-template-for-business-job-applications-minimalist-resume-cv-template-resume-design-cv-design-curriculum-vitae-design-template-free-vector.jpg"),),
                ),
                // Container(
                //   height: 200,
                //   width: 200,
                //   color: Colors.grey,
                //   child: Image(image: NetworkImage(""),),
                // ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 260,
                  // width: 310,
                  color: Colors.grey,
                  child: Image(image: NetworkImage("https://elements-cover-images-0.imgix.net/4c7ff8be-8e2d-44ee-8fd6-ebaf6a698906?auto=compress%2Cformat&fit=max&w=900&s=f896c104cbff7e881e527116a46788d3"),),
                ),
                // Container(
                //   height: 200,
                //   width: 200,
                //   color: Colors.grey,
                //   child: Image(image: NetworkImage(""),),
                // ),
              ],
            ),
            SizedBox(height: 20,),

            Row(
              children: [
                SizedBox(width: 20,),
                Text("Contact us",style: TextStyle(
                  fontSize: 30,
                  fontFamily: "Playfair Display",
                ),),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [Padding(padding:EdgeInsets.all(10)),
                Container(
                  height: 30,
                  width: 30,
                  child:Image(image: NetworkImage("https://img.freepik.com/free-icon/telephone-symbol-button_318-41893.jpg"),),

                ),
                SizedBox(width:40,),
                Text("+92-316-4136-893",style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Playfair Display",
                ),)
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [Padding(padding:EdgeInsets.all(10)),
                Container(
                  height: 30,
                  width: 30,
                  child:Image(image: NetworkImage("https://workspace.google.com/static/img/products/png/gmail.png?cache=f50ecb6"),),

                ),
                SizedBox(width:40,),
                Text("iqraiqbalcs@gmail.com",style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Playfair Display",
                ),)
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [Padding(padding:EdgeInsets.all(10)),
                Container(
                  height: 30,
                  width: 30,
                  child:Image(image: NetworkImage("https://www.facebook.com/images/fb_icon_325x325.png"),),

                ),
                SizedBox(width:40,),
                Text("iqraiqbal82",style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Playfair Display",
                ),)
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [Padding(padding:EdgeInsets.all(10)),
                Container(
                  height: 30,
                  width: 30,
                  child:Image(image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Instagram-Icon.png/1200px-Instagram-Icon.png"),),

                ),
                SizedBox(width:40,),
                Text("iqraiqbal82",style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Playfair Display",
                ),)
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [Padding(padding:EdgeInsets.all(10)),
                Container(
                  height: 30,
                  width: 30,
                  child:Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4n_urpJ9XpwOTdzBVbGvactwHrPagYQrTJPYjxfxLGkSyu7nJZVqRVGAeohnPgKMrnKE&usqp=CAU"),),

                ),
                SizedBox(width:40,),
                Text("iqraiqbal2588",style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Playfair Display",
                ),)
              ],
            ),
            SizedBox(height: 20,),
          ],

        ),
    );
  }
}
