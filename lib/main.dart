import 'package:flutter/material.dart';
import 'package:missattributed_quotes/quote.dart';
import 'dart:math';

import 'quoteWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jokemaster',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Jokemaster3000'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _position = 0;
  int _ranAuthor = 0;
  var random = Random();

  @override
  Widget build(BuildContext context) {


    String testFunction(name, test) {
      return "hello $name";
    }

    testFunction("test", "test");
    // the list of jokes to display
    List<Quote> quote = [
      Quote(
          text:
              "Frage nicht, was dein Land für dich tun kann, frage was du für dein Land tun kannst.",
          oriAuthor: 'John F. Kennedy'),
      Quote(
          text:
              "Willst du den Charakter eines Menschen erkennen, so gib ihm Macht.",
          oriAuthor: 'Abraham Lincoln'),
      Quote(
          text: "Dies ist mein Leib, der für euch hingegeben wird.",
          oriAuthor: 'Jesus'),
      Quote(text: "Ich denke, also bin ich.", oriAuthor: 'René Descartes'),
      Quote(
          text:
              "Da hat das rote Pferd sich einfach umgekehrt und hat mit seinem Schwanz die Fliege abgewehrt.",
          oriAuthor: 'Kinderlied'),
      Quote(
          text:
              "Der Vorteil der Klugheit besteht darin, dass man sich dumm stellen kann. Das Gegenteil ist schon schwieriger.",
          oriAuthor: 'Kurt Tucholsky'),
      Quote(
          text:
              "Alles, was wir sind, ist das Resultat von dem, was wir gedacht haben.",
          oriAuthor: 'Buddha'),
    ];

    List<String> authors = [
      "Kim Jong-il",
      "Roland Koch",
      "David Hasselhoff",
      "Gina Wild",
      "Bastian Schweinsteiger",
      "Johann Wolfgang von Goethe",
      "Til Schweiger"
    ];

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: QuoteWidget(
          quote: quote[_position],
          author: authors[_ranAuthor],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            // erhöhe den Zähler um eins um den nächsten Witz anzuzeigen
            _position = random.nextInt(quote.length);
            _ranAuthor = random.nextInt(quote.length);
            // print(_position);
          });
        },
        tooltip: 'next joke',
        child: const Icon(Icons.skip_next),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
