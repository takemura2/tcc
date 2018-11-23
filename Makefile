tcc: tcc.c

test: tcc
	./test.sh
clean:
	rm -f tcc *.o *~ tmp*
