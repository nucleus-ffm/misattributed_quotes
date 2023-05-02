import 'package:flutter/material.dart';

import 'quote.dart';

class QuoteWidget extends StatefulWidget {
  final Quote quote;
  final String author;
  bool showAuthor = false;
  QuoteWidget({Key? key, required this.quote, required this.author}) : super(key: key);
  @override
  State<QuoteWidget> createState() => _QuoteWidgetState();
}

class _QuoteWidgetState extends State<QuoteWidget> {
  // bool showAuthor = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.orange,
      child: Padding(
        padding: const EdgeInsets.only(top: 50.0, bottom: 50, left: 30, right: 30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("\"${widget.quote.text}\" \n", style: const TextStyle(
              fontSize: 20,
              fontStyle: FontStyle.italic
              ),
            ),
            Text(widget.showAuthor? widget.quote.oriAuthor: widget.author, style: const TextStyle(
                fontSize: 20
              ),
            ),
            IconButton(icon: widget.showAuthor? const Icon(Icons.person) : const Icon(Icons.help), onPressed: () {
              setState(() {
                widget.showAuthor = !widget.showAuthor;
              });
            },)
          ],
        ),
      ),
    );
  }
}

