#include <iostream>
#include <stdlib.h>
#include <string>
#include <sstream>
#include <unistd.h>
#define MAXARGS 10


class
exeCmd
{

 public:
  std::string cmd;
  std::string argv[MAXARGS];
  void split(std::string);
  void exec(); 
 private:
  std::stringstream ss;
};

void exeCmd::split(std::string s)
{
  int i = 0;
  ss.str(s);
  ss >> cmd;
  while (ss){
    ss >> argv[i];
    i++;
  }
}

void exeCmd::exec()
{
  char **argv;
  std::cout << " inside exec" << std::endl;
  std::cout << cmd << std::endl;
  system(const_cast<char *>(cmd.c_str()));
  //  execv(const_cast<char *>(cmd.c_str()),argv);
}
  



int
main()
{
  // Main loop
  std::string c;
  exeCmd cmd;
  do{
    std::cout << "sh > ";
    std::cin >> c;
    cmd.split(c);
    cmd.exec();
  }while(true);
}


