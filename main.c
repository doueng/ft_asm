#include <stdio.h>

extern void ft_bzero(void*, size_t);
extern char *strcat(char *restrict s1, const char *restrict s2);
extern int ft_isalpha(int);
extern int ft_isdigit(int);
extern int ft_isalnum(int);
extern int ft_isascii(int);
extern int ft_isprint(int);
extern int ft_toupper(int);
extern int ft_tolower(int);
extern int puts(const char *s);

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

	printf("\nTesting ft_toupper\n");
	chars_to_test(alph, sizeof(alph) / sizeof(int), ft_toupper);

	printf("\nTesting ft_tolower\n");
	chars_to_test(alph, sizeof(alph) / sizeof(int), ft_tolower);
	return (0);
}
