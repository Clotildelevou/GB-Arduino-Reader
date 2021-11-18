OBJS	= src/serial.o src/utils.o src/main.o
SOURCE	= src/serial.c src/utils.c src/main.c
HEADER	= src/serial.h src/utils.h
OUT	= gb-reader
LFLAGS	 = 

all: gb-reader

gb-reader: $(OBJS)
	$(CC) -o $@ $^ $(LFLAGS)

%.o: %.c $(HEADER)
	$(CC) -c -o $@ $< $(LFLAGS)

clean:
	rm -f $(OBJS) $(OUT)

run: $(OUT)
	./$(OUT)
