CC= gcc
VPATH= src include
CPPFLAGS = -I include
#m2bfs: bfs.c queue.c 
	#gcc -o m2bfs bfs.c queue.c
#mbfs3: bfs.o queue.o 
	#gcc -o mbfs3 bfs.o queue.o
	#修改为使用自动变量的格式
	#gcc $(CPPFLAGS) -o $@ $^
#bfs.o: bfs.c queue.c
	#gcc -c  bfs.c queue.c
	#gcc $(CPPFLAGS) -c $^
#queue.o: queue.c
	#gcc -c queue.c
	#gcc $(CPPFLAGS) -c $^
mbfs3: bfs.o queue.o 
	$(CC) $(CPPFLAGS) -o $@ $^
bfs.o: bfs.c queue.h
queue.o: queue.c

.PHONY: clean
clean:
	rm -f *.o mbfs3
