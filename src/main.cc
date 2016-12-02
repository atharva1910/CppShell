#include "../include/classes.hpp"
#include "../include/mainFunctions.hpp"

int
main()
{
  // Main loop
  std::string c,cmnd;
    do{
      exeCmd cmd;
      std::cout << "sh > ";
      std::getline(std::cin,c);
      cmnd=check_alias(c);
      if(cmnd == c){
	if(check_string(c))
	  cmnd=execute_pwd(c);
      }
      cmd.split(cmnd);
    }while(true);
}
