//Global Variable
String URLCurrentAlberta;
String URLForecastAlberta;
String URLCurrentEdmonton;
String URLForecastEdmonton;
String URLCurrentToronto;
String URLForecastToronto;
String URLCurrentStjohns;
String URLForecastStjohns;

JSONObject jsonCurrentAlberta;
JSONObject jsonForecastAlberta;
JSONObject jsonCurrentEdmonton;
JSONObject jsonForecastEdmonton;
JSONObject jsonCurrentToronto;
JSONObject jsonForecastToronto;
JSONObject jsonCurrentStjohns;
JSONObject jsonForecastStjohns;

void buildingURL() {
  String baseURL_Current = "http://api.openweathermap.org/data/2.5/weather?";
  String baseURL_Forecast = "http://api.openweathermap.org/data/2.5/forecast?";
  String albertaId = "id=5883102"; //City ID Numbers
  String edmontonId = "id=5946768";
  String torontoId = "id=6167865";
  String stjohnsId = "id=6324733";
  String apiKey = "APPID=1f7e6a48d3b24d978dcdc2fda0370263"; //API Key is PRIVATE so not included here
  String mode = "mode=json";
  String unitMetric = "units=metric";
  String and = "&";

  URLCurrentAlberta = baseURL_Current+albertaId+and+apiKey+and+mode+and+unitMetric;
  URLForecastAlberta = baseURL_Forecast+albertaId+and+apiKey+and+mode+and+unitMetric;
  URLCurrentEdmonton = baseURL_Current+edmontonId+and+apiKey+and+mode+and+unitMetric;
  URLForecastEdmonton = baseURL_Forecast+edmontonId+and+apiKey+and+mode+and+unitMetric;
  URLCurrentToronto = baseURL_Current+torontoId+and+apiKey+and+mode+and+unitMetric;
  URLForecastToronto = baseURL_Forecast+torontoId+and+apiKey+and+mode+and+unitMetric;
  URLCurrentStjohns = baseURL_Current+stjohnsId+and+apiKey+and+mode+and+unitMetric;
  URLForecastStjohns = baseURL_Forecast+stjohnsId+and+apiKey+and+mode+and+unitMetric;

  //Verification in Console, copy-paste variable output to Chrome and verify data can be seen correctly
  //println(URLCurrentAlberta);
  //println(URLForecastAlberta);
  //println(URLCurrentEdmonton);
  //println(URLForecastEdmonton);
  //println(URLCurrentToronto);
  //println(URLForecastToronto);
  //println(URLCurrentRedDeer);
  //println(URLForecastRedDeer);
} //End buildingURL()

void APICall() {
  jsonCurrentAlberta = loadJSONObject(URLCurrentAlberta);
  jsonForecastAlberta = loadJSONObject(URLForecastAlberta);
  jsonCurrentEdmonton = loadJSONObject(URLCurrentEdmonton);
  jsonForecastEdmonton = loadJSONObject(URLForecastEdmonton);
  jsonCurrentToronto = loadJSONObject(URLCurrentToronto);
  jsonForecastToronto = loadJSONObject(URLForecastToronto);
  jsonCurrentStjohns = loadJSONObject(URLCurrentStjohns);
  jsonForecastStjohns = loadJSONObject(URLForecastStjohns);
} //End APICall
