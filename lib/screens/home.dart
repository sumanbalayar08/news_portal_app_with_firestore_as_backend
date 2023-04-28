import 'package:flutter/material.dart';
import 'package:carousel_nullsafety/carousel_nullsafety.dart';
import 'NewsDashboard.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(backgroundColor: Color(0xFF222240),textStyle: const TextStyle(fontSize: 20));

    return Scaffold(
      appBar: AppBar(
        title: Text("News Portal"),
        backgroundColor: Color(0xFF222240),
      ),
      drawer: Drawer(
        child: Container(
          color: Color(0xFF222240),
          child: ListView(
            children: <Widget>[
              const UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://ichef.bbci.co.uk/news/976/cpsprodpb/63ED/production/_129418552_gettyimages-1459166552.jpg",
                      scale: 1),
                ),
                accountName: Text("Elon Musk"),
                accountEmail: Text("elonmusk123@gmail.com"),
                decoration: BoxDecoration(color: Color(0xFF222240)),
              ),
              ListTile(
                title: Text(
                  "International News",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
                leading: Icon(
                  Icons.newspaper,
                  color: Colors.white,
                ),
              ),
              ListTile(
                title: Text(
                  "Sports News",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
                leading: Icon(
                  Icons.sports_baseball,
                  color: Colors.white,
                ),
              ),
              ListTile(
                title: Text(
                  "National News",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
                leading: Icon(
                  Icons.local_activity,
                  color: Colors.white,
                ),
              ),
              ListTile(
                title: Text(
                  "Political News",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
                leading: Icon(
                  Icons.groups_sharp,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xFF222240),
      body: ListView(
        children: <Widget>[
        Container(
          height: 230.0,
          margin: EdgeInsets.all(5.0),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10.0),
                child: Text(
                  "Latest News",
                  style: TextStyle(fontSize: 18.0, color: Colors.white),
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(height: 6.0),

              Container(
                height: 170.0,
                color:Color(0xFF272B4A),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                        width: 300.0,
                        child: Row(mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Image.network(
                                      "https://thumbs.dreamstime.com/b/environment-earth-day-hands-trees-growing-seedlings-bokeh-green-background-female-hand-holding-tree-nature-field-gra-130247647.jpg",
                                      height: 150.0,
                                      fit: BoxFit.cover)),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,children: <Widget>[
                                Text(
                                  "First Title",
                                  style: TextStyle(
                                      fontSize: 20.0, color: Colors.white),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                      "The brain's plasticity its capacity to rearrange connections between neurons in order to encode and store new information determines our capacity to learn new things and recall new knowledge. Age-related declines in brain plasticity make learning new things more challenging. This is accompanied by a decline in the grey matter, which houses our neurons and causes brain atrophy and more cognitive decline.",
                                      style: TextStyle(fontSize:16.0,color:Colors.white),
                                      maxLines: 5,),
                                ),
                                SizedBox(height: 5.0,),
                                Container(child: Row(children:<Widget>[
                                  Icon(Icons.remove_red_eye_outlined,color:Colors.deepOrange,size:20.0),
                                  SizedBox(width: 5.0,),
                                  Text("Views",style: TextStyle(fontSize: 15.0,color:Colors.white),)
                                ]),)
                              ]),
                            )
                          ],
                        ),
                        ),
                        SizedBox(width: 6.0,),
                        Container(
                      width: 300.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Image.network(
                                    "https://e498rczdjg6.exactdn.com/wp-content/uploads/2022/12/Seljalandsfoss-7.jpg?strip=all&lossy=1&ssl=1",
                                    height: 150.0,
                                    fit: BoxFit.cover)),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "First Title",
                                    style: TextStyle(
                                        fontSize: 20.0, color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "The brain's plasticity its capacity to rearrange connections between neurons in order to encode and store new information determines our capacity to learn new things and recall new knowledge. Age-related declines in brain plasticity make learning new things more challenging. This is accompanied by a decline in the grey matter, which houses our neurons and causes brain atrophy and more cognitive decline.",
                                      style: TextStyle(
                                          fontSize: 16.0, color: Colors.white),
                                      maxLines: 5,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Container(
                                    child: Row(children: <Widget>[
                                      Icon(Icons.remove_red_eye_outlined,
                                          color: Colors.deepOrange, size: 20.0),
                                      SizedBox(
                                        width: 5.0,
                                      ),
                                      Text(
                                        "Views",
                                        style: TextStyle(
                                            fontSize: 15.0,
                                            color: Colors.white),
                                      )
                                    ]),
                                  )
                                ]),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          height:250.0,
          margin: EdgeInsets.all(10.0),
          child: Carousel(
                images: [
                NetworkImage("https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/bltf7695f98c1f01bd9/62cbfb91c9db8842cf76cb5b/GHP_MESSI-BOOTS_16-9.jpg"),
                NetworkImage("https://images.hindustantimes.com/img/2023/01/18/550x309/Prime-Minister-Narendra-Modi---ANI---PIB-_1674010547396.jpg"),],
                dotSize: 4.0,
                dotSpacing: 15.0,
                dotColor: Colors.lightGreenAccent,
                indicatorBgPadding: 5.0,
                borderRadius: true,
              )

          ),
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: ElevatedButton(
                          style: style,
                          onPressed: () {
                            //To print the data of a asynchronous function that returns the future use await keyword, to
                            //Store the data temporarily and then finally print it
                            //List data = await display();
                            //print(data);
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => NewsDashboard(text:"International")),
                            );
                            },
                          child: const Text('International'),
                        ),
                      ),
                      SizedBox(width: 2.0,),
                      Expanded(
                        child: ElevatedButton(
                          style: style,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => NewsDashboard(text:"Political")),
                            );
                          },
                          child: const Text('Political'),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 4.0,),
                Container(
                  child: Row(
                    children: <Widget>[
                      Expanded(child:
                      ElevatedButton(
                        style: style,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => NewsDashboard(text:"National")),
                          );
                        },
                        child: const Text('National'),
                      ),),
                      SizedBox(width: 2.0,),
                      Expanded(
                        child: ElevatedButton(
                          style: style,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => NewsDashboard(text:"Sports")),
                            );
                          },
                          child: const Text('Sports'),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
          ],
      ),
    );
  }
}
