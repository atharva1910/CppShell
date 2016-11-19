#ifndef _CLASSES_H_INCLUDED_
#define _CLASSES_H_INCLUDED

#define MAXARGS 10
#include <iostream>
#include <stdlib.h>
#include <string>
#include <sstream>
#include <unistd.h>
#include <sys/wait.h>
#include <sys/types.h>

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
