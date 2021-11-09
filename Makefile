# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vduriez <vduriez@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/10/23 15:42:36 by vduriez           #+#    #+#              #
#    Updated: 2021/11/09 14:33:56 by vduriez          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


CC = gcc
FLAGS = -Wall -Wextra -Werror -g3 -fsanitize=address
NAME = push_swap
NAME_BONUS = checker
INCLUDES = push_swap.h
SRCS =	ft_atol.c				\
		ft_best_push.c			\
		ft_best_sort.c			\
		ft_best_sort_utils.c	\
		ft_best_sort_utils2.c	\
		ft_clear.c				\
		ft_op_push.c			\
		ft_op_rotate.c			\
		ft_op_rotate2.c			\
		ft_perfect_sort.c		\
		ft_push_swap.c			\
		ft_smart_rotate.c		\
		ft_sort_3to5.c			\
		ft_sortedbutwrongpos.c	\
		ft_utils.c				\
		ft_utilscl.c			\
		main.c
SRCS_BONUS =	checker.c				\
				checker_utils.c			\
				get_next_line.c			\
				get_next_line_utils.c	\
				ft_utilscl.c			\
				ft_clear.c				\
				ft_checker_push.c		\
				ft_checker_rotate.c		\
				ft_checker_rotate2.c	\
				ft_atol.c				\

OBJ = $(SRCS:.c=.o)
BONUS_OBJ = $(SRCS_BONUS:.c=.o)

all:		$(NAME)

$(NAME):	$(INCLUDES) $(SRCS)
		$(CC) $(FLAGS) $(SRCS) -o $(NAME)

bonus:		$(INCLUDES) $(SRCS_BONUS)
		$(CC) $(FLAGS) $(SRCS_BONUS) -o $(NAME_BONUS)

clean:
		rm -rf $(OBJ) $(BONUS_OBJ)

fclean: clean
		rm -rf $(NAME) $(NAME_BONUS)

re: fclean all

.PHONY : all clean fclean re bonus