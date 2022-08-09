# Split

# enum cpp files
CPP=$(wildcard ./*.cpp)

# replace to .o files
OBJ= $(patsubst %.cpp, %.o, $(CPP))

TARGET=Calc

# 伪目标
.PHONY:all clean help

$(TARGET):$(OBJ)
	$(CXX) -lCal_Shared -L./ $(OBJ) -o $@

# 模式匹配
%.o:%.cpp
	$(CXX) -c $^ -o $@

clean:
	$(RM) *.o *.a *.out *.exe *.so *.dll

help:
	echo "Help"
	echo $(AS)
	echo $(CC)
	echo $(CPP)
	echo $(CXX)
	echo $(RM)
	echo $(CPP)
	echo $(OBJ)