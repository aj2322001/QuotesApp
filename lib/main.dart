import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quotes.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
      home: Quote(),
    ));

class Quote extends StatefulWidget {
  List<Quotes> defquotes = [
    Quotes(
        author: 'Hattie McDaniel', text: 'I did my best, and God did the rest.'),
    Quotes(author: 'Art Buchwald', text: 'Whether it\'s the best of times or the worst of times, it\'s the only time we\'ve got.'),
    Quotes(author: 'Frank Sinatra', text: 'The best revenge is massive success.'),
    Quotes(author: 'Fred Durst', text: 'That\'s your best friend and your worst enemy - your own brain.'),
    Quotes(author: 'Marilyn Monroe', text: 'I\'m selfish, impatient, and a little insecure. I make mistakes, I\'m out of control, and at times hard to handle. But if you can\'t handle me at my worst, then you sure as hell don\'t deserve me at my best.'),
    Quotes(author: 'Willa Cather', text: 'There are some things you learn best in calm, and some in storm.'),
    Quotes(author: 'George Herbert', text: 'Living well is the best revenge.'),
    Quotes(author: 'Steve Prefontaine', text: 'To give anything less than your best, is to sacrifice the gift.'),
    Quotes(author: 'Duke Ellington', text: 'A problem is a chance for you to do your best.'),
    Quotes(author: 'Peter Drucker', text: 'The best way to predict the future is to create it.'),
  ];

  @override
  _QuoteState createState() => _QuoteState();
}

class _QuoteState extends State<Quote> {
  var quotes = Quote().defquotes;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Quote\'s',
          style: TextStyle(
            letterSpacing: 5.0,
            fontSize: 40.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[700],
      ),
      body: ListView(
        children: quotes
            .map((quote) => QuoteCard(
                  quote: quote,
                  delete: () {
                    setState(() {
                      quotes.remove(quote);
                    });
                  },
                ))
            .toList(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: resetBtn,
        backgroundColor: Colors.grey,
      ),
      backgroundColor: Colors.grey[200],
    );
  }

  void resetBtn() {
    setState(() {
      quotes = Quote().defquotes;
    });
  }
}
