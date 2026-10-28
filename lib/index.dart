import 'package:flutter/material.dart';

  // class StarRate extends StatefulWidget {
  //   final int maxStars;
  //   final int rating;
  //   final ValueChanged<int>? onRatingChanged;

  //   const StarRate({
  //     Key? key,
  //     this.maxStars = 5,
  //     this.rating = 0,
  //     this.onRatingChanged,
  //   }) : super(key: key);

  //   @override
  //   Index createState() => Index();
  // }

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  int rate = 0;
  int reviews = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Aranda'),
          centerTitle: true,
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              color: const Color.fromARGB(255, 246, 246, 246),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images.jpeg',
                    fit: BoxFit.fill,
                  ),

                  SizedBox(height: 10,),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                        ),
                        'Strawberry Pavlova'
                      ),

                      SizedBox(height: 25,),

                      Text(
                        style: TextStyle(
                          fontSize: 16,

                        ),
                        'Pavlova is a meringue-based dessert named after the Russian\n' 
                        'ballerina Anna Pavlova. Pavlova featuresa crisp crust and soft,\n' 
                        'light inside, topped with fruit and whipped cream'
                      ),
                    ],
                  ),

                  SizedBox(height: 30,),

                  buildStar(rate, reviews),

                  SizedBox(height: 50,),

                  buildRowTabs()

                  

                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildStar(int rating, int reviews) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 1; i <= 5; i++)
          GestureDetector(
            onTap: () {
              setState(() {
                this.rate = i;
              });
            },
            child: Icon(
                  i <= rating ? Icons.star : Icons.star_border,
                  color: Colors.amber,
                ),
          ),

        SizedBox(width: 10,),

        Text(
          '$reviews Reviews',
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[600],
          ),
        ),

        SizedBox(width: 10,),

        
      ],
    );
  }

  Widget buildRowTabs() => Row(
            children: [
              Column(
                children: [
                  Icon(Icons.timer, color: Colors.amber, size: 30,),
                  SizedBox(height: 10,),
                    Text(
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                      'PREP',
                    ),

                    Text(
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                      ),
                      '25 min',
                    ),
                        
                  ],
                ),

              SizedBox(width: 60,),

              Column(
                children: [
                  Icon(Icons.restaurant, color: Colors.amber, size: 30,),
                  SizedBox(height: 10,),
                    Text(
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                      'COOK',
                    ),

                    Text(
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                      ),
                      '1 gr',
                    ),
                        
                  ],
                ),  

                SizedBox(width: 60,),

                Column(
                children: [
                  Icon(Icons.person, color: Colors.amber, size: 30,),
                  SizedBox(height: 10,),
                    Text(
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                      'FEEDS',
                    ),

                    Text(
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                      ),
                      '4-6 hrs',
                    ),
                        
                  ],
                ),
              ],
            );

}