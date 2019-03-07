#include <stdio.h>

extern int ft_isalpha(int);

void	test_isalpha(int c)
{
	printf("(%c) ", c);
	printf("(%d)\n", ft_isalpha(c));
}

int		main(void)
{
	printf("Testing ft_isalpha\n");
	test_isalpha('a');
	test_isalpha('A');
	test_isalpha('z');
	test_isalpha('Z');
	test_isalpha(0);
	test_isalpha(10000);
	test_isalpha(-100);
	return (0);
}
