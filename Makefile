# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: buntakansirikamonthip <buntakansirikamonth +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/12/12 13:30:17 by buntakansirikamo  #+#    #+#              #
#    Updated: 2024/04/05 23:28:21 by buntakansirikamo ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = inception
WEB_DIR = ~/data


all: create_dir $(NAME)

create_dir:
	mkdir -p $(WEB_DIR)/mariadb
	mkdir -p $(WEB_DIR)/wordpress

$(NAME): up


up:
	docker compose -f ./srcs/docker-compose.yml up -d --build

down:
	docker compose -f ./srcs/docker-compose.yml down

clean: down
	docker rmi mariadb_image nginx_image wordpress_image

fclean: clean
	docker system prune -af
	docker volume prune -f
	docker exec -it wordpress sh -c "rm -rf /var/www/html/*"
	docker exec -it mariadb sh -c "rm -rf /var/lib/mysql/*"
	rm -rf $(WEB_DIR)

re: clean all

.PHONY: all create_dir $(NAME) up down clean re fclean