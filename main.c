#include <stdio.h>

extern int ft_isalpha(int);
extern int ft_toupper(int c);

typedef int (*char_func) (int);

void	test_charfunc(int c, char_func f)
{
	printf("(char %c) ", c);
	printf("(res char %c) ", f(c));
	printf("(res int %d)\n", f(c));
}

int		main(void)
{
	/* printf("Testing ft_isalpha\n"); */
	/* test_isalpha('a'); */
	/* test_isalpha('A'); */
	/* test_isalpha('z'); */
	/* test_isalpha('Z'); */
	/* test_isalpha(0); */
	/* test_isalpha(10000); */
	/* test_isalpha(-100); */
	/* test_isalpha('a' - 1); */
	/* test_isalpha('z' + 1); */
	/* test_isalpha('A' - 1); */
	/* test_isalpha('Z' + 1); */
	printf("Testing ft_toupper\n");
	test_charfunc('a', ft_toupper);
	test_charfunc('z', ft_toupper);
	test_charfunc('A', ft_toupper);
	test_charfunc('Z', ft_toupper);
	test_charfunc('a' - 1, ft_toupper);
	test_charfunc('z' + 1, ft_toupper);
	test_charfunc('A' - 1, ft_toupper);
	test_charfunc('Z' + 1, ft_toupper);
	test_charfunc(1000, ft_toupper);
	test_charfunc(0, ft_toupper);
	test_charfunc(-1000, ft_toupper);
	return (0);
}
