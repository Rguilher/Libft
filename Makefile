# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rguilher <rguilher@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/09/28 22:05:00 by rguilher          #+#    #+#              #
#    Updated: 2022/10/11 11:14:27 by rguilher         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRC = ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c \
ft_strlen.c ft_tolower.c ft_toupper.c ft_atoi.c ft_memset.c ft_bzero.c \
ft_memcpy.c ft_memmove.c ft_strlcpy.c ft_strchr.c ft_strrchr.c ft_memcmp.c \
ft_strncmp.c ft_strnstr.c ft_calloc.c ft_memchr.c ft_strdup.c ft_substr.c \
ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_strjoin.c ft_strmapi.c \
ft_strtrim.c ft_strlcat.c ft_split.c ft_putnbr_fd.c ft_itoa.c ft_striteri.c \

OBJS = $(SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	ar -rcs $(NAME) $(OBJS)

$(OBJS):
	gcc -Wall -Werror -Wextra -c $(@:.o=.c) -o $@

clean:
	/bin/rm -f *.o

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all

.PHONY : all clean fclean re
