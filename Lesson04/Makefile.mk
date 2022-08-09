# enum cpp files
CPP_SOURCE=$(wildcard ./*.cpp)

# replace to .o files
OBJ=$(patsubst %.cpp, %.o, $(CPP_SOURCE))
OBJ_MAIN=./Main.o
OBJ_SOURCE=$(subst $(OBJ_MAIN),,$(OBJ))

# 动态库
TARGET_SHARED=$(TARGET)_SHARED

# 静态库
TARGET_STATIC=$(TARGET)_STATIC

# 测试
TARGET_TEST=$(TARGET)_TEST

# 伪目标
.PHONY:all clean help

all:$(TARGET_TEST) $(TARGET_SHARED) $(TARGET_STATIC)

# 编译所有文件
$(TARGET):$(OBJ)
	$(CXX) $^ -o $@

# 模式匹配
%.o:%.cpp
	$(CXX) -c $^ -o $@

# 测试，编译完成程序
$(TARGET_TEST):$(OBJ)
	$(CXX) $^ -o $(TARGET)

$(TARGET_SHARED):$(OBJ_SOURCE)
	$(CXX) -shared -fPIC $^ -o $(TARGET).dll
	cp $(TARGET).dll ..

# MinGW compilation "file not recognized: File format not recognized"
# https://stackoverflow.com/a/44482280/3769941
$(TARGET_STATIC):$(OBJ_SOURCE)
	$(LD) -r $^ -o $(TARGET).lib
	cp $(TARGET).lib ..

clean:
	$(RM) *.o *.a *.out *.exe *.so *.dll *.lib

help:
	echo "Help"
	echo $(CPP_SOURCE)
	echo $(OBJ)
	echo $(OBJ_MAIN)
	echo $(OBJ_SOURCE)