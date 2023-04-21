import 'package:flutter/material.dart';
import 'package:hearthstone_app/customs/custom_label.dart';
import 'package:hearthstone_app/utils/mock.dart';

import '../utils/colors.dart';
import '../utils/dimensions.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.corPrincipal,
      // backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Bem Vindo, Samir',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: const [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/avatar_example.png'),
          )
        ],
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(
        horizontal: CustomDimensions.overallScreenBodyDistance,
      ),
      children: [
        _buildCardCreateDeck(),
        _buildListHeroes(),
        _buildMyDecks(),
      ],
    );
  }

  Widget _buildCardCreateDeck() {
    return Container(
      // height: MediaQuery.of(context).size.height * 0.30,
      height: 220,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage('assets/images/create_deck.png'),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.circular(24),
      ),
    );
  }

  Widget _buildListHeroes() {
    return Column(
      children: [
        const CustomLabel(
          title: 'Heróis',
          seeAll: false,
        ),
        Container(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: listHeroes.length,
            itemBuilder: ((context, index) {
              return Column(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    margin: EdgeInsets.only(
                      right: 10.0,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(
                          '${listHeroes[index]['icon_hero']}',
                        ),
                      ),
                    ),
                  ),
                  // Text(
                  //   '${listHeroes[index]['name_hero']}',
                  //   style: const TextStyle(
                  //     color: Colors.white,
                  //   ),
                  // )
                ],
              );
            }),
          ),
        ),
      ],
    );
  }

  Widget _buildMyDecks() {
    return Column(
      children: [
        CustomLabel(
          title: 'Meus decks',
          seeAll: true,
        ),
        Container(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: listHeroes.length,
            itemBuilder: ((context, index) {
              return Container();
            }),
          ),
        ),
      ],
    );
  }
}
