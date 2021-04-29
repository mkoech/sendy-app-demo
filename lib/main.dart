import 'package:flutter/material.dart';

void main() => runApp(SendyApp());

class SendyApp extends StatelessWidget {
  @override Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: 'SendyDemo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
          title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: <Widget>[
            Text (
                'Welcome to SendyDemo',
                style: TextStyle(
                  fontSize: 20.0,
                ) ,),
            RaisedButton(
              textColor: Colors.white60,
              color: Colors.blue,
              child: Text('Create Product Catalogue'),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder:
                    (context) => ProductCatalogue()));
              },
            )
          ],
        ),
      ),
    );
}


class ProductCatalogue extends StatelessWidget {
  @override Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          title: Text('Product Catalogue'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:<Widget> [
              Text(
                  'Hey Sendyer, Create a new item :)',
              style: TextStyle(
                fontSize: 24.0,
                fontStyle: FontStyle.italic
              ),
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Name'
                ),
              ),

              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Description'
                ),
              ),

              RaisedButton(
                textColor: Colors.white60,
                color: Colors.blue,
                child: Text('Add Item Variants'),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder:
                      (context) => ProductVariants()));
            },
          ),
              RaisedButton(
                textColor: Colors.white60,
                color: Colors.blue,
                child: Text('Add Item to Store'),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder:
                      (context) => Store()));
                },
              )
            ],
        ),
      ),
    );
  }
}

class ProductVariants extends StatelessWidget {
  @override Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Variants'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:<Widget> [

            TextFormField(
              decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Price'
              ),
            ),

            TextFormField(
              decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Code'
              ),
            ),

            TextFormField(
              decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Color'
              ),
            ),

            TextFormField(
              decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Size'
              ),
            ),

            RaisedButton(
              textColor: Colors.white60,
              color: Colors.blue,
              child: Text('Submit'),
              onPressed: () {

                Navigator.of(context).push(MaterialPageRoute(builder:
                    (context) => Store()));
              },
            ),

          ],
        ),
      ),
    );
  }
}

class Store extends StatelessWidget {
  @override Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Store Items'),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children: <Widget>[
          Text (
            'Item Added!',
            style: TextStyle(
              fontSize: 20.0,
            ) ,),
          RaisedButton(
            textColor: Colors.white60,
            color: Colors.blue,
            child: Text('Add another Item'),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder:
                  (context) => ProductCatalogue()));
            },
          )
        ],
      ),
    ),
  );
}