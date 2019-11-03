import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() =>runApp(App());
class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  Container  myStore(String img, String text, String price){
     return Container(
       width: 160.0,
       child: Card(
         child: Wrap(
           children: <Widget>[
            Image.network(img),
            Text(text),
            Center(
              child: RaisedButton(
              child: Text(price, 
              style: TextStyle(
                color: Colors.white,
              ),
              ),
              onPressed: () {},
              color: Colors.purple,
            ),
            ),
           ],
         ),
       ),
     );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Demo App"),
          backgroundColor: Colors.purple,
          centerTitle: true,
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Center(
                  child: CircleAvatar(
                    backgroundImage: NetworkImage("https://www.gardenia.net/rendition.slider_detail/uploads/guide/1502982102-bc4f30bfe55b0045c/19587224_m.jpg"),
                    radius: 50.0,
                  ),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage("https://www.capecodextension.org/wp-content/uploads/2012/02/flower-photo-free-flower-pics_1600-1000.jpeg"),
                  )
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
             child: ListView(
                scrollDirection: Axis.horizontal,
               children: <Widget>[
                   myStore("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYuhGezjvibq64iOjpWL89dAxbJS5ijKPGYGrLpJjI_Qx7pCUA&s", "Sokphorn", "like flower"),
                   myStore("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYuhGezjvibq64iOjpWL89dAxbJS5ijKPGYGrLpJjI_Qx7pCUA&s", "Sokphorn", "like flower"),
                   myStore("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYuhGezjvibq64iOjpWL89dAxbJS5ijKPGYGrLpJjI_Qx7pCUA&s", "Sokphorn", "like flower"),
                   myStore("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYuhGezjvibq64iOjpWL89dAxbJS5ijKPGYGrLpJjI_Qx7pCUA&s", "Sokphorn", "like flower"),
               ],
             ),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                    myStore("https://assets.eflorist.com/site/EF-22023/assets/products/PHR_/sku4372640.jpg", "Sokphorn", "like flower"),
                    myStore("http://www.birdsandblooms.com/wp-content/uploads/2018/04/pink-shrub-rose-bailey-nurseries-inc.jpg", "Sokphorn", "like flower"),
                    myStore("https://images.fineartamerica.com/images/artworkimages/mediumlarge/1/two-flowers-philip-neelamegam.jpg", "Sokphorn", "like flower"),
                    myStore("https://assets.eflorist.com/assets/products/PHR_/T19E205A.jpg", "Sokphorn", "like flower"),
                    myStore("https://images-na.ssl-images-amazon.com/images/I/61BnT7LnfzL._SX425_.jpg", "Sokphorn", "like flower"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}