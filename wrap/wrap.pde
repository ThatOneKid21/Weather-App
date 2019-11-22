String baseURL_Current = "http://api.openweathermap.org/data/2.5/weather?";
String baseURL_Forcast = "http://api.openweathermap.org/data/2.5/forcast?";
String albertaId = "id=5883102"; //City ID Numbers
String edmontonId = "id=5946768";
String torontoId = "id=6167865";
String stjohnsId = "id=6324733";
String apiKey = "APPID=1f7e6a48d3b24d978dcdc2fda0370263";
String mode = "mode=json";
String unitMetric = "units=metric";
String and = "&";

String URLCurrentAlberta = baseURL_Current+albertaId+and+apiKey+and+mode+unitMetric;
String URLForcastAlberta = baseURL_Forcast+albertaId+and+apiKey+and+mode+unitMetric;
String URLCurrentEdmonton = baseURL_Current+edmontonId+and+apiKey+and+mode+unitMetric;
String URLForcastEdmonton = baseURL_Forcast+edmontonId+and+apiKey+and+mode+unitMetric;
String URLCurrentToronto = baseURL_Current+torontoId+and+apiKey+and+mode+unitMetric;
String URLForcastToronto = baseURL_Forcast+torontoId+and+apiKey+and+mode+unitMetric;
String URLCurrentStjohns = baseURL_Current+stjohnsId+and+apiKey+and+mode+unitMetric;
String URLForcastStjohns = baseURL_Forcast+stjohnsId+and+apiKey+and+mode+unitMetric;



//println(URLCurrentAlberta);
//println(URLForcastAlberta);
println(URLCurrentEdmonton);
println(URLForcastEdmonton);
//println(URLCurrentToronto);
//println(URLForcastToronto);
//println(URLCurrentStjohns);
//println(URLForcastStjohns);

JSONObject jsonCurrentAlberta = loadJSONObject(URLCurrentAlberta);
JSONObject jsonForcastAlberta = loadJSONObject(URLForcastAlberta);
JSONObject jsonCurrentEdmonton = loadJSONObject(URLCurrentEdmonton);
JSONObject jsonForcastEdmonton = loadJSONObject(URLForcastEdmonton);
JSONObject jsonCurrentToronto = loadJSONObject(URLCurrentToronto);
JSONObject jsonForcastToronto = loadJSONObject(URLForcastToronto);
JSONObject jsonCurrentStjohns = loadJSONObject(URLCurrentStjohns);
JSONObject jsonForcastStjohns = loadJSONObject(URLForcastStjohns);
