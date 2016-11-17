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
  std::string path(std::string &);
  void split(std::string);
  void exec(); 
 private:
  std::stringstream ss;
  std::string argv[MAXARGS];
};

void
exeCmd::split(std::string s)
{
  /*
    Split the string into command and arguments
   */
  int i = 0;
  ss.str(s);
  while (ss){
    ss >> argv[i];
    i++;
  }
  argv[0] = path(argv[0]);
}

void
exeCmd::exec()
{
  /* 
     Execute the command
  */
  char *args[MAXARGS];
  for(int i = 0 ;i < MAXARGS ;i++){
    args[i] = const_cast<char *>((argv[i]).c_str());
  }
  for (int i = 1 ; i < MAXARGS ; i++){
    args[i] = '\0';
  }
  execvp(args[0],args);

}

std::string
exeCmd::path(std::string &d)
{
  /* 
     Concat /usr/bin to start of cmd
  */
  std::string final_cmd;
  final_cmd = "/bin/" + d ;
  return final_cmd;

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


