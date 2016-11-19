#include "mainFunctions.h"
#define MAXARGS 10
std::string
check_alias(std::string cmd)
{
  std::ifstream myfile ("config");
  std::stringstream result,temp;
  std::string one,two,input,argv[MAXARGS];
  int i = 0;
  temp << cmd;
  //seperate into string array
  while(temp){
    temp >> argv[i];
    i++;
  }
  while(getline(myfile,input)){
    std::stringstream temp;
    temp << input;
    temp >> two;
    //compare the first word
    if(argv[0] == two){
      temp >> one;
      result << one;
      i = 1;
      //push the rest of the chars into the stringstream
      while(argv[i] != ""){
	result << " ";
	result << argv[i];
	i++;
	}
      //return the resulting string
      return result.str();
    }
   }
  return cmd;
}

