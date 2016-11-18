#include <iostream>
#include <stdlib.h>
#include <string>
#include <sstream>
#include <unistd.h>
#include <sys/wait.h>
#include <sys/types.h>
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
  char *args[MAXARGS]={};
  for(int i = 0 ;i < MAXARGS ;i++){
    if(argv[i] != "")
      args[i] = const_cast<char *>((argv[i]).c_str());
  }
  pid_t pid = fork();
  if (pid == 0){
    if(execvp(args[0],args) == -1){
    std::cout<<"Failed to exec" << std::endl;
    exit(0);
    }
  }
  else{
    int status;
    waitpid(pid, &status,0);
  }
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
  do{
    exeCmd cmd;
    std::cout << "sh > ";
    std::cin >> c;
    cmd.split(c);
    cmd.exec();
  }while(true);
}


