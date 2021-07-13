import 'dart:convert';

import 'package:aduaba_fresh/models/product.dart';

import 'package:aduaba_fresh/views/details_screen.dart';
import 'package:aduaba_fresh/views/discover/search_bar/pk_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'package:http/http.dart' as http;



class SearchScreen extends StatefulWidget {

  final List<Product> product;
  @override
  _SearchScreenState createState() => _SearchScreenState();

  const SearchScreen(this.product);
}

class _SearchScreenState extends State<SearchScreen> {

  List<Product> product = [];

  void getProduct() async {
    var response = await http.get(Uri.parse("https://teamaduaba.azurewebsites.net/getProducts"));

    if (response.statusCode == 200) {
      List<dynamic> decoded = json.decode(response.body);
      List<Product> product = decoded.map((e) => Product.fromJson(e)).toList();
      
      /*setState(() { 
      product = allproduct;
      });*/
     
    // print(response.body);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    getProduct();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return Scaffold(
      
      body: SafeArea(
          bottom: false,
          child: Container(
            color: Color(0xFFE5E5E5),
            child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: searchBar(context)),
          )),
    );
  }

  // TODO: CountrySearchBar
  Widget searchBar(BuildContext context) {
    return SearchBar<Product>(
      //searchBarPadding: EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 5),
      headerPadding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
      optionHeaderPadding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
      searchresultheader: Container(child: Text('Latest Search', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700, fontStyle: FontStyle.normal, color: Color(0xFF10151A)),),), 
      searchresultoptionheader: Container(child: Text('Popular Searches', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700, fontStyle: FontStyle.normal, color: Color(0xFF10151A)),),),
      nosearchresultheader: Container(child: Text('No Search Result', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700, fontStyle: FontStyle.normal, color: Color(0xFF10151A)),),),
      nosearchresultoptionheader: Container(child: Text('Related Searches', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700, fontStyle: FontStyle.normal, color: Color(0xFF10151A)),),),
      listPadding: EdgeInsets.only(left: 10, right: 10),
      hintText: "Search product",
      hintStyle: TextStyle(
        color: Color(0xFFBABABA), fontSize: 15, fontWeight: FontWeight.w400, fontStyle: FontStyle.normal
      ),
      textStyle: TextStyle(
        color: Color(0xFFBABABA),
        fontWeight: FontWeight.normal,
      ),
      iconActiveColor: Color(0xFFBABABA),
      shrinkWrap: true,
      mainAxisSpacing: 5,
      crossAxisSpacing: 5,
      suggestions: widget.product,
      //cancellationWidget: Text("Cancel"),
      minimumChars: 1,
//      placeHolder: Center(
//        child: Padding(
//          padding: const EdgeInsets.only(left: 10, right: 10),
//          child: Text(searchMessage, textAlign: TextAlign.center, style: CustomTextStyle.textSubtitle1(context).copyWith(fontSize: 14),),
//        ),
//      ),
      emptyWidget: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
          child: Text("We currently dont have what you’re looking for.  Why not try out similar products"),
        ),

      emptyWidgetOption: (Product product, int index) {
        return productGenerateEmptyWidgetOptionColumn(product, index);
      },
      
      onError: (error) {
        return Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Text("$error", textAlign: TextAlign.center),
          ),
        );
      },
      loader: Center(
        child: LoadingIndicator(),
      ),
      onSearch: getProductSearchWithSuggestion, /// CountrySearch  // if want to search with API then use thi ----> getCountryListFromApi
      onCancelled: () {
        Navigator.pop(context);
      },
      buildSuggestion: (Product product, int index) {
        return productGenerateColumn(product, index);
      },
      onItemFound: (Product product, int index) {
        return productGenerateColumn(product, index);
      },

      onItemFoundOption: (Product product, int index) {
        return productGenerateOnItemFoundOptionColumn(product, index);
      },
    );
  }

  Widget productGenerateColumn(Product product, int index) =>  Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
              left: 0, top: 0, right: 0, bottom: 0),
            child: ListTile(
              leading: Icon(Icons.timelapse,
              ),
              trailing: IconButton(
                icon: Icon(Icons.clear),
                onPressed: (){}
              ),
              title: Text(
                product.name,
                maxLines: 1,
              ),
              onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                          image: product.imageUrl,
                          name: product.name,
                          description: product.shortDescription,
                          amount: product.amount.toString(),
                          instock: product.inStock.toString(),
                          longDescription: product.longDescription,
                          
                        ),
                      ),
                    ),          
            ),
          ),
      ],
    //),
  );

   Widget productGenerateEmptyWidgetOptionColumn(Product product, int index) =>  Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
              left: 0, top: 0, right: 0, bottom: 0),
            child: ListTile(
              leading: Icon(Icons.timelapse,
              ),
              trailing: IconButton(
                icon: Icon(Icons.clear),
                onPressed: (){}
              ),
              title: Text(
                product.name,
                maxLines: 1,
              ),
              onTap: () {}/*=> Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                          product: product,
                        ),
                      ),
                    ),*/          
            ),
          ),
      ],
    //),
  );

  Widget productGenerateOnItemFoundOptionColumn(Product product, int index) =>  Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
              left: 0, top: 0, right: 0, bottom: 0),
            child: ListTile(
              leading: Icon(Icons.timelapse,
              ),
              trailing: IconButton(
                icon: Icon(Icons.clear),
                onPressed: (){}
              ),
              title: Text(
                product.name,
                maxLines: 1,
              ),
              onTap: () {} /*=> Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                          product: product,
                        ),
                      ),
                    ),*/          
            ),
          ),
      ],
    //),
  );



//  Future<List<CountryModel>> getCountryListFromApi(String search) async {
//    var _param = {
//      "search_value":search,
//      "user_token": "",
//    };
//    print("Resident search = $search");
//    if (search == "empty") return [];
//    if (search == "error") throw Error();
//
//    var response = await ApiManager.instance
//        .postAPICall(BASE_URL_Local + get_search_country_list, _param, context);
//    var data = response["data"];
//    List<CountryModel> countryModelList = [];
//    for (var u in data) {
//      CountryModel countryModel = CountryModel(
//        u["countryName"],
//        u["countryCode"]
//      );
//      countryModelList.add(countryModel);
//    }
//    return countryModelList;
//  }

  Future<List<Product>> getProductSearch(String search) async {
    print("Item search = $search");
    if (search == "empty") return [];
    if (search == "error") throw Error();
    List<Product> filterProductList = [];

    widget.product.forEach((Product) {
      if (Product.shortDescription
          .toLowerCase()
          .contains(search.toLowerCase()) ||
          Product.name
              .toLowerCase()
              .contains(search.toLowerCase()))
        filterProductList.add(Product);
    });

    return filterProductList;
  }

  Future<List<Product>> getProductSearchWithSuggestion(
      String search) async {
    print("Item search = $search");
    if (search == "empty") return [];
    if (search == "error") throw Error();
    List<Product> filterProductList = [];

    widget.product.forEach((Product) {
      if (Product.shortDescription
          .toLowerCase()
          .contains(search.toLowerCase()) ||
          Product.name
              .toLowerCase()
              .contains(search.toLowerCase()))
        filterProductList.add(Product);
    });

    final suggestionList =
    search.isEmpty ? widget.product : filterProductList;

    return suggestionList;
  }
}

class LoadingIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: const CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Colors.deepPurple),
      ),
    );
  }
}

