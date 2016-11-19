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
  while(temp){
    temp >> argv[i];
    i++;
  }
  while(getline(myfile,input)){
    std::stringstream temp;
    temp << input;
    temp >> two;
    if(argv[0] == two){
      temp >> one;
      result << one;
      i = 1;
      while(argv[i] != ""){
	result << argv[i];
	i++;
	}
      return result.str();
    }
   }
  return cmd;
}

