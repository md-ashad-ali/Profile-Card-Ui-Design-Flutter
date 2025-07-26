import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});


  @override
  Widget build(BuildContext context) {
     var mqheight = MediaQuery.of(context).size.height;
     var mqweight = MediaQuery.of(context).size.width;

 final CustomGradent = LinearGradient(
   begin: Alignment.topLeft,
     end: Alignment.bottomLeft,
   colors: [
     const Color(0xFFFED9FF).withOpacity(0.5),
     const Color(0xFFFF6EB9).withOpacity(1.00)
   ]
 );
    return Scaffold(

      body: Container(
        width: mqweight,
        height: mqheight,
        decoration: BoxDecoration(
          gradient: CustomGradent
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            SizedBox(height: 40,),

            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(120),
                    color: Colors.white
                  ),
                ),
                Container(
                  height: 130,
                  width: 130,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage('images/bosprofile.jpg'),fit: BoxFit.cover)  //images/projectscreenshort.PNG
                  ),
                ),

              ],
            ),
            SizedBox(height: 20,),
            Text('Md Ashad Ali',style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text('ontrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old',style: TextStyle(
                color: Colors.black,
                fontSize: 13,
                fontWeight: FontWeight.w400,

              ),
              textAlign: TextAlign.center,),
            ),
            SizedBox(height: 90,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                      child:Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xFF030C47),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(child: Text('Following',style: TextStyle(color: Colors.white))),
                      )
                  ),

                  SizedBox(width: 15,),

                  Expanded(
                      child:Container(
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color(0xFF030C47),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(child: Text('Profile Edit',style: TextStyle(color: Colors.white))),
                      )
                  ),
                ],
              ),
            )


          ],
        ),
      ),

    );
  }
}
