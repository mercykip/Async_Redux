class QueryMutation {
  // static String addPerson = '''
  //    mutation addPerson($id:String!, $name:String!, $lastName:String!, $age:Int!){
  //        action: insertPerson(id: $id, name: $name, lastName: $lastName, age: $age){
  //           returning {
  //           id
  //           name
  //           lastName
  //           age
  //         }
  //     }
  //     }
  //     ''';

  String addPerson(String id, String name, String lastName, int age) {
    return """
      mutation{
          addPerson(data:{id: "$id", name: "$name", lastName: "$lastName", age: $age}){
            id
            name
            lastName
            age
          }
      }
    """;
  }

  String getAll() {
    return """
      {
        persons{
          id
          name
          lastName
          age
        }
      }
    """;
  }

  String deletePerson(id) {
    return """
      mutation{
        deletePerson(id: "$id"){
          id
        }
      }
    """;
  }

  String editPerson(String id, String name, String lastName, int age) {
    return """
      mutation{
          editPerson(id: "$id", name: "$name", lastName: "$lastName", age: $age){
            name
            lastName
          }
      }
     """;
  }
}
