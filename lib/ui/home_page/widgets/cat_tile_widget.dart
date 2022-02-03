import 'package:flutter/material.dart';
import 'package:mr_cat/res/app_fonts.dart';
import 'package:mr_cat/res/consts.dart';
import 'package:url_launcher/url_launcher.dart';

class CatTileWidget extends StatelessWidget {
  final String name;
  final String? origin;
  final String? wikipediaUrl;
  final String? image;
  final Function() onTap;

  const CatTileWidget({
    required this.onTap,
    required this.name,
    required this.origin,
    required this.wikipediaUrl,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Card(
        elevation: 4.0,
        child: ListTile(
          tileColor: Colors.grey.withOpacity(0.1),
          title: Text(name),
          subtitle: Text(origin ?? 'Homeless'),
          onTap: onTap,
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(5.0),
            child: Hero(
              tag: name,
              child: image != null
                  ? SizedBox(
                height: 80.0,
                width: 80.0,
                    child: FadeInImage.assetNetwork(
                        image: image!,
                        fit: BoxFit.cover,
                        placeholder: AssetsImages.waiting_cat,
                        imageErrorBuilder: (_, __, ___) {
                          return SizedBox(
                            height: 80.0,
                            width: 80.0,
                            child: Align(
                              alignment: Alignment.center,
                              child:  Text(
                                Consts.black_cat,
                                style: AppFonts.regular30Black,
                              ),
                            ),
                          );
                        },
                      ),
                  )
                  : SizedBox(
                      height: 80.0,
                      width: 80.0,
                      child: Align(
                        alignment: Alignment.center,
                        child:  Text(
                          Consts.black_cat,
                          style: AppFonts.regular30Black,
                        ),
                      ),
                    ),
            ),
          ),
          trailing: wikipediaUrl != null
              ? IconButton(
                  icon: const Icon(Icons.link),
                  onPressed: () async {
                    await launch(wikipediaUrl!);
                  },
                )
              : const SizedBox(),
        ),
      ),
    );
  }
}
