#include "classes.h"
#include "mainFunctions.h"

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
      cmd.split(cmnd);
    }while(true);
}



