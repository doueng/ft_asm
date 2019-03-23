NAME = asm_tester
FLAGS = -Werror -Wextra -Wall

LIB = libfts.a
SRC = ft_bzero.s \
		ft_strcat.s \
		ft_isalnum.s \
		ft_isalpha.s \
		ft_isascii.s \
		ft_isdigit.s \
		ft_isprint.s \
		ft_tolower.s \
		ft_toupper.s \
		ft_strlen.s \
		ft_memset.s \
		ft_memcpy.s \
		ft_strdup.s \
		ft_strcpy.s \
		ft_strnew.s \
		ft_sqrt.s \
		ft_strclr.s \
		ft_putchar.s \
		ft_puts.s \
		ft_cat.s
SRCO = $(SRC:.s=.o)

NAME = asm_tester
TEST_SRC = main.c
TEST_SRCO = $(TEST_SRC:.c=.o)

all: $(NAME)

$(LIB): $(SRCO)
	ar rc $(LIB) $(SRCO)

%.o: %.s
	nasm -fmacho64 $(FLAGS) $< -o $@

clean:
	/bin/rm -f $(SRCO)
	/bin/rm -f $(TEST_SRCO)
	/bin/rm -f compile_commands.json
	/bin/rm -rf asm_tester.dSYM

fclean: clean
	/bin/rm -f $(LIB)
	/bin/rm -f $(NAME)

$(NAME): $(TEST_SRCO) $(LIB)
	gcc $(FLAGS) $(TEST_SRCO) $(LIB) -o $(NAME)

%.o: %.c
	gcc -c $(FLAGS) $< -o $@

re: fclean all
