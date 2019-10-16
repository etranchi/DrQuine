NAME =Colleen
S_FILES = $(NAME).s
O_FILES = $(S_FILES:.s=.o)
NASM = nasm -f macho64

all: $(NAME)

$(NAME): $(O_FILES)
	ld $< -o $@ -macosx_version_min 10.11 -lSystem

$(O_FILES): %.o:%.s
	$(NASM) $< -o $@

clean:
	@rm -rf $(O_FILES)

fclean: clean
	@rm -f $(NAME)
	@echo $(NAME) Deleted.

re: fclean all

.PHONY: all clean fclean re