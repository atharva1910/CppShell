#ifndef _CLASSES_H_INCLUDED_
#define _CLASSES_H_INCLUDED

#include <string>
#include <stdlib.h>
#include <sstream>
#include <unistd.h>
#include <sys/wait.h>
#include <sys/types.h>
#include <iostream>
#define MAXARGS 10

class
exeCmd
{
public:
  std::string path(std::string &);
  void split(std::string);
  void exec(); 
private:
  std::string argv[MAXARGS];
  bool pipe_flag = false;
  bool redir_flag = false;
};


class
pipeExe
{
public:
  void pipeEx();
private:
  std::string leftCmd[MAXARGS],rightCmd[MAXARGS];
};

#endif
