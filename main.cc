#include "classes.h"

int
main()
{
  // Main loop
  std::string c;
  do{
    exeCmd cmd;
    std::cout << "sh > ";
    std::getline(std::cin,c);
    cmd.split(c);
  }while(true);
}



