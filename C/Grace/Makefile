NAME=Grace

S_FILES = $(NAME).c
CC			= 	gcc
CFLAGS		= 	-Wall -Wextra -Werror


all: $(NAME)

$(NAME):
	$(CC) $(CFLAGS) -o $(NAME) $(S_FILES)

clean:
	rm -f $(NAME)_kid.c

fclean: clean
	@rm -f $(NAME)
	@echo $(NAME) Deleted.

re: fclean all

.PHONY: all clean fclean re