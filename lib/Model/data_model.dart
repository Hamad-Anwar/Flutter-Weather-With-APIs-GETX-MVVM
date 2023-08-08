class DataModel {
  dynamic queryCost;
  dynamic latitude;
  dynamic longitude;
  dynamic resolvedAddress;
  dynamic address;
  dynamic timezone;
  dynamic tzoffset;
  dynamic description;
  List<Days>? days;
  List<Null>? alerts;
  Stations? stations;
  CurrentConditions? currentConditions;

  DataModel(
      {this.queryCost,
        this.latitude,
        this.longitude,
        this.resolvedAddress,
        this.address,
        this.timezone,
        this.tzoffset,
        this.description,
        this.days,
        this.alerts,
        this.stations,
        this.currentConditions});

  DataModel.fromJson(Map<String, dynamic> json) {
    queryCost = json['queryCost'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    resolvedAddress = json['resolvedAddress'];
    address = json['address'];
    timezone = json['timezone'];
    tzoffset = json['tzoffset'];
    description = json['description'];
    if (json['days'] != null) {
      days = <Days>[];
      json['days'].forEach((v) {
        days!.add(new Days.fromJson(v));
      });
    }
    
    stations = json['stations'] != null
        ? new Stations.fromJson(json['stations'])
        : null;
    currentConditions = json['currentConditions'] != null
        ? new CurrentConditions.fromJson(json['currentConditions'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['queryCost'] = this.queryCost;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['resolvedAddress'] = this.resolvedAddress;
    data['address'] = this.address;
    data['timezone'] = this.timezone;
    data['tzoffset'] = this.tzoffset;
    data['description'] = this.description;
    if (this.days != null) {
      data['days'] = this.days!.map((v) => v.toJson()).toList();
    }
   
    if (this.stations != null) {
      data['stations'] = this.stations!.toJson();
    }
    if (this.currentConditions != null) {
      data['currentConditions'] = this.currentConditions!.toJson();
    }
    return data;
  }
}

class Days {
  dynamic datetime;
  dynamic datetimeEpoch;
  dynamic tempmax;
  dynamic tempmin;
  dynamic temp;
  dynamic feelslikemax;
  dynamic feelslikemin;
  dynamic feelslike;
  dynamic dew;
  dynamic humidity;
  dynamic precip;
  dynamic precipprob;
  dynamic precipcover;
  List<dynamic>? preciptype;
  dynamic snow;
  dynamic snowdepth;
  dynamic windgust;
  dynamic windspeed;
  dynamic winddir;
  dynamic pressure;
  dynamic cloudcover;
  dynamic visibility;
  dynamic solarradiation;
  dynamic solarenergy;
  dynamic uvindex;
  dynamic severerisk;
  dynamic sunrise;
  dynamic sunriseEpoch;
  dynamic sunset;
  dynamic sunsetEpoch;
  dynamic moonphase;
  dynamic conditions;
  dynamic description;
  dynamic icon;
  List<dynamic>? stations;
  dynamic source;
  List<Hours>? hours;

  Days(
      {this.datetime,
        this.datetimeEpoch,
        this.tempmax,
        this.tempmin,
        this.temp,
        this.feelslikemax,
        this.feelslikemin,
        this.feelslike,
        this.dew,
        this.humidity,
        this.precip,
        this.precipprob,
        this.precipcover,
        this.preciptype,
        this.snow,
        this.snowdepth,
        this.windgust,
        this.windspeed,
        this.winddir,
        this.pressure,
        this.cloudcover,
        this.visibility,
        this.solarradiation,
        this.solarenergy,
        this.uvindex,
        this.severerisk,
        this.sunrise,
        this.sunriseEpoch,
        this.sunset,
        this.sunsetEpoch,
        this.moonphase,
        this.conditions,
        this.description,
        this.icon,
        this.stations,
        this.source,
        this.hours});

  Days.fromJson(Map<String, dynamic> json) {
    datetime = json['datetime'];
    datetimeEpoch = json['datetimeEpoch'];
    tempmax = json['tempmax'];
    tempmin = json['tempmin'];
    temp = json['temp'];
    feelslikemax = json['feelslikemax'];
    feelslikemin = json['feelslikemin'];
    feelslike = json['feelslike'];
    dew = json['dew'];
    humidity = json['humidity'];
    precip = json['precip'];
    precipprob = json['precipprob'];
    precipcover = json['precipcover'];
    preciptype = json['preciptype'];
    snow = json['snow'];
    snowdepth = json['snowdepth'];
    windgust = json['windgust'];
    windspeed = json['windspeed'];
    winddir = json['winddir'];
    pressure = json['pressure'];
    cloudcover = json['cloudcover'];
    visibility = json['visibility'];
    solarradiation = json['solarradiation'];
    solarenergy = json['solarenergy'];
    uvindex = json['uvindex'];
    severerisk = json['severerisk'];
    sunrise = json['sunrise'];
    sunriseEpoch = json['sunriseEpoch'];
    sunset = json['sunset'];
    sunsetEpoch = json['sunsetEpoch'];
    moonphase = json['moonphase'];
    conditions = json['conditions'];
    description = json['description'];
    icon = json['icon'];
    stations = json['stations'];
    source = json['source'];
    if (json['hours'] != null) {
      hours = <Hours>[];
      json['hours'].forEach((v) {
        hours!.add(new Hours.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['datetime'] = this.datetime;
    data['datetimeEpoch'] = this.datetimeEpoch;
    data['tempmax'] = this.tempmax;
    data['tempmin'] = this.tempmin;
    data['temp'] = this.temp;
    data['feelslikemax'] = this.feelslikemax;
    data['feelslikemin'] = this.feelslikemin;
    data['feelslike'] = this.feelslike;
    data['dew'] = this.dew;
    data['humidity'] = this.humidity;
    data['precip'] = this.precip;
    data['precipprob'] = this.precipprob;
    data['precipcover'] = this.precipcover;
    data['preciptype'] = this.preciptype;
    data['snow'] = this.snow;
    data['snowdepth'] = this.snowdepth;
    data['windgust'] = this.windgust;
    data['windspeed'] = this.windspeed;
    data['winddir'] = this.winddir;
    data['pressure'] = this.pressure;
    data['cloudcover'] = this.cloudcover;
    data['visibility'] = this.visibility;
    data['solarradiation'] = this.solarradiation;
    data['solarenergy'] = this.solarenergy;
    data['uvindex'] = this.uvindex;
    data['severerisk'] = this.severerisk;
    data['sunrise'] = this.sunrise;
    data['sunriseEpoch'] = this.sunriseEpoch;
    data['sunset'] = this.sunset;
    data['sunsetEpoch'] = this.sunsetEpoch;
    data['moonphase'] = this.moonphase;
    data['conditions'] = this.conditions;
    data['description'] = this.description;
    data['icon'] = this.icon;
    data['stations'] = this.stations;
    data['source'] = this.source;
    if (this.hours != null) {
      data['hours'] = this.hours!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Hours {
  dynamic datetime;
  dynamic datetimeEpoch;
  dynamic temp;
  dynamic feelslike;
  dynamic humidity;
  dynamic dew;
  dynamic precip;
  dynamic precipprob;
  dynamic snow;
  dynamic snowdepth;
  List<dynamic>? preciptype;
  dynamic windgust;
  dynamic windspeed;
  dynamic winddir;
  dynamic pressure;
  dynamic visibility;
  dynamic cloudcover;
  dynamic solarradiation;
  dynamic solarenergy;
  dynamic uvindex;
  dynamic severerisk;
  dynamic conditions;
  dynamic icon;
  List<dynamic>? stations;
  dynamic source;

  Hours(
      {this.datetime,
        this.datetimeEpoch,
        this.temp,
        this.feelslike,
        this.humidity,
        this.dew,
        this.precip,
        this.precipprob,
        this.snow,
        this.snowdepth,
        this.preciptype,
        this.windgust,
        this.windspeed,
        this.winddir,
        this.pressure,
        this.visibility,
        this.cloudcover,
        this.solarradiation,
        this.solarenergy,
        this.uvindex,
        this.severerisk,
        this.conditions,
        this.icon,
        this.stations,
        this.source});

  Hours.fromJson(Map<String, dynamic> json) {
    datetime = json['datetime'];
    datetimeEpoch = json['datetimeEpoch'];
    temp = json['temp'];
    feelslike = json['feelslike'];
    humidity = json['humidity'];
    dew = json['dew'];
    precip = json['precip'];
    precipprob = json['precipprob'];
    snow = json['snow'];
    snowdepth = json['snowdepth'];
    preciptype = json['preciptype'];
    windgust = json['windgust'];
    windspeed = json['windspeed'];
    winddir = json['winddir'];
    pressure = json['pressure'];
    visibility = json['visibility'];
    cloudcover = json['cloudcover'];
    solarradiation = json['solarradiation'];
    solarenergy = json['solarenergy'];
    uvindex = json['uvindex'];
    severerisk = json['severerisk'];
    conditions = json['conditions'];
    icon = json['icon'];
    stations = json['stations'];
    source = json['source'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['datetime'] = this.datetime;
    data['datetimeEpoch'] = this.datetimeEpoch;
    data['temp'] = this.temp;
    data['feelslike'] = this.feelslike;
    data['humidity'] = this.humidity;
    data['dew'] = this.dew;
    data['precip'] = this.precip;
    data['precipprob'] = this.precipprob;
    data['snow'] = this.snow;
    data['snowdepth'] = this.snowdepth;
    data['preciptype'] = this.preciptype;
    data['windgust'] = this.windgust;
    data['windspeed'] = this.windspeed;
    data['winddir'] = this.winddir;
    data['pressure'] = this.pressure;
    data['visibility'] = this.visibility;
    data['cloudcover'] = this.cloudcover;
    data['solarradiation'] = this.solarradiation;
    data['solarenergy'] = this.solarenergy;
    data['uvindex'] = this.uvindex;
    data['severerisk'] = this.severerisk;
    data['conditions'] = this.conditions;
    data['icon'] = this.icon;
    data['stations'] = this.stations;
    data['source'] = this.source;
    return data;
  }
}

class Stations {
  VIAR? vIAR;
  VIAR? oPLA;

  Stations({this.vIAR, this.oPLA});

  Stations.fromJson(Map<String, dynamic> json) {
    vIAR = json['VIAR'] != null ? new VIAR.fromJson(json['VIAR']) : null;
    oPLA = json['OPLA'] != null ? new VIAR.fromJson(json['OPLA']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.vIAR != null) {
      data['VIAR'] = this.vIAR!.toJson();
    }
    if (this.oPLA != null) {
      data['OPLA'] = this.oPLA!.toJson();
    }
    return data;
  }
}

class VIAR {
  dynamic distance;
  dynamic latitude;
  dynamic longitude;
  dynamic useCount;
  dynamic id;
  dynamic name;
  dynamic quality;
  dynamic contribution;

  VIAR(
      {this.distance,
        this.latitude,
        this.longitude,
        this.useCount,
        this.id,
        this.name,
        this.quality,
        this.contribution});

  VIAR.fromJson(Map<String, dynamic> json) {
    distance = json['distance'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    useCount = json['useCount'];
    id = json['id'];
    name = json['name'];
    quality = json['quality'];
    contribution = json['contribution'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['distance'] = this.distance;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['useCount'] = this.useCount;
    data['id'] = this.id;
    data['name'] = this.name;
    data['quality'] = this.quality;
    data['contribution'] = this.contribution;
    return data;
  }
}

class CurrentConditions {
  dynamic datetime;
  dynamic datetimeEpoch;
  dynamic temp;
  dynamic feelslike;
  dynamic humidity;
  dynamic dew;
  Null? precip;
  dynamic precipprob;
  dynamic snow;
  dynamic snowdepth;
  Null? preciptype;
  Null? windgust;
  dynamic windspeed;
  dynamic winddir;
  dynamic pressure;
  dynamic visibility;
  dynamic cloudcover;
  dynamic solarradiation;
  dynamic solarenergy;
  dynamic uvindex;
  dynamic conditions;
  dynamic icon;
  List<dynamic>? stations;
  dynamic source;
  dynamic sunrise;
  dynamic sunriseEpoch;
  dynamic sunset;
  dynamic sunsetEpoch;
  dynamic moonphase;

  CurrentConditions(
      {this.datetime,
        this.datetimeEpoch,
        this.temp,
        this.feelslike,
        this.humidity,
        this.dew,
        this.precip,
        this.precipprob,
        this.snow,
        this.snowdepth,
        this.preciptype,
        this.windgust,
        this.windspeed,
        this.winddir,
        this.pressure,
        this.visibility,
        this.cloudcover,
        this.solarradiation,
        this.solarenergy,
        this.uvindex,
        this.conditions,
        this.icon,
        this.stations,
        this.source,
        this.sunrise,
        this.sunriseEpoch,
        this.sunset,
        this.sunsetEpoch,
        this.moonphase});

  CurrentConditions.fromJson(Map<String, dynamic> json) {
    datetime = json['datetime'];
    datetimeEpoch = json['datetimeEpoch'];
    temp = json['temp'];
    feelslike = json['feelslike'];
    humidity = json['humidity'];
    dew = json['dew'];
    precip = json['precip'];
    precipprob = json['precipprob'];
    snow = json['snow'];
    snowdepth = json['snowdepth'];
    preciptype = json['preciptype'];
    windgust = json['windgust'];
    windspeed = json['windspeed'];
    winddir = json['winddir'];
    pressure = json['pressure'];
    visibility = json['visibility'];
    cloudcover = json['cloudcover'];
    solarradiation = json['solarradiation'];
    solarenergy = json['solarenergy'];
    uvindex = json['uvindex'];
    conditions = json['conditions'];
    icon = json['icon'];
    stations = json['stations'];
    source = json['source'];
    sunrise = json['sunrise'];
    sunriseEpoch = json['sunriseEpoch'];
    sunset = json['sunset'];
    sunsetEpoch = json['sunsetEpoch'];
    moonphase = json['moonphase'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['datetime'] = this.datetime;
    data['datetimeEpoch'] = this.datetimeEpoch;
    data['temp'] = this.temp;
    data['feelslike'] = this.feelslike;
    data['humidity'] = this.humidity;
    data['dew'] = this.dew;
    data['precip'] = this.precip;
    data['precipprob'] = this.precipprob;
    data['snow'] = this.snow;
    data['snowdepth'] = this.snowdepth;
    data['preciptype'] = this.preciptype;
    data['windgust'] = this.windgust;
    data['windspeed'] = this.windspeed;
    data['winddir'] = this.winddir;
    data['pressure'] = this.pressure;
    data['visibility'] = this.visibility;
    data['cloudcover'] = this.cloudcover;
    data['solarradiation'] = this.solarradiation;
    data['solarenergy'] = this.solarenergy;
    data['uvindex'] = this.uvindex;
    data['conditions'] = this.conditions;
    data['icon'] = this.icon;
    data['stations'] = this.stations;
    data['source'] = this.source;
    data['sunrise'] = this.sunrise;
    data['sunriseEpoch'] = this.sunriseEpoch;
    data['sunset'] = this.sunset;
    data['sunsetEpoch'] = this.sunsetEpoch;
    data['moonphase'] = this.moonphase;
    return data;
  }
}