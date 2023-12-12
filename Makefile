# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: buntakansirikamonthip <buntakansirikamonth +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/12/12 13:30:17 by buntakansirikamo  #+#    #+#              #
#    Updated: 2023/12/12 13:45:25 by buntakansirikamo ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = inception

all: $(NAME)

$(NAME): up


up:
	docker compose -f ./srcs/docker-compose.yml up -d