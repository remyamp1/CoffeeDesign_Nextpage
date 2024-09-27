import 'package:flutter/material.dart';

class DescrptionScreen extends StatelessWidget{
  final String imagepath;
  final String name;
  final String price;
  DescrptionScreen(
    {required this.imagepath,
    required this.name,
    required this.price});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:Colors.black,
      body:Padding(
        padding: const EdgeInsets.all(20),
        child: Column 
        (crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          
          children:[
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Stack(
                children: [
             Container(
              
                         height: 400,
                         width: double.infinity,
                         
                         decoration: BoxDecoration(image: DecorationImage(image:
                          AssetImage(imagepath),
                         fit: BoxFit.cover,
                       
                         
                         ),),
                         ),
                         Positioned(
                          top: 10,
                          left: 10,
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,color: Colors.green,
                            ),
                            child:GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(Icons.arrow_back,color: Colors.white,size: 30,
                              ),
                            ),
                          ),
                         ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Row(
              children: [
                Text(name,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                Spacer(),
                Icon(Icons.favorite,color: Colors.red,size: 35),   
              ],
            ),
            Row(
              children: [
                Text("Drizzled with Caramel",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),
                ),
                SizedBox(width: 20),
              
                Icon(Icons.star,color: Colors.yellow,),

                Text("4.5",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 10),
        
    
            Text(''' A single espresso shot poured into hot foamy milk,with the surface topped with mildly sweetened cocoa powder and drizzied with scrumptions caramel syrup...Read More ''',

                     style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),
                     maxLines: 4,
                     overflow: TextOverflow.ellipsis),
                     SizedBox(height: 15),
      
              Text("Choice of milk",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text("Oat milk",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                      
                    ),
                    
                  ),
                  SizedBox(width: 15),
                  Container(
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Color.fromARGB(225, 194, 195, 196),
                    ),
                    ),
child: Center(
  child: Text("Soy milk",style: TextStyle(fontSize:20, color: Color.fromARGB(255, 194, 195, 196),)))), 
  SizedBox(width: 15),
  Container(
    height: 40,
    width: 120,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
    border: Border.all(color: Color.fromARGB(225, 194, 195, 196),

    ),
    ),
  
  child:Center(
    child: Text("Almond milk",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Color.fromARGB(225, 194, 195, 196),
    )))),
  
          
        
          ],
        ),
        SizedBox(height: 50),
        
      
              
   Row(
            children: [
              Icon(Icons.currency_rupee,color:Colors.white,size: 35,
              ),
              
                 Text(price,style: TextStyle(fontSize:40,color:Color.fromARGB(225, 194, 195, 196),
                 )),
                 SizedBox(width: 25),
                 
                 Container(
                  height: 70,
                  width: 200,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                  
                  color:Color.fromARGB(225, 194, 195, 196),
                 ),
        
                 child: Center(
                  child: Text("BUY NOW",style: TextStyle(fontSize: 20, color: Colors.black,)))),
              
          ],
        
          
          ),
          ],
        ),
       ),
      ); 
       }
       }     
        
      
      


    