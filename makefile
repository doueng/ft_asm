NAME = asm_tester
FLAGS = -Werror -Wextra -Wall

LIB = libfts.a
SRC = ft_bzero.s \
		ft_cat.s \
		ft_isalnum.s \
		ft_isalpha.s \
		ft_isascii.s \
		ft_isdigit.s \
		ft_isprint.s \
		ft_memcpy.s \
		ft_memset.s \
		ft_putchar.s \
		ft_puts.s \
		ft_sqrt.s \
		ft_strcat.s \
		ft_strclr.s \
		ft_strcmp.s \
		ft_strcpy.s \
		ft_strdup.s \
		ft_strlen.s \
		ft_strnew.s \
		ft_tolower.s \
		ft_toupper.s
SRCO = $(SRC:.c=.o)

TEST = asm_tester
TEST_SRC = main.c
TEST_SRCO = main.o

all: $(LIB) $(TEST)

$(LIB): $(SRCO)
	ar rc $(LIB) $(SRCO)

%.o: %.c
	nasm -fmacho64 $< -o $@

$(TEST):
	gcc $(FLAGS) $(TEST_SRC) $(LIB) -o $(NAME)

clean:
	/bin/rm -f $(SRCO)
	/bin/rm -f compile_commands.json
	/bin/rm -rf asm_tester.dSYM
	make clean -C $(LIBDIR)

fclean: clean
	/bin/rm -f $(NAME)
	make fclean -C $(LIBDIR)

re: fclean all
.SILENT:clean
