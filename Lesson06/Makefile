args:
	@echo "OS = "$(OS)
	@echo "MAKE_HOST = "$(MAKE_HOST)
	@echo "TARGET_ARCH = "$(TARGET_ARCH)
	@echo "cc = "$(cc)
	@echo "COMPILE.cc = "$(COMPILE.cc)
	@echo "COMPILE.cpp = "$(COMPILE.cpp)
	@echo "OUTPUT_OPTION = "$(OUTPUT_OPTION)
	@echo "xxx = "$(ls -l ~)

# 使用`@`来抑制回显命令本身
echo:
	@echo "Hello Makefile."

# 使用`-`来忽略出错的命令，使make能继续执行
ignore_error:
	-cat not_exists.txt
	@echo "Other cmd."

# 变量
A = abc
# 使用终值赋值
B = $(A)def
# 使用当前值赋值
C := $(A)def
A = xyz
# 如果未赋值，则给它赋后面的值
D ?= qwer
C ?= xyzw
# 追加赋值（会自动追加空格）
E = ijk
E += lmn
# make命令行指定的变量值将会覆盖makefile中定义的同名的变量值
F = opq
# make命令行指定的变量值将不会覆盖makefile中定义的同名的变量值，所以override有保护makefile中变量值不被命令行参数修改的作用。
override G = rst
# 使用override进行追加的变量的原来指定的值不会被命令行参数覆盖,而且会追加命令行指定的值
override H += append
vars:
	@echo $(A)
	@echo $(B)
	@echo $(C)
	@echo $(D)
	@echo $(E)
	@echo $(F)
	@echo $(G)
	@echo $(H)

# 如果你要让上一条命令的结果应用在下一条命令时，你应该使用分号分隔这两条命令。例如下面两段代码：
exec_order:
	cd ~
	pwd
	ls -l
	echo "--------------"
	cd ~; pwd; ls -l

# 每次编译都强制执行
FORCE: FORCE_TARGET

BUILD_TIME_FILE = build.time
force: generate_build_time

generate_build_time: $(BUILD_TIME_FILE)

FORCE_TARGET:

$(BUILD_TIME_FILE): FORCE_TARGET
	@echo "Force to generate a test file for every make ..."
	rm -rf $(BUILD_TIME_FILE) && echo `date "+%Y-%m-%d %H:%M:%S"` > $(BUILD_TIME_FILE)
