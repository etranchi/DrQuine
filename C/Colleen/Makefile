NAME=Colleen

S_FILES = $(NAME).c
CC			= 	gcc
CFLAGS		= 	-Wall -Wextra -Werror


all: $(NAME)

$(NAME):
	$(CC) $(CFLAGS) -o $(NAME) $(S_FILES)

clean:
	@echo "Nothing to be done."

fclean: clean
	@rm -f $(NAME)
	@echo $(NAME) Deleted.

re: fclean all

.PHONY: all clean fclean re