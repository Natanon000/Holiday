import 'package:flutter/material.dart';
import 'package:projectholiday/hotelpage.dart';
import 'hotel.dart';
import 'db_helper.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _formKey = GlobalKey<FormState>();
  final _SearchController = TextEditingController();
  FocusNode mySearchFocusNode = new FocusNode();
  Future<List<Hoteldb>>? _hotelList;
  int _count = 0;

  initState() {
    super.initState();
    _hotelList = _getFoodRecords();
  }

  Future<List<Hoteldb>> _getFoodRecords() async {
    return await DatabaseHelper.instance.queryAllFood();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                 ElevatedButton(
                  onPressed: () async {
                    int num = _count + 1;
                    String name = 'New food $num';

                    Hoteldb f = await DatabaseHelper.instance.insert(
                        new Hoteldb(
                            'Lion Hotel',
                            '3 Saxton Ave.Monroe, NY 10950',
                            'assets/hotelImage/Hotel3.jpg'));

                    print('The inserted food is ${f.hotelName}');
                    setState(() {
                      _hotelList = _getFoodRecords();
                      print('refresh after insert');
                    });
                  },
                  child: Text('Insert Food'),
                ),
                ElevatedButton(
                  onPressed: () async {
                    await DatabaseHelper.instance.deleteAllHotel();
                    setState(() {
                      _hotelList = _getFoodRecords();
                      print('refresh after delete');
                    });
                  },
                  child: Text('Delete Food'),
                ),
              ],
            ), */
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 50, 30, 0),
                    child: Text(
                      'Let find your ideal place',
                      style: TextStyle(
                          color: Colors.orange,
                          fontFamily: 'Poppins-Bold',
                          fontSize: 20),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                    padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                    height: 40,
                    child: TextFormField(
                      focusNode: mySearchFocusNode,
                      cursorColor: Colors.black87,
                      style: TextStyle(color: Colors.black87),
                      decoration: InputDecoration(
                        labelText: 'Search',
                        labelStyle: TextStyle(
                            color: mySearchFocusNode.hasFocus
                                ? Colors.black87
                                : Colors.orange),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black87)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black87)),
                      ),
                      controller: _SearchController,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: FutureBuilder<List<Hoteldb>>(
                future: _hotelList,
                builder: (context, snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.done:
                      if (snapshot.hasData) {
                        List<Hoteldb> hotelList = snapshot.data!;
                        _count = hotelList.length;
                        if (hotelList.isEmpty) {
                          return _buildNoDataCard();
                        } else {
                          return _buildHotelListView(hotelList);
                        }
                      } else {
                        return _buildLoadingScreen();
                      }
                    default:
                      return _buildLoadingScreen();
                  }
                },
              ), // End FutureBuilder
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLoadingScreen() {
    return Center(
      child: Container(
        width: 50,
        height: 50,
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget _buildNoDataCard() {
    return SizedBox(
      child: new Card(
        child: Center(child: Text('NO SEARCH DATA')),
      ),
      width: double.infinity,
    );
  }

  Widget _buildHotelListView(List<Hoteldb> hotelList) {
    return ListView.builder(
      itemCount: hotelList.length,
      itemBuilder: (BuildContext context, int index) {
        Hoteldb item = hotelList[index];
        return GestureDetector(
          onTap: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Hotel(item))),
          child: new Card(
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
              ),
              leading: CircleAvatar(
                radius: 28,
                backgroundImage: AssetImage(item.img),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.hotelName,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    item.description,
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
