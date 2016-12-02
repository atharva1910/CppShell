#include "../include/mainFunctions.hpp"
#define MAXARGS 10

bool
check_string(std::string cmd)
{
  std::string s;
  s = cmd.substr(0,2);
  if ( s == "./")
    return true;
  return false;   
    
}


std::string
check_alias(std::string cmd)
{
  std::ifstream myfile ("config");
  std::stringstream result,temp;
  std::string input,argv[MAXARGS],one;
  int i = 0;
  temp << cmd;
  //seperate into string array
  while(temp){
    temp >> argv[i];
    i++;
  }
  //Clear stream
  temp.str("");
  temp.clear();
  while(getline(myfile,input)){
    std::string two;
    temp.str("");
    temp.clear();    
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


std::string
execute_pwd(std::string c)
{
  /*
    get path the current working directory
   */
  char path[256];
  std::stringstream ss;
  std::string s= c.substr(2);
  getcwd(path,256);
  ss << path;
  ss<<"/"<<s;
  return ss.str();
}
