#include "classes.h"

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
    // Check for pipe or redirection of files
    if (argv[i] == "<" || argv[i] == ">"){
      redir_flag = true;
      std::cout << "Redirection not implemented" << std::endl;
      return;
    }
    if (argv[i] == "|"){
      pipe_flag = true;
      std::cout << "Pipe not implemented" << std::endl;
      return;
    }
    i++;
  }
  argv[0] = path(argv[0]);
  exec();
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

