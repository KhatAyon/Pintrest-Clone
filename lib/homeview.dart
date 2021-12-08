import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:transparent_image/transparent_image.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> imageList = [
    'https://images.unsplash.com/photo-1510972527921-ce03766a1cf1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
    'https://images.unsplash.com/photo-1516251193007-45ef944ab0c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
    'https://images.unsplash.com/photo-1527525443983-6e60c75fff46?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=385&q=80',
    'https://images.unsplash.com/photo-1573152143286-0c422b4d2175?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
    'https://images.unsplash.com/photo-1535615615570-3b839f4359be?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
    'https://images.unsplash.com/photo-1518621736915-f3b1c41bfd00?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=393&q=80',
    'https://images.unsplash.com/photo-1529781912305-50e0d2217bef?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80',
    'https://images.unsplash.com/photo-1512945806088-858f67d012ab?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80',
    'https://images.unsplash.com/photo-1503610594381-aed30c818b8e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80',
    'https://images.unsplash.com/photo-1516646227334-6102731f3c25?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
    'https://images.unsplash.com/photo-1422207258071-70754198c4a2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=860&q=80',
    'https://images.unsplash.com/photo-1511029029301-60680e65f7c7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
    '',
    '',
    '',
    '',
    '',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:  Row(
          children: [
            Container(
                  height: 50,
                  width: 65,
                  child: Center(
                    child: Text('All',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        )),
                  ),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                   color: Colors.black,
                  )
                  ),
                  Container(
                    width: 20,
                  ),

                  Container(
                    child: Text('Made By KhatAyon',
                    style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                        ),)
                  ),
          ],
        ),

      ),
      bottomNavigationBar:
          BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home, size: 50, color: Colors.black),
          label: 'hello',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search, size: 50, color: Colors.black),
          label: 'hello',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.message, size: 50, color: Colors.black),
          label: 'hello',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home, size: 50, color: Colors.black),
          label: 'hello',
        )
      ]),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(14),
          child: StaggeredGridView.countBuilder(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            itemCount: imageList.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  showBarModalBottomSheet(
                      context: context,
                      builder: (context) => SizedBox(
                            child: Image.network(
                              imageList[index],
                              fit: BoxFit.cover,
                            ),
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width,
                          ));
                },
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: FadeInImage.memoryNetwork(
                      placeholder: kTransparentImage,
                      image: imageList[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                  //child: Image.network(imageList[index])
                ),
              );
            },
            staggeredTileBuilder: (index) {
              return StaggeredTile.count(1, index.isOdd ? 1.2 : 1.8);
            },
          ),
        ),
      ),
    );
  }
}
