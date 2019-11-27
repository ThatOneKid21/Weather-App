//UnwrapToVariables
/* Code to Copy, use println() to verify
 
 Note: use APICall() Variables here, for example jsonCurrentEdmonton
 Caution: variables should be a mix of global and local variables
 
 JSONArray weather = jsonObject-Variable.getJSONArray("weather"); //Unwrapping
 
 JSONObject all = weather.getJSONObject(0); //Unwrap {}
 String mainWeather = all.getString("main");
 String description = all.getString("description");
 String icon = all.getString("icon");
 
 JSONObject main = jsonObject-Variable.getJSONObject("main"); //Unwrap {}
 float temp = main.getFloat("temp");
 float tempMin = main.getFloat("temp_min");
 float tempMax = main.getFloat("temp_max");
 
 int apiCallTime = jsonObject-Variable.getInt("dt");
 
 JSONObject sys = jsonObject-Variable.getJSONObject("sys"); //Unwrap {}
 String country = sys.getString("country");
 int sunrise = sys.getInt("sunrise");
 int sunset = sys.getInt("sunset");
 
 String name = jsonObject-Variable.getString("name");
 
 */

import java.text.ParseException;  
import java.text.SimpleDateFormat;  
import java.util.Date;  //Date Conversation, UNIX Time Stamp from Jan 1, 1970
import java.util.Locale;

//Global Variables
String mainWeatherEdmonton, descriptionEdmonton, iconEdmonton, countryEdmonton, nameEdmonton;
float tempEdmonton, tempMinEdmonton, tempMaxEdmonton;
int sunriseEdmonton, sunsetEdmonton;
Date apiCurrentDateCall;

String mainWeatherToronto, descriptionToronto, iconToronto, countryToronto, nameToronto;
float tempToronto, tempMinToronto, tempMaxToronto;
int apiCallTimeToronto, sunriseToronto, sunsetToronto;

String mainWeatherStjohns, descriptionStjohns, iconStjohns, countryStjohns, nameStjohns;
float tempStjohns, tempMinStjohns, tempMaxStjohns;
int apiCallTimeStjohns, sunriseStjohns, sunsetStjohns;


void unwrapToVariables() {
  currentEdmonton();
  currentToronto();
  currentStjohns();
}

Date humanDate(long unixTime) {
  Date dateHuman = new Date(unixTime*1000); //convert from milliseconds
  return dateHuman;
}

void currentEdmonton() {
  JSONArray weatherEdmonton = jsonCurrentEdmonton.getJSONArray("weather"); //Unwrapping

  JSONObject allEdmonton = weatherEdmonton.getJSONObject(0); //Unwrap {}
  mainWeatherEdmonton = allEdmonton.getString("main");
  descriptionEdmonton = allEdmonton.getString("description");
  iconEdmonton = allEdmonton.getString("icon");

  JSONObject mainEdmonton = jsonCurrentEdmonton.getJSONObject("main"); //Unwrap {}
  tempEdmonton = mainEdmonton.getFloat("temp");
  tempMinEdmonton = mainEdmonton.getFloat("temp_min");
  tempMaxEdmonton = mainEdmonton.getFloat("temp_max");

  long apiCallTimeEdmonton = jsonCurrentEdmonton.getInt("dt"); //int not enough memory, needs long (float & double)
  apiCurrentDateCall = humanDate(apiCallTimeEdmonton);

  JSONObject sysEdmonton = jsonCurrentEdmonton.getJSONObject("sys"); //Unwrap {}
  countryEdmonton = sysEdmonton.getString("country");
  sunriseEdmonton = sysEdmonton.getInt("sunrise");
  sunsetEdmonton = sysEdmonton.getInt("sunset");

  nameEdmonton = jsonCurrentEdmonton.getString("name");
}

void currentToronto() {
  JSONArray weatherToronto = jsonCurrentToronto.getJSONArray("weather"); //Unwrapping

  JSONObject allToronto = weatherToronto.getJSONObject(0); //Unwrap {}
  mainWeatherToronto = allToronto.getString("main");
  descriptionToronto = allToronto.getString("description");
  iconToronto = allToronto.getString("icon");

  JSONObject mainToronto = jsonCurrentToronto.getJSONObject("main"); //Unwrap {}
  tempToronto = mainToronto.getFloat("temp");
  tempMinToronto = mainToronto.getFloat("temp_min");
  tempMaxToronto = mainToronto.getFloat("temp_max");

  apiCallTimeToronto = jsonCurrentToronto.getInt("dt");

  JSONObject sysToronto = jsonCurrentToronto.getJSONObject("sys"); //Unwrap {}
  countryToronto = sysToronto.getString("country");
  sunriseToronto = sysToronto.getInt("sunrise");
  sunsetToronto = sysToronto.getInt("sunset");

  nameToronto = jsonCurrentToronto.getString("name");
}

void currentStjohns() {
  JSONArray weatherStjohns = jsonCurrentStjohns.getJSONArray("weather"); //Unwrapping

  JSONObject allStjohns = weatherStjohns.getJSONObject(0); //Unwrap {}
  mainWeatherStjohns = allStjohns.getString("main");
  descriptionStjohns = allStjohns.getString("description");
  iconStjohns = allStjohns.getString("icon");

  JSONObject mainStjohns = jsonCurrentStjohns.getJSONObject("main"); //Unwrap {}
  tempStjohns = mainStjohns.getFloat("temp");
  tempMinStjohns = mainStjohns.getFloat("temp_min");
  tempMaxStjohns = mainStjohns.getFloat("temp_max");

  apiCallTimeStjohns = jsonCurrentStjohns.getInt("dt");

  JSONObject sysStjohns = jsonCurrentStjohns.getJSONObject("sys"); //Unwrap {}
  countryStjohns = sysStjohns.getString("country");
  sunriseStjohns = sysStjohns.getInt("sunrise");
  sunsetStjohns = sysStjohns.getInt("sunset");

  nameStjohns = jsonCurrentStjohns.getString("name");
}
