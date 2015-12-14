# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: emtermea <emtermea@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/16 16:24:08 by emtermea          #+#    #+#              #
#    Updated: 2015/03/22 14:53:52 by emtermea         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libfts.a

SRC = ft_bzero.s \
	 	ft_strcat.s \
		ft_isalpha.s \
		ft_isdigit.s \
		ft_isalnum.s \
		ft_isascii.s \
		ft_isprint.s \
		ft_toupper.s \
		ft_tolower.s \
		ft_puts.s \
		ft_strlen.s \
		ft_memset.s \
		ft_memcpy.s \
		ft_strdup.s \
		ft_cat.s \
		ft_putchar.s \
		ft_isspace.s \
		ft_isupper.s \
		ft_islower.s \
		ft_abs.s

OBJ = $(SRC:%.s=%.o)

.PHONY: all clean fclean re

all: $(NAME)

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

%.o: %.s libftasm.h
	@~/.brew/Cellar/nasm/2.11.06/bin/nasm -f macho64 $<

test: all
	@gcc -Wall -Wextra -Werror main.c libfts.a -o tests_asm

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all
