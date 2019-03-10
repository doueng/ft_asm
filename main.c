#include <stdio.h>
#include <ctype.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <assert.h>
#include <math.h>

#define GREEN "\033[32m"
#define WHITE "\033[0m"

void	ft_bzero(void*, size_t);
int		ft_isalpha(int c);
int		ft_isdigit(int c);
int		ft_isalnum(int c);
int		ft_isascii(int c);
int		ft_isprint(int c);
int		ft_toupper(int c);
int		ft_tolower(int c);
int		ft_puts(const char *s);
size_t	ft_strlen(const char *s);
char	*ft_strcat(char *restrict s1, const char *restrict s2);
void	*ft_memset(void *b, int c, size_t len);
void	*ft_memcpy(void *restrict dst, const void *restrict src, size_t n);
char	*ft_strdup(const char *s1);

void	ft_cat(int fd);

char	*ft_strcpy(char * dst, const char * src);
char	*ft_strnew(size_t size);
int		ft_putchar(int c);
int		ft_strcmp(const char *s1, const char *s2);
int		ft_sqrt(int nb);

typedef int (*char_func) (int);

void	test_charfunc(char_func mine, char_func system)
{
	for (int c=-5; c < 150; c++)
	{
		assert(mine(c) == system(c));
		ft_putchar(c);
	}
	ft_putchar('\n');
}

void	test_all_charfuncs()
{
	ft_puts(GREEN"Testing ft_isalpha"WHITE);
	test_charfunc(ft_isalpha, isalpha);

	ft_puts(GREEN"Testing ft_isdigit"WHITE);
	test_charfunc(ft_isdigit, isdigit);

	ft_puts(GREEN"Testing ft_isalnum"WHITE);
	test_charfunc(ft_isalnum, isalnum);

	ft_puts(GREEN"Testing ft_isascii"WHITE);
	test_charfunc(ft_isascii, isascii);

	ft_puts(GREEN"Testing ft_isprint"WHITE);
	test_charfunc(ft_isprint, isprint);

	ft_puts(GREEN"Testing ft_toupper"WHITE);
	test_charfunc(ft_toupper, toupper);

	ft_puts(GREEN"Testing ft_tolower"WHITE);
	test_charfunc(ft_tolower, tolower);
}

void	test_strlen()
{
	ft_puts(GREEN"Testing ft_strlen\n"WHITE);
	assert(ft_strlen("hello") == strlen("hello"));
	assert(ft_strlen("") == strlen(""));
}

void	test_strcat()
{
	ft_puts(GREEN"Testing ft_strcat\n"WHITE);
	char	*mine = calloc(100, 1);
	char	*system = calloc(100, 1);

	ft_strcat(mine, "hello");
	strcat(system, "hello");
	assert(strcmp(mine, system) == 0);

	ft_strcat(mine, "hello");
	strcat(system, "hello");
	assert(strcmp(mine, system) == 0);

	ft_strcat(mine, "");
	strcat(system, "");
	assert(strcmp(mine, system) == 0);
}

void	test_memset()
{
	ft_puts(GREEN"Testing ft_memset\n"WHITE);

	int		size = 50;
	char	*mine = calloc(size, 1);
	char	*system = calloc(size, 1);

	ft_memset(mine, 'c', size);
	memset(system, 'c', size);
	assert(memcmp(mine, system, size) == 0);

	ft_memset(mine, 'c', 0);
	memset(system, 'c', 0);
	assert(memcmp(mine, system, size) == 0);
}

void	test_memcpy()
{
	ft_puts(GREEN"Testing ft_memcpy\n"WHITE);

	int		size = 50;
	char	*mine = calloc(size, 1);
	char	*system = calloc(size, 1);
	char	*to_cpy = "hello";
	int		len = ft_strlen(to_cpy);

	ft_memcpy(mine, to_cpy, len);
	memcpy(system, to_cpy, len);
	assert(memcmp(mine, system, size) == 0);

	ft_memcpy(mine, "rofl", 3);
	memcpy(system, "rofl", 3);
	assert(memcmp(mine, system, size) == 0);

	ft_memcpy(mine, "hi", 0);
	memcpy(system, "hi", 0);
	assert(memcmp(mine, system, size) == 0);
}

void	test_strdup()
{
	ft_puts(GREEN"Testing ft_strdup\n"WHITE);

	char	*mine;
	char	*system;
	char	*to_cpy = "hello";

	mine = ft_strdup(to_cpy);
	system = strdup(to_cpy);
	assert(strcmp(mine, system) == 0);

	mine = ft_strdup("rofl");
	system = strdup("rofl");
	assert(strcmp(mine, system) == 0);

	mine = ft_strdup("");
	system = strdup("");
	assert(strcmp(mine, system) == 0);
}

void	test_bzero()
{
	ft_puts(GREEN"Testing ft_bzero\n"WHITE);

	size_t	size = 100;
	char	*mine = malloc(size);
	char	*system = malloc(size);

	mine[20] = 'a';
	mine[0] = 'b';
	mine[size - 1] = 'c';
	system[20] = 'a';
	system[0] = 'b';
	system[size -1] = 'c';
	ft_bzero(mine, size);
	bzero(system, size);
	assert(memcmp(mine, system, size) == 0);
}

void	test_cat()
{
	int fd = open("./Makefile", O_RDONLY);
	ft_cat(fd);
	/* ft_cat(0); */
}

void	test_strcpy()
{
	ft_puts(GREEN"Testing ft_strcpy\n"WHITE);

	size_t	size = 100;
	char	*mine = calloc(size, 1);
	char	*system = calloc(size, 1);

	char	*to_cpy = "hello";
	mine = ft_strcpy(mine, to_cpy);
	system = strcpy(system, to_cpy);
	assert(strcmp(mine, system) == 0);
	assert(memcmp(mine, system, size) == 0);

	to_cpy = "";
	mine = ft_strcpy(mine, to_cpy);
	system = strcpy(system, to_cpy);
	assert(strcmp(mine, system) == 0);
	assert(memcmp(mine, system, size) == 0);

	to_cpy = "roflcopter";
	mine = ft_strcpy(mine, to_cpy);
	system = strcpy(system, to_cpy);
	assert(strcmp(mine, system) == 0);
	assert(memcmp(mine, system, size) == 0);
}

int		main(void)
{
	/* test_bzero(); */
	test_strcat();
	/* test_all_charfuncs(); */

	/* test_strlen(); */
	/* test_memset(); */
	/* test_memcpy(); */
	/* test_strdup(); */

	/* test_cat(); */

	/* test_strcpy(); */

	return (0);
}
