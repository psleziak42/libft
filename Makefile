SRCS	= 	ft_atoi.c \
		ft_bzero.c \
		ft_calloc.c \
		ft_itoa.c \
		ft_isalnum.c \
		ft_isalpha.c \
		ft_isascii.c \
		ft_isdigit.c \
		ft_isprint.c \
		ft_memccpy.c \
		ft_memchr.c \
		ft_memcmp.c \
		ft_memcpy.c \
		ft_memmove.c \
		ft_memset.c \
		ft_strchr.c \
		ft_strdup.c \
		ft_strjoin.c \
		ft_strlcat.c \
		ft_strlcpy.c \
		ft_strlen.c \
		ft_strncmp.c \
		ft_strnstr.c \
		ft_strrchr.c \
		ft_strtrim.c \
		ft_substr.c \
		ft_tolower.c \
		ft_toupper.c \
		ft_strmapi.c \
		ft_putchar_fd.c \
		ft_putnbr_fd.c \
		ft_putstr_fd.c \
		ft_putendl_fd.c \
		ft_split.c \
	

OBJS	= $(SRCS:.c=.o)

SRCSb	=	ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c \
		ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c \
	
	
OBJSb	= $(SRCSb:.c=.o)

NAME	= libft.a

CC = gcc
RM = rm -f

CFLAGS = -Wall -Wextra -Werror

.c.o:
	$(CC) $(CFLAGS) -c $< -o $(<:.c=.o)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS) 

all:	$(NAME)

bonus:	$(OBJS) $(OBJSb)
	ar rcs $(NAME) $(OBJS) $(OBJSb)

run:
	$(CC) $(CFLAGS) main.c -I. -L. -lft && ./a.out

clean:
	$(RM) $(OBJS) $(OBJSb)

fclean:	clean
	$(RM) $(NAME)

re: fclean all

so:
	$(CC) -fPIC $(CFLAGS) $(SRC) 
	gcc -shared -o libft.so $(OBJ)
