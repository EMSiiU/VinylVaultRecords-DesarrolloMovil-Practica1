import 'package:flutter/material.dart';
import 'package:practica1/components/vinyl_title.dart';
import 'package:practica1/models/cart.dart';
import 'package:practica1/models/vinyl.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  //POSIBLE SOLUCIÓN
  // final List<Vinyl> vinyls = const [
  //   Vinyl(
  //     title: 'Random Access Memories',
  //     artist: 'Daft Punk',
  //     price: '850',
  //     imagePath: 'lib/images/daft-punk-random-access-memories-vinyl-2.png',
  //     description: 'Edicion conmemorativa en doble vinil.',
  //   ),
  // ];

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => 
      Column(
        children: [
          //search bar
          Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Search', style: TextStyle(color: Colors.grey)),
                const Icon(Icons.search),
              ],
            ),
          ),

          //message
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            child: Text(
              'Music plays. Memories remain.',
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),

          //hot picks
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  'Hot Picks',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                const Text(
                  'See all',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
                ),
              ],
            ),
          ),

          //list
          const SizedBox(height: 10),

          Expanded(
            child: ListView.builder(
              //itemCount: vinyls.length,
              //itemCount: 4,
              itemCount: value.getVinylList().length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                //get list
                Vinyl vinyl = value.getVinylList()[index];
                return VinylTitle(
                  vinyl: vinyl,
                );
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 25, right: 25),
            child: Divider(color: Colors.white,),
          )
        ],
      ),
    );
  }
}
