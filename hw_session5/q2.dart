/*Create a program that stores country codes and names. Start with: EG → Egypt, SA → Saudi
Arabia, AE → UAE. Add QA → Qatar and then print the name of the country with the code EG.*/
void main() {
  Map<String, String> countrycodes = {
    "EG": "Egypt",
    "SA": "Saudi Arabia",
    "AE": "UAE",
  };
  countrycodes['QA'] = "Qatar";
  print(countrycodes["EG"]);
}
