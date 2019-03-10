# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: douglas <douglas@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/03/20 09:25:40 by dengstra          #+#    #+#              #
#    Updated: 2017/07/13 14:36:59 by dengstra         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libfts.a

SRC = ${wildcard *.s}

SRCO = $(SRC:.s=.o)

all: $(NAME)

$(NAME): $(SRCO)
	@ar rc $(NAME)  $(SRCO)

%.o: %.s
	@nasm -fmacho64 $< -o $@

clean:
	@/bin/rm -f $(SRCO)

fclean: clean
	@/bin/rm -f $(NAME)

re: fclean all
