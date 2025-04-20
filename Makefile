# Jalen Jones
# Makefile
# 04/09/25

CC = g++
CFLAGS = -g -Wall -Wextra

# Default
default: employee

# Object files needed to create the executable file:
# Employee.o, Officer.o, Supervisor.o, main.o

employee: Employee.o Officer.o Supervisor.o main.o
	$(CC) $(CFLAGS) -o employee Employee.o Officer.o Supervisor.o main.o

# Create Employee.o
Employee.o: Employee.cpp Employee.h
	$(CC) $(CFLAGS) -c Employee.cpp

# Create Officer.o
Officer.o: Officer.cpp Officer.h
	$(CC) $(CFLAGS) -c Officer.cpp

# Create Supervisor.o
Supervisor.o: Supervisor.cpp Supervisor.h
	$(CC) $(CFLAGS) -c Supervisor.cpp

# Create main.o
main.o: main.cpp Employee.h Officer.h Supervisor.h
	$(CC) $(CFLAGS) -c main.cpp

# Logic to clean using "make clean"
clean:
	$(RM) employee *.o *~
