abstract class person {
  int id;
  String name;

  person(this.id, this.name);

  @override
  String toString() {
    return 'ID: $id, Name: $name';
  }
}
