#include <stdio.h>
#include <ctype.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <assert.h>

#define GREEN "\033[32m"
#define WHITE "\033[0m"

#define X(ret) x(ret, __FILE__, __LINE__)
#define XV(ret) xv(ret, __FILE__, __LINE__)

void	ft_bzero(void *s, size_t n);
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
int		ft_sqrt(int nb);
void	ft_strclr(char *s);

int		x(int ret, char *file, int line)
{
	if (ret < 0)
	{
		printf("Error: file %s, line %d\n", file, line);
		exit(EXIT_FAILURE);
	}
	return (ret);
}

void	*xv(void *ret, char *file, int line)
{
	if (ret == NULL)
	{
		printf("Error: file %s, line %d\n", file, line);
		exit(EXIT_FAILURE);
	}
	return (ret);
}

typedef int (*char_func) (int);

void	test_charfunc(char_func mine, char_func system)
{
	for (int c=-5; c < 150; c++)
		assert(mine(c) == system(c));
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

void	test_puts()
{
	assert(ft_puts(GREEN"Testing ft_puts"WHITE)
		   == puts(GREEN"Testing ft_puts"WHITE));
	assert(ft_puts("") == puts(""));
}

void	test_strlen()
{
	ft_puts(GREEN"Testing ft_strlen"WHITE);
	char *rofl = XV(ft_strdup("rofl"));

	assert(ft_strlen(rofl) == strlen(rofl));
	assert(ft_strlen(rofl) == strlen(rofl));
	assert(ft_strlen(rofl + 2) == strlen(rofl + 2));
	free(rofl);

	assert(ft_strlen("hello") == strlen("hello"));
	assert(ft_strlen("hell") == strlen("hell"));
	assert(ft_strlen("hel") == strlen("hel"));
	assert(ft_strlen("he") == strlen("he"));
	assert(ft_strlen("h") == strlen("h"));
	assert(ft_strlen("") == strlen(""));
}

void	test_strcat()
{
	ft_puts(GREEN"Testing ft_strcat"WHITE);

	size_t	size = 100;
	char	*mine = XV(ft_strnew(size));
	char	*system = XV(ft_strnew(size));

	mine = ft_strcat(mine, "hello");
	system = strcat(system, "hello");
	assert(memcmp(mine, system, size) == 0);

	mine = ft_strcat(mine, "rofl!!!");
	system = strcat(system, "rofl!!!");
	assert(memcmp(mine, system, size) == 0);

	mine = ft_strcat(mine, "");
	system = strcat(system, "");
	assert(memcmp(mine, system, size) == 0);
	free(mine);
	free(system);
}

void	test_memset()
{
	ft_puts(GREEN"Testing ft_memset"WHITE);

	size_t	size = 100;
	char	*mine = XV(ft_strnew(size));
	char	*system = XV(ft_strnew(size));

	ft_memset(mine, 'c', size);
	memset(system, 'c', size);
	assert(memcmp(mine, system, size) == 0);

	ft_memset(mine, 'd', size / 2);
	memset(system, 'd', size / 2);
	assert(memcmp(mine, system, size) == 0);

	ft_memset(mine, 'r', 0);
	memset(system, 'r', 0);
	assert(memcmp(mine, system, size) == 0);
	free(mine);
	free(system);
}

void	test_memcpy()
{
	ft_puts(GREEN"Testing ft_memcpy"WHITE);

	int		size = 50;
	char	*mine = XV(ft_strnew(size));
	char	*system = XV(ft_strnew(size));
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
	free(mine);
	free(system);
}

void	test_strdup()
{
	ft_puts(GREEN"Testing ft_strdup"WHITE);

	char	*mine;
	char	*system;
	char	*to_cpy = "hello";

	mine = XV(ft_strdup(to_cpy));
	system = XV(strdup(to_cpy));
	assert(strcmp(mine, system) == 0);
	free(mine);
	free(system);

	mine = XV(ft_strdup("rofl"));
	system = XV(strdup("rofl"));
	assert(strcmp(mine, system) == 0);
	free(mine);
	free(system);

	mine = XV(ft_strdup(""));
	system = XV(strdup(""));
	assert(strcmp(mine, system) == 0);
	free(mine);
	free(system);
}

void	test_bzero()
{
	ft_puts(GREEN"Testing ft_bzero"WHITE);

	size_t	size = 100;
	char	*mine = XV(malloc(size));
	char	*system = XV(malloc(size));

	mine[20] = 'a';
	mine[0] = 'b';
	mine[size - 1] = 'c';
	system[20] = 'a';
	system[0] = 'b';
	system[size -1] = 'c';
	ft_bzero(mine, size);
	bzero(system, size);
	assert(memcmp(mine, system, size) == 0);
	free(mine);
	free(system);
}

void	test_strcpy()
{
	ft_puts(GREEN"Testing ft_strcpy"WHITE);

	size_t	size = 100;
	char	*mine = XV(ft_strnew(size));
	char	*system = XV(ft_strnew(size));

	char	*to_cpy = "hello";
	system = strcpy(system, to_cpy);
	mine = ft_strcpy(mine, to_cpy);
	assert(memcmp(mine, system, size) == 0);

	to_cpy = "";
	mine = ft_strcpy(mine, to_cpy);
	system = strcpy(system, to_cpy);
	assert(memcmp(mine, system, size) == 0);

	to_cpy = "roflcopter";
	mine = ft_strcpy(mine, to_cpy);
	system = strcpy(system, to_cpy);
	assert(memcmp(mine, system, size) == 0);
	free(mine);
	free(system);
}

void	test_strnew()
{
	ft_puts(GREEN"Testing ft_strnew"WHITE);

	size_t	size = 100;
	char	*mine = XV(ft_strnew(size));
	char	*system = XV(calloc(size + 1, 1));

	assert(memcmp(mine, system, size + 1) == 0);
	free(mine);
	free(system);

	size = 0;
	mine = ft_strnew(size);
	system = calloc(size + 1, 1);

	assert(memcmp(mine, system, size + 1) == 0);
	free(mine);
	free(system);
}

void	test_sqrt()
{
	ft_puts(GREEN"Testing ft_sqrt"WHITE);
	assert(ft_sqrt(4) == 2);
	assert(ft_sqrt(3) == 0);
	assert(ft_sqrt(-1) == 0);
}

void	test_strclr()
{
	ft_puts(GREEN"Testing ft_strclr"WHITE);

	char	*mine = XV(ft_strdup("rofl"));
	char	*system = XV(ft_strdup(mine));

	ft_strclr(mine);
	bzero(system, ft_strlen(system));
	assert(memcmp(mine, system, ft_strlen(mine)) == 0);
	free(mine);
	free(system);

	mine = XV(ft_strdup(""));
	system = XV(ft_strdup(mine));

	ft_strclr(mine);
	bzero(system, ft_strlen(system));
	assert(memcmp(mine, system, ft_strlen(mine)) == 0);
	free(mine);
	free(system);
}

void	test_putchar()
{
	ft_puts(GREEN"Testing ft_putchar"WHITE);

	test_charfunc(ft_putchar, putchar);
}

void	test_cat()
{
	int fd = open("./main.c", O_RDONLY);
	ft_cat(fd);
	ft_cat(-42);
	ft_cat(0);
	X(close(fd));
}

int		main(int argc, char *argv[])
{
	test_bzero();
	test_strcat();
	test_all_charfuncs();
	test_puts();

	test_strlen();
	test_memset();
	test_memcpy();
	test_strdup();

	(void)argv;
	if (argc > 1)
		test_cat();

	test_strcpy();
	test_strnew();
	test_sqrt();
	test_strclr();
	test_putchar();
	return (0);
}
