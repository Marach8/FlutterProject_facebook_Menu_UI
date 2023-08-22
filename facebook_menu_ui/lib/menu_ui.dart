import 'package:flutter/material.dart';
//import 'package:flutter_icons_null_safety/flutter_icons_null_safety.dart';
import 'package:google_fonts/google_fonts.dart';


class MenuUI extends StatefulWidget{
  const MenuUI({super.key});

  @override 
  State<MenuUI> createState() => UI();
}

class UI extends State<MenuUI> {
  @override  
  Widget build(BuildContext context){

    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    Widget appIcon (IconData icon){
      return Tab(
        child: IconButton(
          onPressed: (){},
          icon: Icon(
            icon,
            size: 30,
            weight: 100,
          )
        ),
      );
    }

    Widget card (String text, IconData icon){
      return  Card(                      
        elevation: 5,                     
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(h*0.01)
        ),
        child: Stack(
          children: [
            Positioned(
              left: h*0.023, bottom: h*0.05, child: Icon(icon),
            ),
            Positioned(
              left: h*0.02, bottom:h*0.02,
              child: Text(text, style: GoogleFonts.getFont('Roboto', fontWeight: FontWeight.w600,fontSize: 15,))
            )
          ],          
        )
      );
    }

    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(h*0.075),
          child: AppBar(
            backgroundColor: Colors.white,
            bottom: TabBar(
              tabs: [
                appIcon(Icons.home_outlined),
                appIcon(Icons.people_outlined),
                appIcon(Icons.tv_outlined),
                appIcon(Icons.home_outlined),
                appIcon(Icons.notifications_sharp),
                appIcon(Icons.menu),
              ]
            )
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
          padding: EdgeInsets.all(h*0.015),
          color: const Color.fromARGB(255, 242, 243, 245),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Menu',
                      style: GoogleFonts.getFont(
                        'Roboto',
                        fontSize: h*0.03,
                        fontWeight: FontWeight.w700
                      )
                    ),SizedBox(width: w*0.51),
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 230, 231, 235),
                      child: IconButton(
                        color: Colors.black,
                        onPressed: (){},
                        icon: const Icon(Icons.settings)
                      ),
                    ),
                    SizedBox(width: w*0.015),
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 230, 231, 235),
                      child: IconButton(
                        color: Colors.black,
                        onPressed: (){},
                        icon: const Icon(
                          Icons.search_outlined,
                          size: 30,
                          weight: 700
                        )
                      ),
                    )
                  ]
                ),SizedBox(height:h*0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage('assets/katie.png'),                      
                    ),
                    SizedBox(width:w*0.06),
                    Column(
                      children: [
                        Text(
                          'Ajah Emmanuel',
                          style: GoogleFonts.getFont('Roboto', fontSize: h*0.023, fontWeight: FontWeight.w700)
                        ),
                        SizedBox(height: h*0.009),
                        Text(
                          'See your profile',
                          style: GoogleFonts.getFont(
                            'Roboto',
                            fontSize: h*0.018,
                            fontWeight: FontWeight.w300
                          )
                        )
                      ],
                    )
                  ]
                ),
                SizedBox(height:h*0.006),
                Divider(thickness: h*0.0005, color: Colors.black26),                
                GridView(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: (w*0.19)/(h*0.045)
                  ),
                  children: [
                    card('Feeds', Icons.feed),
                    card('Find friends', Icons.people_outlined),
                    card('Groups', Icons.groups_3_outlined),
                    card('Marketplace', Icons.house_outlined),
                    card('Video', Icons.video_camera_front),
                    card('Memories', Icons.memory_outlined),
                    card('Saved', Icons.save_sharp),
                    card('Pages', Icons.pages_sharp), 
                    card('Reels', Icons.park_sharp),
                    card('Events', Icons.event_sharp),
                  ]
                ),
                SizedBox(height:h*0.01),
                SizedBox(
                  width: w*0.93,                
                  child: ElevatedButton(
                    onPressed: (){},
                     style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(31, 117, 116, 117)
                      ),
                      elevation: MaterialStatePropertyAll(0)
                    ),
                    child: const Text(
                      'See more', style: TextStyle(color: Colors.black)
                    ),
                  ),
                ),
                Divider(thickness: h*0.0005, color: Colors.black26),
                SizedBox(
                  height: h*0.05,                  
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: const Color.fromARGB(255, 193, 202, 211),
                        radius: h*0.021,
                        child: const Icon(Icons.question_mark_sharp, color: Color.fromARGB(255, 13, 23, 62))
                      ),
                      TextButton(
                        onPressed:() {},
                        child: Text(
                          'Help & support',
                          style: GoogleFonts.getFont(
                            'Roboto',
                            fontSize:17,
                            color: Colors.black,
                            fontWeight: FontWeight.w500
                          )
                        )
                      ),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_drop_down_sharp))
                    ]
                  ),
                ),
                Divider(thickness: h*0.0005, color: Colors.black26),
              ],
            ),
          )
        )
      )
    );
  }
}


