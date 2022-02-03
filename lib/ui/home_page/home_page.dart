import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mr_cat/bloc/cat_bloc.dart';
import 'package:mr_cat/res/app_fonts.dart';
import 'package:mr_cat/ui/about_cat_page/about_cat_page.dart';
import 'package:mr_cat/ui/home_page/widgets/cat_tile_widget.dart';
import 'package:mr_cat/ui/layout/main_layout.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainLayout(
      titleAppBar: 'Mr Cat',
      body: BlocProvider(
        create: (context) => CatBloc()..add(GetAllCatsEvent()),
        child: BlocBuilder<CatBloc, CatState>(builder: (context, state) {
          if (state.runtimeType == CatsLoadedState) {
            return ListView.builder(
              itemCount: state.loadedCats!.length,
              itemBuilder: (context, index) => CatTileWidget(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => AboutCatPage(
                        wikiLink: state.loadedCats![index].wikipedia_url,
                        name: state.loadedCats![index].name,
                        origin: state.loadedCats![index].origin,
                        image: state.loadedCats![index].image?.url,
                        temperament: state.loadedCats![index].temperament,
                        shortLegs: state.loadedCats![index].short_legs,
                        dogFriendly: state.loadedCats![index].dog_friendly,
                        childFriendly: state.loadedCats![index].child_friendly,
                      ),
                    ),
                  );
                },
                name: state.loadedCats![index].name,
                origin: state.loadedCats![index].origin,
                wikipediaUrl: state.loadedCats![index].wikipedia_url,
                image: state.loadedCats![index].image?.url,
              ),
            );
          } else if (state.runtimeType == ErrorCatsState) {
            return Center(
              child: Text(
                'Error(',
                style: AppFonts.regular20BlackBold,
              ),
            );
          } else {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Cats are going...',
                    style: AppFonts.regular20BlackBold,
                  ),
                  const SizedBox(height: 20.0),
                  CircularProgressIndicator.adaptive(),
                ],
              ),
            );
          }
        }),
      ),
    );
  }
}
