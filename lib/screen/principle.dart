// import 'package:flutter/material.dart';
// import 'package:graphql_flutter/graphql_flutter.dart';
// import 'package:registration_async/graphql/client.dart';
// import 'package:registration_async/graphql/graphql_queries/queries_mutation.dart';
// import 'package:registration_async/graphql/model/person.dart';

// import 'home.dart';

// class Principal extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => _Principal();
// }

// class _Principal extends State<Principal> {
//   List<Person> listPerson = List<Person>();
//   GraphqlConfig graphQLConfiguration = GraphqlConfig();

//   void fillList() async {
//     QueryMutation queryMutation = QueryMutation();
//     GraphQLClient _client = graphQLConfiguration.clientToQuery();
//     QueryResult result = await _client.query(
//       QueryOptions(
//         document: queryMutation.getAll(),
//       ),
//     );
//     if (!result.hasException) {
//       for (var i = 0; i < result.data["persons"].length; i++) {
//         setState(() {
//           listPerson.add(
//             Person(
//               result.data["persons"][i]["id"],
//               result.data["persons"][i]["name"],
//               result.data["persons"][i]["lastName"],
//               result.data["persons"][i]["age"],
//             ),
//           );
//         });
//       }
//     }
//   }

//   @override
//   void initState() {
//     super.initState();
//     fillList();
//   }

//   void _addPerson(context) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         Home alertDialogWindow = new Home(isAdd: true);
//         return alertDialogWindow;
//       },
//     ).whenComplete(() {
//       listPerson.clear();
//       fillList();
//     });
//   }

//   void _editDeletePerson(context, Person person) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         Home alertDialogWindow = new Home(isAdd: false, person: person);
//         return alertDialogWindow;
//       },
//     ).whenComplete(() {
//       listPerson.clear();
//       fillList();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Example"),
//         actions: <Widget>[
//           IconButton(
//             icon: Icon(Icons.add_circle_outline),
//             onPressed: () => _addPerson(context),
//             tooltip: "Insert new person",
//           ),
//         ],
//       ),
//       body: Stack(
//         children: <Widget>[
//           Container(
//             width: MediaQuery.of(context).size.width,
//             child: Text(
//               "Person",
//               textAlign: TextAlign.center,
//               style: TextStyle(fontSize: 30.0),
//             ),
//           ),
//           Container(
//             padding: EdgeInsets.only(top: 50.0),
//             child: ListView.builder(
//               itemCount: listPerson.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   selected: listPerson == null ? false : true,
//                   title: Text(
//                     "${listPerson[index].getName()}",
//                   ),
//                   onTap: () {
//                     _editDeletePerson(context, listPerson[index]);
//                   },
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
