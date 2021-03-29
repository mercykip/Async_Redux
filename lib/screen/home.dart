import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static const routeName = '/home';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.green,
        body: Center(
            child: SingleChildScrollView(
                child: Column(children: <Widget>[
          Text(
            'Async Redux',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontFamily: "Caveat",
              fontSize: 30.0,
              fontWeight: FontWeight.w700,
              color: Colors.white,
              shadows: [
                Shadow(
                  blurRadius: 10.0,
                  color: Colors.blue,
                  offset: Offset(5.0, 5.0),
                ),
              ],
            ),
          ),
        ]))));
  }

// import 'package:flutter/material.dart';
// import 'package:graphql_flutter/graphql_flutter.dart';
// import 'package:registration_async/graphql/client.dart';
// import 'package:registration_async/graphql/graphql_queries/queries_mutation.dart';
// import 'package:registration_async/graphql/model/person.dart';

// class Home extends StatefulWidget {
//   static const routeName = '/home';
//   final Person person;
//   final bool isAdd;

//   const Home({Key key, this.person, this.isAdd}) : super(key: key);

//   @override
//   _HomeState createState() => _HomeState(this.person, this.isAdd);
// }

// class _HomeState extends State<Home> {
//   TextEditingController txtId;
//   TextEditingController txtName;
//   TextEditingController txtAge;
//   GraphqlConfig graphQLConfiguration = GraphqlConfig();
//   QueryMutation addMutation = QueryMutation();

//   final Person person;
//   final bool isAdd;

//   _HomeState(this.person, this.isAdd);

//   @override
//   void initState() {
//     super.initState();
//     if (!this.isAdd) {
//       txtId.text = person.getId();
//       txtName.text = person.getName();
//       txtAge.text = person.getAge().toString();
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
// ignore: todo
//     // TODO: implement build
//     return AlertDialog(
//       title: Text(this.isAdd ? "Add" : "Edit or Delete"),
//       content: Container(
//         child: SingleChildScrollView(
//           child: ConstrainedBox(
//             constraints: BoxConstraints(
//               maxWidth: MediaQuery.of(context).size.width,
//             ),
//             child: Stack(
//               children: <Widget>[
//                 Container(
//                   child: TextField(
//                     maxLength: 5,
//                     controller: txtId,
//                     enabled: this.isAdd,
//                     decoration: InputDecoration(
//                       icon: Icon(Icons.perm_identity),
//                       labelText: "ID",
//                     ),
//                   ),
//                 ),
//                 Container(
//                   padding: EdgeInsets.only(top: 80.0),
//                   child: TextField(
//                     maxLength: 40,
//                     controller: txtName,
//                     decoration: InputDecoration(
//                       icon: Icon(Icons.text_format),
//                       labelText: "Name",
//                     ),
//                   ),
//                 ),
//                 Container(
//                   padding: EdgeInsets.only(top: 240.0),
//                   child: TextField(
//                     maxLength: 2,
//                     controller: txtAge,
//                     keyboardType: TextInputType.number,
//                     decoration: InputDecoration(
//                         labelText: "Age", icon: Icon(Icons.calendar_today)),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//       actions: <Widget>[
//         TextButton(
//           child: Text("Close"),
//           onPressed: () => Navigator.of(context).pop(),
//         ),
//         !this.isAdd
//             ? TextButton(
//                 child: Text("Delete"),
//                 onPressed: () async {
//                   GraphQLClient _client = graphQLConfiguration.clientToQuery();
//                   QueryResult result = await _client.mutate(
//                     MutationOptions(
//                       document: addMutation.deletePerson(txtId.text),
//                     ),
//                   );
//                   if (!result.hasException) Navigator.of(context).pop();
//                 },
//               )
//             : null,
//         TextButton(
//           child: Text(this.isAdd ? "Add" : "Edit"),
//           onPressed: () async {
//             if (txtId.text.isNotEmpty &&
//                 txtName.text.isNotEmpty &&
//                 txtAge.text.isNotEmpty) {
//               if (this.isAdd) {
//                 GraphQLClient _client = graphQLConfiguration.clientToQuery();
//                 QueryResult result = await _client.mutate(
//                   MutationOptions(
//                     document: addMutation.addPerson(
//                       txtId.text,
//                       txtName.text,
//                       int.parse(txtAge.text).toString(),
//                     ),
//                   ),
//                 );
//                 if (!result.hasException) {
//                   txtId.clear();
//                   txtName.clear();

//                   txtAge.clear();
//                   Navigator.of(context).pop();
//                 }
//               } else {
//                 GraphQLClient _client = graphQLConfiguration.clientToQuery();
//                 QueryResult result = await _client.mutate(
//                   MutationOptions(
//                     document: addMutation.editPerson(
//                       txtId.text,
//                       txtName.text,
//                       int.parse(txtAge.text).toString(),
//                     ),
//                   ),
//                 );
//                 if (!result.hasException) {
//                   txtId.clear();
//                   txtName.clear();
//                   txtAge.clear();
//                   Navigator.of(context).pop();
//                 }
//               }
//             }
//           },
//         )
//       ],
//     );
//   }
// }
}
