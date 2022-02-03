import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mr_cat/res/app_fonts.dart';
import 'package:mr_cat/res/consts.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutCatPage extends StatelessWidget {
  final String name;
  final String origin;
  final String? image;
  final String temperament;
  final int shortLegs;
  final int dogFriendly;
  final int childFriendly;
  final String? wikiLink;

  const AboutCatPage({
    required this.wikiLink,
    required this.name,
    required this.origin,
    required this.image,
    required this.temperament,
    required this.shortLegs,
    required this.dogFriendly,
    required this.childFriendly,
  });

  @override
  Widget build(BuildContext context) {
    print(temperament);
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 300.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    name,
                  ),
                ),
              ),
              background: Hero(
                tag: name,
                child: image != null
                    ? ShaderMask(
                        shaderCallback: (rect) {
                          return LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.black,
                              Colors.transparent,
                            ],
                          ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                        },
                        blendMode: BlendMode.dstIn,
                        child: FadeInImage.assetNetwork(
                          image: image!,
                          fit: BoxFit.contain,
                          placeholder: AssetsImages.waiting_cat,
                          imageErrorBuilder: (_, __, ___) {
                            return Text(
                              Consts.black_cat,
                              style: AppFonts.regular100Black,
                            );
                          },
                        ),
                      )
                    : Align(
                        alignment: Alignment.center,
                        child: Text(
                          Consts.black_cat,
                          style: AppFonts.regular100Black,
                        ),
                      ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Temperament:',
                      style: AppFonts.regular20Black,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: temperament
                          .split(', ')
                          .map(
                            (e) => Text(
                              e,
                              style: AppFonts.regular20Black,
                            ),
                          )
                          .toList(),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
              ),
              const SizedBox(height: 10.0),
              _barBuilder(
                name: 'Short legs',
                points: shortLegs,
              ),
              _barBuilder(
                name: 'Dog friendly',
                points: dogFriendly,
              ),
              _barBuilder(
                name: 'Child friendly',
                points: childFriendly,
              ),
              wikiLink != null
                  ? IconButton(
                      icon: const Icon(Icons.link),
                      onPressed: () async {
                        await launch(wikiLink!);
                      },
                    )
                  : const SizedBox(),
            ]),
          ),
        ],
      ),
    );
  }

  Widget _barBuilder({
    required int points,
    required String name,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            name,
            style: AppFonts.regular20Black,
          ),
          const Spacer(),
          Container(
            height: 10.0,
            width: 10.0 * (points + 1),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.amber,
            ),
          ),
          const SizedBox(width: 10),
          Container(
            width: 20.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black),
            ),
            child: Text(
              points.toString(),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
