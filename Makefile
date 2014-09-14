CC = gcc
# add  -fdump-rtl-expand to the end of CFLAGS for further generating
# call graphs using `egypt'
CFLAGS = -Wall -Wextra -Wmissing-prototypes -Wstrict-prototypes -Wuninitialized
OBJS = cricket.o utilities.o team.o engine.o mechanics.o analysis.o pitch.o commands.o misc.o

cricket: $(OBJS)
	$(CC) $(CFLAGS) -std=c99 -pedantic -O -g -o cricket $(OBJS)

cricket.o: cricket.c cricket.h utilities.c utilities.h team.c team.h \
        engine.c engine.h mechanics.c mechanics.h analysis.c analysis.h \
        pitch.c pitch.h commands.c commands.h misc.c misc.h
	$(CC) $(CFLAGS) -std=c99 -pedantic -O -g -c cricket.c

utilities.o: utilities.c utilities.h
	$(CC) $(CFLAGS) -std=c99 -pedantic -O -g -c utilities.c

team.o: team.c team.h fall_of_wickets.h
	$(CC) $(CFLAGS) -std=c99 -pedantic -O -g -c team.c

engine.o: engine.c engine.h
	$(CC) $(CFLAGS) -std=c99 -pedantic -O -g -c engine.c

mechanics.o: mechanics.c mechanics.h
	$(CC) $(CFLAGS) -std=c99 -pedantic -O -g -c mechanics.c

analysis.o: analysis.c analysis.h
	$(CC) $(CFLAGS) -std=c99 -pedantic -O -g -c analysis.c

pitch.o: pitch.c pitch.h
	$(CC) $(CFLAGS) -std=c99 -pedantic -O -g -c pitch.c

commands.o: commands.c commands.h
	$(CC) $(CFLAGS) -std=c99 -pedantic -O -g -c commands.c

misc.o: misc.c misc.h
	$(CC) $(CFLAGS) -std=c99 -pedantic -O -g -c misc.c


clean:
	rm *.o cricket