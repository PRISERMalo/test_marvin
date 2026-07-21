CC		=	gcc
CFLAGS	=	-Wall -Wextra -Iinclude

NAME		=	hello_world
TESTS_NAME	=	unit_tests

SRC		=	src/main.c		\
			src/hello.c		\
			src/my_strlen.c

OBJ		=	$(SRC:.c=.o)

TESTS_SRC	=	tests/test_main.c	\
				src/hello.c			\
				src/my_strlen.c

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) $(OBJ) -o $(NAME)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

tests_run:
	$(CC) $(CFLAGS) $(TESTS_SRC) -o $(TESTS_NAME)
	./$(TESTS_NAME)

clean:
	rm -f $(OBJ)
	rm -f $(TESTS_NAME)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re tests_run
