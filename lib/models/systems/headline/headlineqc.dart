class HeadLineQC {
  int? parameterNo;
  String? className;
  String? measuredItem;
  int? noOfPosition15L;
  int? noOfPosition20L;
  String? gaugeNo;
  String? actionPoint;

  HeadLineQC(
      {this.parameterNo,
      this.className,
      this.measuredItem,
      this.noOfPosition15L,
      this.noOfPosition20L,
      this.gaugeNo,
      this.actionPoint});

  HeadLineQC.fromJson(Map<String, dynamic> json) {
    parameterNo = json['Parameter No'];
    className = json['Class'];
    measuredItem = json['Measured Item'];
    noOfPosition15L = json['No of position_1.5L'];
    noOfPosition20L = json['No of position_2.0L'];
    gaugeNo = json['Gauge No'];
    actionPoint = json['Action Point'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Parameter No'] = parameterNo;
    data['Class'] = className;
    data['Measured Item'] = measuredItem;
    data['No of position_1.5L'] = noOfPosition15L;
    data['No of position_2.0L'] = noOfPosition20L;
    data['Gauge No'] = gaugeNo;
    data['Action Point'] = actionPoint;
    return data;
  }
}
