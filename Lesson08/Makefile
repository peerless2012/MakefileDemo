# 枚举所有文件
ALL = $(wildcard *)
# 枚举所有cpp文件
SRC = $(wildcard *.cpp)
# 通过函数方式替换
OBJ = $(patsubst %.cpp,%.o,$(SRC))
# 通过变量替换方式
DEPS = $(SRC:%.cpp=%.d)

.PHONY : all clean help


all : $(OBJ)
	$(CXX) $^ -o $@

%.d : %.cpp
	@set -e; rm -f $@; \
    $(CXX) -MM $(CPPFLAGS) $< > $@.$$$$; \
    sed 's,\($*\)\.o[ :]*,\1.o $@ : ,g' < $@.$$$$ > $@; \
    rm -f $@.$$$$

clean : 
	$(RM) *.o *.d *.exe

help: 
	@echo $(ALL)
	@echo $(SRC)
	@echo $(OBJ)
	@echo $(DBJ)

# https://stackoverflow.com/a/31488442/3769941
-include $(DEPS)