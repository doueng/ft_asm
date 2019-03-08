NAME = asm_tester
LIBDIR = lib
LIB = $(LIBDIR)/libfts.a
FLAGS = -g -O0
SRC = main.c

SRCO = $(SRC:.c=.o)

all: $(NAME)

$(NAME): $(SRCO)
	@make -C $(LIBDIR)
	gcc $(FLAGS) $(SRCO) $(LIB) -o $(NAME)

%.o: %.c
	@gcc -c $(FLAGS) $< -o $@

clean:
	@/bin/rm -f $(SRCO)
	@/bin/rm -f compile_commands.json
	@/bin/rm -rf ft_traceroute.dSYM
	@make clean -C $(LIBDIR)

fclean: clean
	@/bin/rm -f $(NAME)
	@make fclean -C $(LIBDIR)

re: fclean all
