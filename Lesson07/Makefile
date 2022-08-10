# 枚举所有文件
ALL = $(wildcard *)
# 枚举所有cpp文件
SRC = $(wildcard *.cpp)
# 通过函数方式替换
OBJ = $(patsubst %.cpp,%.o,$(SRC))
# 通过变量替换方式
DBJ = $(SRC:%.cpp=%.d)
# 过滤
EXE = $(filter %.exe,$(ALL))
# 反向过滤
NO_EXE = $(filter-out %.exe,$(ALL))
# 排序
SRC_SORT = $(sort $(SRC))
# VPATH转为cc搜索头文件路径
VPATH=usr/include:usr/lib/include
CFLAGS_I = $(patsubst %,-I%,$(subst :, ,$(VPATH)))
# 目录
FILE_PATH = $(dir /usr/bin/id.exe /usr/bin/info.exe ./all.exe)
# 文件名（带后缀）
FILE_NAME = $(notdir /usr/bin/id.exe /usr/bin/info.exe ./all.exe)
# 文件后缀
FILE_SUFFIX = $(suffix /usr/bin/id.exe /usr/bin/info.exe ./all.exe)
# addsuffix, addprefix, join
# 添加后缀
ADD_SUFFIX = $(addsuffix .c,a b c d e f)
# 添加前缀
ADD_PREFFIX = $(addprefix lib,a b c d e f)
# 链接 $(join <list1>,<list2>)
# 注意：把 <list2> 中的单词对应地加到 <list1> 的单词后面。如果 <list1> 的单词个数要比 <list2> 的多，那么， <list1> 中的多出来的单词将保持原样。如果 <list2> 的单词个数要比 <list1> 多，那么， <list2> 多出来的单词将被复制到 <list1> 中。
JOIN_ELEMENT = $(join a b c d e f,x y z)
# 循环
FOEREACH = $(foreach var,$(ALL),--$(var))
# if 
# $(if <condition>,<then-part>) 或 $(if <condition>,<then-part>,<else-part>)
# 如果 <condition> 为真（非空字符串）
NUM = 
IF = $(if $(NUM),true,false)
# origin
ORIGIN_HOST = $(origin MAKE_HOST)
# warning
# $(warning "出现警告")
# error
# $(error "出现严重错误，停止")
# 终极目标 MAKECMDGOALS

include MakefilePattern.mk

.PHONY : all clean help

all : $(OBJ)
	$(CXX) $^ -o $@

clean : 
	$(RM) *.o *.d *.exe

help : 
	@echo "Make all"
	@echo "Make clean"
	@echo "Make help"
	@echo $(ALL)
	@echo $(SRC)
	@echo $(OBJ)
	@echo $(DBJ)
	@echo $(EXE)
	@echo $(NO_EXE)
	@echo $(SRC_SORT)
	@echo $(CFLAGS_I)
	@echo $(FILE_PATH)
	@echo $(FILE_NAME)
	@echo $(FILE_SUFFIX)
	@echo $(ADD_SUFFIX)
	@echo $(ADD_PREFFIX)
	@echo $(JOIN_ELEMENT)
	@echo $(FOEREACH)
	@echo $(IF)
	@echo $(ORIGIN_HOST)