NAME=Sully

S_FILES = $(NAME).c
CC			= 	gcc
CFLAGS		= 	-Wall -Wextra -Werror


all: $(NAME)

$(NAME):
	$(CC) $(CFLAGS) -o $(NAME) $(S_FILES)

clean:
	rm -f $(NAME)_*.c

fclean: clean
	@rm -f $(NAME) $(NAME)_*
	@echo $(NAME)s Deleted.

re: fclean all

.PHONY: all clean fclean re