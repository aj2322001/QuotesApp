import 'package:flutter/material.dart';
import 'quotes.dart';

class QuoteCard extends StatelessWidget {
  final Quotes quote;
  final Function delete;
  QuoteCard({this.quote, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(12.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.grey[600],
                letterSpacing: 1.0,
                wordSpacing: 3.0,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(
              height: 6.0,
            ),
            Row(
              children: [
                Text(
                  quote.author,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey[900],
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: delete,
                )
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          ],
          crossAxisAlignment: CrossAxisAlignment.stretch,
        ),
      ),
    );
  }
}
