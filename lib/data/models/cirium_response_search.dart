class CiriumResponseSearch {
  List<CiriumResponseSearchResult>? data;

  CiriumResponseSearch({this.data});

  CiriumResponseSearch.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <CiriumResponseSearchResult>[];
      json['data'].forEach((v) {
        data!.add(CiriumResponseSearchResult.fromJson(v));
      });
    }
  }
}

class CiriumResponseSearchResult {
  Value? value;
  bool? stringLabel;
  ObjectLabel? objectLabel;

  CiriumResponseSearchResult({this.value, this.stringLabel, this.objectLabel});

  CiriumResponseSearchResult.fromJson(Map<String, dynamic> json) {
    value = json['value'] != null ? new Value.fromJson(json['value']) : null;
    stringLabel = json['stringLabel'];
    objectLabel = json['objectLabel'] != null
        ? new ObjectLabel.fromJson(json['objectLabel'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.value != null) {
      data['value'] = this.value!.toJson();
    }
    data['stringLabel'] = this.stringLabel;
    if (this.objectLabel != null) {
      data['objectLabel'] = this.objectLabel!.toJson();
    }
    return data;
  }
}

class Value {
  String? sIndex;
  String? sType;
  String? sId;
  double? dScore;
  Source? sSource;

  Value({this.sIndex, this.sType, this.sId, this.dScore, this.sSource});

  Value.fromJson(Map<String, dynamic> json) {
    sIndex = json['_index'];
    sType = json['_type'];
    sId = json['_id'];
    dScore = json['_score'];
    sSource =
        json['_source'] != null ? new Source.fromJson(json['_source']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_index'] = this.sIndex;
    data['_type'] = this.sType;
    data['_id'] = this.sId;
    data['_score'] = this.dScore;
    if (this.sSource != null) {
      data['_source'] = this.sSource!.toJson();
    }
    return data;
  }
}

class Source {
  int? flightId;
  String? hubUrl;
  int? classification;
  String? keywords;
  String? lastUpdated;
  String? creator;
  String? creationDate;
  String? carrier;
  String? carrierIata;
  String? carrierIcao;
  String? carrierName;
  String? flightNumber;
  String? status;
  List<Codeshares>? codeshares;
  String? departureAirport;
  String? departureTimeZone;
  String? departureAirportName;
  String? departureAirportCity;
  String? arrivalAirport;
  String? arrivalTimeZone;
  String? arrivalAirportName;
  String? arrivalAirportCity;
  String? departureDateTime;
  String? publishedDeparture;
  String? scheduledGateDeparture;
  String? arrivalDateTime;
  String? publishedArrival;
  String? scheduledGateArrival;
  String? departureTerminal;
  String? arrivalTerminal;
  String? scheduledEquipment;
  String? recordStatus;
  String? id;
  String? wetlease;
  String? tailNumber;
  String? departure;
  String? arrival;
  int? delayMinutesDeparture;
  int? delayMinutesArrival;
  String? estimatedGateDeparture;
  String? actualGateDeparture;
  String? scheduledRunwayDeparture;
  String? estimatedRunwayDeparture;
  String? actualRunwayDeparture;
  String? estimatedGateArrival;
  String? actualGateArrival;
  String? scheduledRunwayArrival;
  String? estimatedRunwayArrival;
  String? actualRunwayArrival;
  String? departureGate;
  String? arrivalGate;
  String? baggage;
  String? actualEquipment;
  String? actualEquipmentIcao;

  Source(
      {this.flightId,
      this.hubUrl,
      this.classification,
      this.keywords,
      this.lastUpdated,
      this.creator,
      this.creationDate,
      this.carrier,
      this.carrierIata,
      this.carrierIcao,
      this.carrierName,
      this.flightNumber,
      this.status,
      this.codeshares,
      this.departureAirport,
      this.departureTimeZone,
      this.departureAirportName,
      this.departureAirportCity,
      this.arrivalAirport,
      this.arrivalTimeZone,
      this.arrivalAirportName,
      this.arrivalAirportCity,
      this.departureDateTime,
      this.publishedDeparture,
      this.scheduledGateDeparture,
      this.arrivalDateTime,
      this.publishedArrival,
      this.scheduledGateArrival,
      this.departureTerminal,
      this.arrivalTerminal,
      this.scheduledEquipment,
      this.recordStatus,
      this.id,
      this.wetlease,
      this.tailNumber,
      this.departure,
      this.arrival,
      this.delayMinutesDeparture,
      this.delayMinutesArrival,
      this.estimatedGateDeparture,
      this.actualGateDeparture,
      this.scheduledRunwayDeparture,
      this.estimatedRunwayDeparture,
      this.actualRunwayDeparture,
      this.estimatedGateArrival,
      this.actualGateArrival,
      this.scheduledRunwayArrival,
      this.estimatedRunwayArrival,
      this.actualRunwayArrival,
      this.departureGate,
      this.arrivalGate,
      this.baggage,
      this.actualEquipment,
      this.actualEquipmentIcao});

