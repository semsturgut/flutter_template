class Customer {
  String id;
  String firstName;
  String lastName;
  List<Contacts> contacts;
  String createDateTime;
  bool active;
  String origin;
  String balance;
  String currency;
  String rentalStatus;
  int bookingCount;
  TotalBookingAmount totalBookingAmount;
  TotalBookingProfit totalBookingProfit;
  BookingRatio bookingRatio;
  List<int> agencies;

  Customer(
      {this.id,
      this.firstName,
      this.lastName,
      this.contacts,
      this.createDateTime,
      this.active,
      this.origin,
      this.balance,
      this.currency,
      this.rentalStatus,
      this.bookingCount,
      this.totalBookingAmount,
      this.totalBookingProfit,
      this.bookingRatio,
      this.agencies});

  Customer.fromJson(Map<String, dynamic> json) {
    if (json["id"] is String) this.id = json["id"];
    // if(json["firstName"] is String)
    this.firstName = json["firstName"] ?? "Default";
    // if(json["lastName"] is String)
    this.lastName = json["lastName"] ?? "Default";
    if (json["contacts"] is List)
      this.contacts = json["contacts"] == null
          ? null
          : (json["contacts"] as List)
              .map((e) => Contacts.fromJson(e))
              .toList();
    if (json["createDateTime"] is String)
      this.createDateTime = json["createDateTime"];
    if (json["active"] is bool) this.active = json["active"];
    if (json["origin"] is String) this.origin = json["origin"];
    if (json["balance"] is String) this.balance = json["balance"];
    if (json["currency"] is String) this.currency = json["currency"];
    if (json["rentalStatus"] is String)
      this.rentalStatus = json["rentalStatus"];
    if (json["bookingCount"] is int) this.bookingCount = json["bookingCount"];
    if (json["totalBookingAmount"] is Map)
      this.totalBookingAmount = json["totalBookingAmount"] == null
          ? null
          : TotalBookingAmount.fromJson(json["totalBookingAmount"]);
    if (json["totalBookingProfit"] is Map)
      this.totalBookingProfit = json["totalBookingProfit"] == null
          ? null
          : TotalBookingProfit.fromJson(json["totalBookingProfit"]);
    if (json["bookingRatio"] is Map)
      this.bookingRatio = json["bookingRatio"] == null
          ? null
          : BookingRatio.fromJson(json["bookingRatio"]);
    if (json["agencies"] is List)
      this.agencies =
          json["agencies"] == null ? null : List<int>.from(json["agencies"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["id"] = this.id;
    data["firstName"] = this.firstName;
    data["lastName"] = this.lastName;
    if (this.contacts != null)
      data["contacts"] = this.contacts.map((e) => e.toJson()).toList();
    data["createDateTime"] = this.createDateTime;
    data["active"] = this.active;
    data["origin"] = this.origin;
    data["balance"] = this.balance;
    data["currency"] = this.currency;
    data["rentalStatus"] = this.rentalStatus;
    data["bookingCount"] = this.bookingCount;
    if (this.totalBookingAmount != null)
      data["totalBookingAmount"] = this.totalBookingAmount.toJson();
    if (this.totalBookingProfit != null)
      data["totalBookingProfit"] = this.totalBookingProfit.toJson();
    if (this.bookingRatio != null)
      data["bookingRatio"] = this.bookingRatio.toJson();
    if (this.agencies != null) data["agencies"] = this.agencies;
    return data;
  }
}

class BookingRatio {
  int cancelledCount;
  int successfulCount;

  BookingRatio({this.cancelledCount, this.successfulCount});

  BookingRatio.fromJson(Map<String, dynamic> json) {
    if (json["cancelledCount"] is int)
      this.cancelledCount = json["cancelledCount"];
    if (json["successfulCount"] is int)
      this.successfulCount = json["successfulCount"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["cancelledCount"] = this.cancelledCount;
    data["successfulCount"] = this.successfulCount;
    return data;
  }
}

class TotalBookingProfit {
  String amount;
  String currency;

  TotalBookingProfit({this.amount, this.currency});

  TotalBookingProfit.fromJson(Map<String, dynamic> json) {
    if (json["amount"] is String) this.amount = json["amount"];
    if (json["currency"] is String) this.currency = json["currency"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["amount"] = this.amount;
    data["currency"] = this.currency;
    return data;
  }
}

class TotalBookingAmount {
  String amount;
  String currency;

  TotalBookingAmount({this.amount, this.currency});

  TotalBookingAmount.fromJson(Map<String, dynamic> json) {
    if (json["amount"] is String) this.amount = json["amount"];
    if (json["currency"] is String) this.currency = json["currency"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["amount"] = this.amount;
    data["currency"] = this.currency;
    return data;
  }
}

class Contacts {
  String type;
  Value value;
  bool primary;
  bool preferred;
  bool verified;

  Contacts(
      {this.type, this.value, this.primary, this.preferred, this.verified});

  Contacts.fromJson(Map<String, dynamic> json) {
    if (json["type"] is String) this.type = json["type"];
    if (json["value"] is Map)
      this.value = json["value"] == null ? null : Value.fromJson(json["value"]);
    this.primary = json["primary"] ?? false;
    if (json["preferred"] is bool) this.preferred = json["preferred"];
    if (json["verified"] is bool) this.verified = json["verified"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["type"] = this.type;
    if (this.value != null) data["value"] = this.value.toJson();
    data["primary"] = this.primary;
    data["preferred"] = this.preferred;
    data["verified"] = this.verified;
    return data;
  }
}

class Value {
  String number;
  String address;

  Value({this.number});

  Value.fromJson(Map<String, dynamic> json) {
    if (json["number"] is String) this.number = json["number"];

    if (json["address"] is String) this.address = json["address"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["number"] = this.number;
    return data;
  }
}
