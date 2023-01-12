class HeadLineQC1 {
  int? parameterNo;
  String? measuredItem;
  int? noOfPosition15L;
  int? noOfPosition20L;
  String? gaugeNo;
  String? actionPoint;

  HeadLineQC1(
      {this.parameterNo,
      this.measuredItem,
      this.noOfPosition15L,
      this.noOfPosition20L,
      this.gaugeNo,
      this.actionPoint});

  HeadLineQC1.fromJson(Map<String, dynamic> json) {
    parameterNo = json['Parameter No'];
    measuredItem = json['Measured Item'];
    noOfPosition15L = json['No of position_1.5L'];
    noOfPosition20L = json['No of position_2.0L'];
    gaugeNo = json['Gauge No'];
    actionPoint = json['Action Point'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Parameter No'] = parameterNo;
    data['Measured Item'] = measuredItem;
    data['No of position_1.5L'] = noOfPosition15L;
    data['No of position_2.0L'] = noOfPosition20L;
    data['Gauge No'] = gaugeNo;
    data['Action Point'] = actionPoint;
    return data;
  }
}