  Source.fromJson(Map<String, dynamic> json) {
    flightId = json['flightId'];
    hubUrl = json['hubUrl'];
    classification = json['classification'];
    keywords = json['keywords'];
    lastUpdated = json['lastUpdated'];
    creator = json['creator'];
    creationDate = json['creationDate'];
    carrier = json['carrier'];
    carrierIata = json['carrierIata'];
    carrierIcao = json['carrierIcao'];
    carrierName = json['carrierName'];
    flightNumber = json['flightNumber'];
    status = json['status'];
    if (json['codeshares'] != null) {
      codeshares = <Codeshares>[];
      json['codeshares'].forEach((v) {
        codeshares!.add(new Codeshares.fromJson(v));
      });
    }
    departureAirport = json['departureAirport'];
    departureTimeZone = json['departureTimeZone'];
    departureAirportName = json['departureAirportName'];
    departureAirportCity = json['departureAirportCity'];
    arrivalAirport = json['arrivalAirport'];
    arrivalTimeZone = json['arrivalTimeZone'];
    arrivalAirportName = json['arrivalAirportName'];
    arrivalAirportCity = json['arrivalAirportCity'];
    departureDateTime = json['departureDateTime'];
    publishedDeparture = json['publishedDeparture'];
    scheduledGateDeparture = json['scheduledGateDeparture'];
    arrivalDateTime = json['arrivalDateTime'];
    publishedArrival = json['publishedArrival'];
    scheduledGateArrival = json['scheduledGateArrival'];
    departureTerminal = json['departureTerminal'];
    arrivalTerminal = json['arrivalTerminal'];
    scheduledEquipment = json['scheduledEquipment'];
    recordStatus = json['recordStatus'];
    id = json['id'];
    wetlease = json['wetlease'];
    tailNumber = json['tailNumber'];
    departure = json['departure'];
    arrival = json['arrival'];
    delayMinutesDeparture = json['delayMinutesDeparture'];
    delayMinutesArrival = json['delayMinutesArrival'];
    estimatedGateDeparture = json['estimatedGateDeparture'];
    actualGateDeparture = json['actualGateDeparture'];
    scheduledRunwayDeparture = json['scheduledRunwayDeparture'];
    estimatedRunwayDeparture = json['estimatedRunwayDeparture'];
    actualRunwayDeparture = json['actualRunwayDeparture'];
    estimatedGateArrival = json['estimatedGateArrival'];
    actualGateArrival = json['actualGateArrival'];
    scheduledRunwayArrival = json['scheduledRunwayArrival'];
    estimatedRunwayArrival = json['estimatedRunwayArrival'];
    actualRunwayArrival = json['actualRunwayArrival'];
    departureGate = json['departureGate'];
    arrivalGate = json['arrivalGate'];
    baggage = json['baggage'];
    actualEquipment = json['actualEquipment'];
    actualEquipmentIcao = json['actualEquipmentIcao'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['flightId'] = this.flightId;
    data['hubUrl'] = this.hubUrl;
    data['classification'] = this.classification;
    data['keywords'] = this.keywords;
    data['lastUpdated'] = this.lastUpdated;
    data['creator'] = this.creator;
    data['creationDate'] = this.creationDate;
    data['carrier'] = this.carrier;
    data['carrierIata'] = this.carrierIata;
    data['carrierIcao'] = this.carrierIcao;
    data['carrierName'] = this.carrierName;
    data['flightNumber'] = this.flightNumber;
    data['status'] = this.status;
    if (this.codeshares != null) {
      data['codeshares'] = this.codeshares!.map((v) => v.toJson()).toList();
    }
    data['departureAirport'] = this.departureAirport;
    data['departureTimeZone'] = this.departureTimeZone;
    data['departureAirportName'] = this.departureAirportName;
    data['departureAirportCity'] = this.departureAirportCity;
    data['arrivalAirport'] = this.arrivalAirport;
    data['arrivalTimeZone'] = this.arrivalTimeZone;
    data['arrivalAirportName'] = this.arrivalAirportName;
    data['arrivalAirportCity'] = this.arrivalAirportCity;
    data['departureDateTime'] = this.departureDateTime;
    data['publishedDeparture'] = this.publishedDeparture;
    data['scheduledGateDeparture'] = this.scheduledGateDeparture;
    data['arrivalDateTime'] = this.arrivalDateTime;
    data['publishedArrival'] = this.publishedArrival;
    data['scheduledGateArrival'] = this.scheduledGateArrival;
    data['departureTerminal'] = this.departureTerminal;
    data['arrivalTerminal'] = this.arrivalTerminal;
    data['scheduledEquipment'] = this.scheduledEquipment;
    data['recordStatus'] = this.recordStatus;
    data['id'] = this.id;
    data['wetlease'] = this.wetlease;
    data['tailNumber'] = this.tailNumber;
    data['departure'] = this.departure;
    data['arrival'] = this.arrival;
    data['delayMinutesDeparture'] = this.delayMinutesDeparture;
    data['delayMinutesArrival'] = this.delayMinutesArrival;
    data['estimatedGateDeparture'] = this.estimatedGateDeparture;
    data['actualGateDeparture'] = this.actualGateDeparture;
    data['scheduledRunwayDeparture'] = this.scheduledRunwayDeparture;
    data['estimatedRunwayDeparture'] = this.estimatedRunwayDeparture;
    data['actualRunwayDeparture'] = this.actualRunwayDeparture;
    data['estimatedGateArrival'] = this.estimatedGateArrival;
    data['actualGateArrival'] = this.actualGateArrival;
    data['scheduledRunwayArrival'] = this.scheduledRunwayArrival;
    data['estimatedRunwayArrival'] = this.estimatedRunwayArrival;
    data['actualRunwayArrival'] = this.actualRunwayArrival;
    data['departureGate'] = this.departureGate;
    data['arrivalGate'] = this.arrivalGate;
    data['baggage'] = this.baggage;
    data['actualEquipment'] = this.actualEquipment;
    data['actualEquipmentIcao'] = this.actualEquipmentIcao;
    return data;
  }
}

class Codeshares {
  String? carrier;
  String? trafficRestriction;
  String? flightNumber;

