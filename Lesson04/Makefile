DIR=Crypto SSL

.PHONY:$(DIR)

all:$(DIR)

$(DIR):
	make -C $@

clean:
	$(RM) *.o *.a *.out *.exe *.so *.dll *.lib
	$(shell for dir in $(DIR); do make -C $$dir clean;done)

help:
	make -C Crypto help
	make -C Crypto help