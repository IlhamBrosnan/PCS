import 'package:flutter/material.dart';
import '/common/my_colors.dart';
import '../widgets/tab_bar.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int tabBarIndex = 4;

  var _scrollController = ScrollController();

  bool isBrush = false;

  @override
  void initState() {
    _scrollController.addListener(() {
      if (_scrollController.position.pixels > 0) {
        isBrush = true;
        setState(() {
        });
      } else {
        isBrush = false;
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        backgroundColor: MyColors.green,
        title: Tab_Bar(),
      ),
      body: Stack(
        children: [
          ListView(
            controller: _scrollController,
            children: [
              Expanded(
                flex:5,
                child:Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.green
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 20.0,),
                      CircleAvatar(
                        radius: 65.0,
                        backgroundImage: NetworkImage('https://static.vecteezy.com/system/resources/previews/005/005/788/original/user-icon-in-trendy-flat-style-isolated-on-grey-background-user-symbol-for-your-web-site-design-logo-app-ui-illustration-eps10-free-vector.jpg'),
                        backgroundColor: Colors.white,
                      ),
                      SizedBox(height: 10.0,),
                      Text('Andika Widyanto',
                      style: TextStyle(
                        color:Colors.white,
                        fontSize: 20.0,
                      )),
                      SizedBox(height: 10.0,),
                      Text('Dosen PalComTech',
                      style: TextStyle(
                        color:Colors.white,
                        fontSize: 15.0,
                      ),),
                      SizedBox(height: 50.0,),
                  ]
                  ),
                ),
              ),
              SizedBox(height: 50.0),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Card(
                        color: Colors.green,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.green,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(12)),
                        ),
                        child: const SizedBox(
                          width: 150,
                          height: 50,
                          child: Center(
                            child: Text('Member Platinum',
                              style: TextStyle(
                                color: Colors.white
                              ),
                            )
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.green,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(12)),
                        ),
                        child: const SizedBox(
                          width: 150,
                          height: 50,
                          child: Center(child: Text('1000 Poin')),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Card(
                        color: Colors.red,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.green,
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(12)),
                        ),
                        child: const SizedBox(
                          width: 150,
                          height: 50,
                          child: Center(
                            child: Text('1000 XP',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )
                          ),
                        ),
                      ),
                    ),
                  ),
                ]
              ),
              InkWell(
                onTap: (){},
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.list_alt,
                          size: 35,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Pesanan",
                          style: TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top:MediaQuery.of(context).size.height*0.25,
            left: 20.0,
            right: 20.0,
            child: Card(
              child: Padding(
                padding:EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child:Column(
                        children: [
                          Text('Jumlah Order',
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 14.0
                          ),),
                          SizedBox(height: 5.0,),
                          Text("100",
                          style: TextStyle(
                            fontSize: 15.0,
                          ),)
                        ],
                      )
                    ),

                    Container(
                      child: Column(
                      children: [
                        Text('Tanggal Lahir',
                          style: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 14.0
                          ),),
                        SizedBox(height: 5.0,),
                        Text('December 21st',
                          style: TextStyle(
                            fontSize: 15.0,
                          ),)
                      ]),
                    ),

                    Container(
                        child:Column(
                          children: [
                            Text('Umur',
                              style: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: 14.0
                              ),),
                            SizedBox(height: 5.0,),
                            Text('29 thn',
                              style: TextStyle(
                                fontSize: 15.0,
                              ),)
                          ],
                        )
                    ),
                  ],
                ),
              )
            )
          ),
        ],
      ),
    );
  }
}