
class Job {
  String title;
  String companyName;

  Job({this.title, this.companyName});

  Job.fromJson(Map<String, dynamic> json) {
    if(json["title"] is String)
      this.title = json["title"];
    if(json["company_name"] is String)
      this.companyName = json["company_name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["title"] = this.title;
    data["company_name"] = this.companyName;
    return data;
  }
}