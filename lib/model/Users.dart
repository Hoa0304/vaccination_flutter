import 'dart:convert';

class Customer {
  final int CID;
  final String Name;
  final String Email;
  final int Phone;
  final String Address;
  Customer({
    required this.CID,
    required this.Name,
    required this.Email,
    required this.Phone,
    required this.Address,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'CID': CID});
    result.addAll({'Name': Name});
    result.addAll({'Email': Email});
    result.addAll({'Phone': Phone});
    result.addAll({'Address': Address});

    return result;
  }

  factory Customer.fromMap(Map<String, dynamic> map) {
    return Customer(
      CID: map['CID']?.toInt() ?? 0,
      Name: map['Name'] ?? '',
      Email: map['Email'] ?? '',
      Phone: map['Phone']?.toInt() ?? 0,
      Address: map['Address'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Customer.fromJson(String source) =>
      Customer.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Customer(CID: $CID, Name: $Name, Email: $Email, Phone: $Phone, Address: $Address)';
  }
}
