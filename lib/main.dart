import 'dart:io';

import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MaterialApp(
  home: ResumeApp(),
));

class ResumeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Wisdom Okubo Resume'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/okubowisdom.png'),
                radius: 50.0,
              ),
            ),
            Divider(
              height: 40.0,
              color: Colors.grey[800],
            ),
            Center(
            child: Text(
              'FULL NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
              ),
             SizedBox(height: 10.0),
            Center(
            child: Text(
              'Wisdom Okubo',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold
              ),
            ),),
            SizedBox(height: 30.0),
            Center(
            child: Text(
              'SLACK USERNAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),),
            SizedBox(height: 10.0),
            Center(
            child: Text(
              '@Wisdom.dev',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold
              ),
            ),),
            SizedBox(height: 30.0),
            Center(
            child: Text(
              'BIO',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),),
            SizedBox(height: 10.0),
            Center(
            child: Text(
              'Entrepreneur and Mobile Developer',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold
              ),
            ),),
            SizedBox(height: 30.0),
            Center(
            child: Text(
              'WHAT I CAN DO',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),),
            SizedBox(height: 10.0),
            Center(
            child: Text(
              'I Create Functional and User-friendly Apps',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold
              ),
            ),),
            SizedBox(height: 30.0),

            Row(
                 children: [
                  Expanded(
                    child: Column(
                    children: <Widget>[
                      InkWell(
                        child: ElevatedButton(
                          onPressed: () => launchUrl(Uri.parse('https://mailto:wisdomokubo@gmail.com')),
                          child: Text(
                            'Email',
                            // style: TextStyle(decoration: TextDecoration.underline, color: Colors.blue),
                          ),
                        ),
                      ),
                    ],
                ),
                  ),
                  Expanded(
                    child: Column(
                    children: <Widget>[
                      InkWell(
                        child: ElevatedButton(
                          onPressed: () => launchUrl(Uri.parse('https://www.github.com/wisdomokubo')),
                          child: Text(
                            'Github',
                            // style: TextStyle(decoration: TextDecoration.underline, color: Colors.blue),
                          ),
                        ),
                      ),
                    ],
                ),
                  ),
                  Expanded(
                    child: Column(
                    children: <Widget>[
                      InkWell(
                        child: ElevatedButton(
                          onPressed: () => launchUrl(Uri.parse('https://www.linkedin.com/in/wisdom-okubo-067422135')),
                          child: Text(
                            'Linkedin',
                            // style: TextStyle(decoration: TextDecoration.underline, color: Colors.blue),
                          ),
                        ),
                      ),
                    ],
                ),
                  ),
                  Expanded(
                    child: Column(
                    children: <Widget>[
                      InkWell(
                        child: ElevatedButton(
                          onPressed: () => launchUrl(Uri.parse('https://www.instagram.com/wisdomokubo')),
                          child: Text(
                            'Instagram',
                            // style: TextStyle(decoration: TextDecoration.underline, color: Colors.blue),
                          ),
                        ),
                      ),
                    ],
                ),
                  ),
                  
              ],
            ),

             ],
        ),
      ),
    );
  }
}

