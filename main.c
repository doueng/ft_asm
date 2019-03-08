#include <stdio.h>

void	ft_bzero(void*, size_t);
char	*ft_strcat(char *restrict s1, const char *restrict s2);
int		ft_isalpha(int);
int		ft_isdigit(int);
int		ft_isalnum(int);
int		ft_isascii(int);
int		ft_isprint(int);
int		ft_toupper(int);
int		ft_tolower(int);
int		ft_puts(const char *s);
size_t	ft_strlen(const char *s);

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
	int alph[] = { 'a', 'z', 'A', 'a' - 1, 'z' + 1, 'A' - 1, 'Z' + 1 };
	int nums[] = { '0', '4', '9', '0' - 1, '9' + 1 };
	printf("Testing ft_isalpha\n");
	chars_to_test(alph, sizeof(alph) / sizeof(int), ft_isalpha);

	printf("\nTesting ft_isdigit\n");
	chars_to_test(nums, sizeof(nums) / sizeof(int), ft_isdigit);

	printf("\nTesting ft_isalnum\n");
	chars_to_test(nums, sizeof(nums) / sizeof(int), ft_isalnum);
	chars_to_test(alph, sizeof(alph) / sizeof(int), ft_isalnum);

	int ascii[] = { 0, 60, 127, -1, 128};
	printf("\nTesting ft_isascii\n");
	chars_to_test(ascii, sizeof(ascii) / sizeof(int), ft_isascii);

	int printa[] = {' ', '~', ' ' - 1, '~' + 1};
	printf("\nTesting ft_isprint\n");
	chars_to_test(printa, sizeof(printa) / sizeof(int), ft_isprint);

	printf("\nTesting ft_tolower\n");
	chars_to_test(alph, sizeof(alph) / sizeof(int), ft_tolower);

	printf("\nTesting ft_puts\n");
	ft_puts("abc");
	ft_puts("");
	ft_puts(NULL);

	printf("\nTesting ft_strlen\n");
	printf("%zu\n", ft_strlen("abc"));
	ft_strlen(NULL);
	return (0);
}
