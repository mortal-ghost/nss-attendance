class Student {
  late String rollNumber;
  late String name;
  late String emailId;
  late String? branch;
  late int? year;
  late String? contactNumber;
  late int unitNumber;

  Student({
    required this.rollNumber,
    required this.name,
    required this.emailId,
    this.branch,
    this.year,
    this.contactNumber,
    required this.unitNumber,
  });
}