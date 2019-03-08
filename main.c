#include <stdio.h>
#include <string.h>
#include <stdlib.h>

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

char	*ft_strnew(size_t size);
int		ft_putchar(int c);

typedef int (*char_func) (int);

void	test_charfunc(int c, char_func f)
{
	printf("(in  char %c int %d) ", c, c);
	printf("(res char %c int %d)\n", f(c), f(c));
}

void	chars_to_test(int *chars, size_t num_chars, char_func f)
{
	for (size_t i = 0; i < num_chars; i++)
		test_charfunc(chars[i], f);
}

int		main(void)
{
	ft_putchar('a');

	/* ft_cat(0); */
	/* void *rofl = strdup("hello"); */
	/* ft_bzero(rofl, ft_strlen(rofl)); */
	/* printf("((bzero %s))\n", rofl); */

	/* int alph[] = { 'a', 'z', 'A', 'a' - 1, 'z' + 1, 'A' - 1, 'Z' + 1 }; */
	/* int nums[] = { '0', '4', '9', '0' - 1, '9' + 1 }; */
	/* printf("Testing ft_isalpha\n"); */
	/* chars_to_test(alph, sizeof(alph) / sizeof(int), ft_isalpha); */

	/* printf("\nTesting ft_isdigit\n"); */
	/* chars_to_test(nums, sizeof(nums) / sizeof(int), ft_isdigit); */

	/* printf("\nTesting ft_isalnum\n"); */
	/* chars_to_test(nums, sizeof(nums) / sizeof(int), ft_isalnum); */
	/* chars_to_test(alph, sizeof(alph) / sizeof(int), ft_isalnum); */

	/* int ascii[] = { 0, 60, 127, -1, 128}; */
	/* printf("\nTesting ft_isascii\n"); */
	/* chars_to_test(ascii, sizeof(ascii) / sizeof(int), ft_isascii); */

	/* int printa[] = {' ', '~', ' ' - 1, '~' + 1}; */
	/* printf("\nTesting ft_isprint\n"); */
	/* chars_to_test(printa, sizeof(printa) / sizeof(int), ft_isprint); */

	/* printf("\nTesting ft_tolower\n"); */
	/* chars_to_test(alph, sizeof(alph) / sizeof(int), ft_tolower); */

	/* printf("\nTesting ft_puts\n"); */
	/* ft_puts("abc"); */
	/* ft_puts(""); */
	/* ft_puts(NULL); */

	/* printf("\nTesting ft_strlen\n"); */
	/* printf("%zu\n", ft_strlen("abc")); */
	/* ft_strlen(NULL); */

	/* printf("\nTesting ft_memset\n"); */
	/* char *str = strdup("hello"); */
	/* ft_memset(str, 'c', ft_strlen(str)); */
	/* printf("ft_memset 'c' %s\n", str); */
	/* str = strdup(""); */
	/* ft_memset(str, 'c', ft_strlen(str)); */
	/* ft_memset(NULL, 'd', 1000); */
	/* printf("ft_memset 'c' %s\n", str); */

	/* printf("\nTesting ft_memcpy\n"); */
	/* str = strdup("hello"); */
	/* printf("%s\n", str); */
	/* printf("((%ld))\n", ft_strlen(str)); */
	/* char *cpy = ft_strnew(ft_strlen(str)); */
	/* cpy[ft_strlen(str)] = 0; */
	/* ft_memcpy(cpy, str, ft_strlen(str)); */
	/* printf("%s\n", cpy); */
	/* ft_memcpy(NULL, str, ft_strlen(str)); */
	/* ft_memcpy(cpy, NULL, ft_strlen(str)); */
	/* ft_memcpy(cpy, str, 0); */

	return (0);
}
