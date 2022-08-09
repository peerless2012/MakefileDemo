A=10
B=20

# 控制
ifeq ($(A),10)
	EQ=true
else
	EQ=false
endif

ifneq ($B, 20)
	NEQ=true
else
	NEQ=false
endif

# 循环
TARGET=a b c d

loop:
	echo $(TARGET)
	touch $(foreach target,$(TARGET),$(target).txt)

# func
define func1
 	@echo "My name is $(0)"
    @echo "Param => $(1)" 
endef

func:
	$(call func1, test)

clean:
	$(RM) *.txt

help:
	echo $(EQ)
	echo $(NEQ)
# make target var=val
	echo $(TARGET)