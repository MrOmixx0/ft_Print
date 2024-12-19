.PHONY: all clean fclean re

CC = cc

CFLAGS = -Wall -Werror -Wextra

NAME = libftprintf.a

FILES = ft_pointer.c ft_printf.c ft_putchar.c ft_putnbr.c ft_putstr.c ft_putuxx.c

OBJECTS = $(FILES:.c=.o)

all : $(NAME)

$(NAME): $(OBJECTS)
	ar rcs $(NAME) $^

%.o : %.c
	$(CC) $(CFLAGS) -c $^ -o $@

clean:
	rm -f $(OBJECTS)

fclean: clean
	rm -f $(OBJECTS) $(NAME)

re: fclean all
