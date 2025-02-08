//Root path
const String URLPath = "http://localhost:8080/";

//Auth
const String registrationPath = "auth/sign-up";
const String loginPath = "auth/sign-in";

//Hotels
const String allHotelsPath = "api/hotels/";
String hotelsPath(int hotelId){
  return "api/hotels/$hotelId";
}
