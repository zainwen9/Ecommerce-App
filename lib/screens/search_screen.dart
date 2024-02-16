import 'package:flutter/material.dart';

import '/core/constants/constants.dart';
import '/core/widgets/ios_back_button.dart';
import '/widgets/search_text_field.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  static const routeName = '/search-screen';

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late final TextEditingController _searchController;

  @override
  void initState() {
    _searchController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: Constants.defaultPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IosBackButton(
                    onPressed: Navigator.of(context).pop,
                  ),
                ),
                const SizedBox(
                  width: 13,
                ),
                const Text(
                  'Search',
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                )
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SearchTextField(controller: _searchController),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 40, left: 25),
              child: Text(
                'Recent Searches',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