  Codeshares({this.carrier, this.trafficRestriction, this.flightNumber});

  Codeshares.fromJson(Map<String, dynamic> json) {
    carrier = json['carrier'];
    trafficRestriction = json['trafficRestriction'];
    flightNumber = json['flightNumber'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['carrier'] = this.carrier;
    data['trafficRestriction'] = this.trafficRestriction;
    data['flightNumber'] = this.flightNumber;
    return data;
  }
}

class ObjectLabel {
  String? searchResultMainText;
  String? searchSubText;
  String? inputDisplayValue;
  SecondaryResultText? secondaryResultText;

  ObjectLabel(
      {this.searchResultMainText,
      this.searchSubText,
      this.inputDisplayValue,
      this.secondaryResultText});

  ObjectLabel.fromJson(Map<String, dynamic> json) {
    searchResultMainText = json['searchResultMainText'];
    searchSubText = json['searchSubText'];
    inputDisplayValue = json['inputDisplayValue'];
    secondaryResultText = json['secondaryResultText'] != null
        ? new SecondaryResultText.fromJson(json['secondaryResultText'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['searchResultMainText'] = this.searchResultMainText;
    data['searchSubText'] = this.searchSubText;
    data['inputDisplayValue'] = this.inputDisplayValue;
    if (this.secondaryResultText != null) {
      data['secondaryResultText'] = this.secondaryResultText!.toJson();
    }
    return data;
  }
}

class SecondaryResultText {
  String? mainIconName;
  Primary? primary;
  Primary? secondary;

  SecondaryResultText({this.mainIconName, this.primary, this.secondary});

  SecondaryResultText.fromJson(Map<String, dynamic> json) {
    mainIconName = json['mainIconName'];
    primary =
        json['primary'] != null ? new Primary.fromJson(json['primary']) : null;
    secondary = json['secondary'] != null
        ? new Primary.fromJson(json['secondary'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mainIconName'] = this.mainIconName;
    if (this.primary != null) {
      data['primary'] = this.primary!.toJson();
    }
    if (this.secondary != null) {
      data['secondary'] = this.secondary!.toJson();
    }
    return data;
  }
}

class Primary {
  String? first;
  String? second;
  String? image;
  String? third;

  Primary({this.first, this.second, this.image, this.third});

  Primary.fromJson(Map<String, dynamic> json) {
    first = json['first'];
    second = json['second'];
    image = json['image'];
    third = json['third'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['first'] = this.first;
    data['second'] = this.second;
    data['image'] = this.image;
    data['third'] = this.third;
    return data;
  }
}
