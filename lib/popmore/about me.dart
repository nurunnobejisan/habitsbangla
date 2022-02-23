import 'package:flutter/material.dart';
import 'package:habitsbangla/habit2.0/pages/home_page/home_page.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:email_launcher/email_launcher.dart';

class about extends StatefulWidget {
  const about({Key? key}) : super(key: key);

  @override
  State<about> createState() => _aboutState();
}

class _aboutState extends State<about> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
      //removes the banner
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Widget buildInfo(String imageName, String nextText) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          width: 300.0,
          height: 50.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: FlatButton(
                    onPressed: null,
                    child: Image.asset('images/$imageName.png')),
                width: 64.0,
                height: 64.0,
                padding: const EdgeInsets.only(right: 2.0),
              ),
              Text(
                nextText,
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 15.0,
                    color: Colors.grey[950]),
              )
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      //list view for scrollable
      body: ListView(
        children: <Widget>[
          //top bar icons
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.grey[350],
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => const
                          HomePage(),
                        ));
                  },),
                const Text(
                  'কৌ',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'তুহল',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20.0,
                      color: Colors.grey[350]),
                ),
                const SizedBox(
                  width: 120.0,
                ),

              ],
            ),
          ),
          const SizedBox(
            height: 25.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Row(
              children: <Widget>[
                Text(
                  'আমাদের',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.grey[350],
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0),
                ),
                const SizedBox(width: 10.0),
                Text(
                  'সম্বন্ধে',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.grey[350],
                      fontSize: 25.0),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40.0,
          ),
          Container(
            height: 630.0,
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0),
                    topRight: Radius.circular(30.0))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 25.0,
                ),
                Text(
                  'আমাদের মিশন',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.grey[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0),
                ),
                const SizedBox(
                  height: 35.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    '"আমাদের অ্যাপ্লিকেশনটি একটি উন্নত  গণিত সমাধানকারী ব্যবহার করে পাটিগণিত, বীজগণিত, ত্রিকোণমিতি, ক্যালকুলাস, পরিসংখ্যান এবং অন্যান্য বিষয়সহ বিভিন্ন সমস্যার সাথে সহায়তা প্রদান করে। \n ⚡বিনামূল্যে ধাপে ধাপে ব্যাখ্যা⚡\nদ্রুত সম্পর্কিত ধারণাগুলি সন্ধান করুন। আপনার হোমওয়ার্কের সমস্যাগুলির সাথে সহায়তা পান এবং কৌশলগুলি আয়ত্ত করার ক্ষেত্রে আত্মবিশ্বাস অর্জন করুন অ্যাপটি একটি সাধারণ, বহুমুখী এবং একটি আশ্চর্যজনক সমস্ত এক ইউনিট রূপান্তর ক্যালকুলেটর অ্যাপ যা সারা দিনের বিভিন্ন কাজে ইউনিট ক্যালকুলেটরের দৈনন্দিন ব্যবহারের কথা মাথায় রেখে তৈরি করা হয়েছে।বাচ্চা থেকে প্রাপ্তবয়স্ক সবার জন্য বিনামূল্যে গণিত গেম। আপনার মস্তিষ্ককে প্রশিক্ষিত করার জন্য গণিত অনুশীলন গেমটি বাচ্চা, মেয়ে এবং ছেলে, বাবা-মা এবং দাদা-দাদি সহ প্রাপ্তবয়স্কদের জন্য ডিজাইন করা হয়েছে। বাচ্চাদের এবং সব বয়সের প্রাপ্তবয়স্কদের জন্য গণিত শেখার জন্য একটি চমৎকার শিক্ষামূলক গেমের মাধ্যমে আপনার মস্তিষ্কের শক্তি বাড়ান। 1ম গ্রেড, 2য় গ্রেড, 3য় গ্রেড, 4র্থ গ্রেড, 5ম গ্রেড, বা 6ষ্ঠ গ্রেডের জন্য এক্সট্রা ম্যাথ সহ গণিত গেম বিনামূল্যে এবং অবশ্যই, যেকোনো কিশোর বা প্রাপ্তবয়স্ক যারা তাদের মস্তিষ্ককে প্রশিক্ষণ দিতে এবং তাদের গণিত দক্ষতা উন্নত করতে আগ্রহী! সরল যোগ, বিয়োগ, গুণ এবং ভাগ দিয়ে খেলা এবং অনুশীলন করার জন্য গাণিতিক গণনা। এখন অ্যান্ড্রয়েডে বিনামূল্যে গণিত গেম ডাউনলোড করুন এবং খেলুন! আপনার গণিত দক্ষতা উন্নত করুন বা সংখ্যা গণনা শিখুন। গেমগুলি এত সহজ এবং সহজ এমনকি ছোট বাচ্চারাও এটি খেলতে পারে।💯 "',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.grey[750],
                        fontSize: 13.5),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 350.0,
            decoration: BoxDecoration(
                color: Colors.grey[950],
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(25.0),
                    bottomRight: Radius.circular(25.0))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 15.0,
                ),
                Text(
                  'আমার সম্পর্কে',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.grey[350],
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                ),

                const Padding(
                  padding: EdgeInsets.all(0),
                  child: Text(
                    "🔭 I’m currently working on Flutter\n🌱 I’m currently learning React\n💬 Ask me about Flutter & Dart,\n On my marketing path, I help businesses to enhance their activity through Online Marketing and Online Advertising. My goal is to guarantee business growth by attracting the audience through creativity. For now, I'm fully dedicated to Social Media Management and Classified ads poster. Let's build the world forward. I have helped over 61+ businesses to Grow and Monetize digitally. I would be more than glad to share my most progressive growth strategies to get your brand in front of the right audience. If you have any questions, feel free to contact me.🥰",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 120.0,
                  width: 100.0,
                  child: Image.asset('images/lime.png'),

                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 16.0),
                  child: Text(
                    'Nurunnobe Jomaddder(Jisan)',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.grey[350],
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 120.0,
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    bottomLeft: Radius.circular(25.0),
                    bottomRight: Radius.circular(25.0),
                    topRight: Radius.circular(25.0))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 25.0,
                ),
                Text(
                  'আমার সাথে যোগাযোগ করুন',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.grey[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    height: 35,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          height: 40,
                          width: 60,
                          child: IconButton(
                            onPressed: (
                                ){
                              _launchInWebViewOrVC("https://www.facebook.com/nurunnobejisan");
                            },
                            icon: const FaIcon(FontAwesomeIcons.facebook, color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.deepPurpleAccent,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          height: 40,
                          width: 60,
                          child: IconButton(
                            onPressed: (){
                              launch(
                                  "mailto:jisanjomadder@gmail.com?subjectimamhossen983@");
                            },

                            icon:  const FaIcon(FontAwesomeIcons.envelope), color: Colors.white,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.indigoAccent,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          height: 40,
                          width: 60,
                          child: IconButton(
                            onPressed: (){
                              _launchInWebViewOrVC("https://www.linkedin.com/in/nurunnobejisan");
                            },
                            icon: const FaIcon(FontAwesomeIcons.linkedin), color: Colors.white,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(20)
                          ),
                          height: 40,
                          width: 60,
                          child: IconButton(
                            onPressed: (){
                              _launchInWebViewOrVC("https://github.com/nurunnobejisan");
                            },
                            icon: const FaIcon(FontAwesomeIcons.github), color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.grey[950],
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(25.0),
                    bottomRight: Radius.circular(25.0))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 70.0,
                  width: 350.0,
                  child: Row(
                    children: <Widget>[
                      Builder(
                          builder: (context) {
                            return FlatButton(
                                onPressed: null,
                                child: Image.asset('images/mail.png'));
                          }
                      ),
                      Text(
                        'jisanjomadder@gmail.com',
                        style: TextStyle(color: Colors.grey[350]),
                      )
                    ],
                  ),
                ),
                Text(
                  'BY NJJ',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.grey[350],
                      fontWeight: FontWeight.bold,
                      fontSize: 10.0),
                ),
                const SizedBox(
                  height: 35.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
Future<void> _launchInWebViewOrVC(String url) async {
  if (!await launch(
    url,
    forceSafariVC: true,
    forceWebView: true,
    headers: <String, String>{'my_header_key': 'my_header_value'},
  )) {
    throw 'Could not launch $url';
  }
}

