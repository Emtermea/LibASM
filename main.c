/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: emtermea <emtermea@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/04/02 17:48:57 by emtermea          #+#    #+#             */
/*   Updated: 2015/04/02 17:49:05 by emtermea         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libftasm.h"
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <string.h>

# define MAGENTA "\033[35m"
# define CYAN "\033[1;36m"
# define GREEN "\033[1;32;40m"
# define RED "\033[1;31;40m"
# define BLUE "\033[1;34;40m"
# define RESET "\033[0m"

void		check_strcat(void)
{
	char		str[50];

	str[0] = '\0';
	ft_bzero(str, 5);
	printf("* STRCAT *\n");
	printf(" Str init with empy char : %s \n", ft_strcat(str, ""));
	printf(" Str + 'h' = %s \n", ft_strcat(str, "h"));
	printf(" Str + 'ello' = %s \n", ft_strcat(str, "ello"));
	printf(" Str + '!' = %s \n", ft_strcat(str, "!"));
	printf(" %sSUCCESS%s \n", GREEN, RESET);
	printf(" %sEND OF STRCAT%s \n", MAGENTA, RESET);
}

void		check_bzero(void)
{
	char	str[4] = "jui";

	printf("* BZERO *\n");
	printf(" str[0] = %d = %c \n", str[0], str[0]);
	printf(" str[1] = %d = %c \n", str[1], str[1]);
	printf(" str[2] = %d = %c \n", str[2], str[2]);
	printf(" FT_BZERO DONE \n");
	ft_bzero(str, 3);
	printf(" str[0] = %d = %c \n", str[0], str[0]);
	printf(" str[1] = %d = %c \n", str[1], str[1]);
	printf(" str[2] = %d = %c \n", str[2], str[2]);
	printf(" Test with NULL \n");
	ft_bzero(NULL, 0);
	printf("\n");
	printf(" %sSUCCESS%s \n", GREEN, RESET);
	printf(" %sEND OF BZERO%s \n", MAGENTA, RESET);
}

void		check_alpha(void)
{
	printf("* ALPHA *\n");
	printf(" Test on %c, return = %d \n", 'a', ft_isalpha('a'));
	printf(" Test on %c, return = %d \n", 'z', ft_isalpha('z'));
	printf(" Test on %c, return = %d \n", '*', ft_isalpha('*'));
	printf(" Test on %c, return = %d \n", 'Z', ft_isalpha('Z'));
	printf(" Test on %c, return = %d \n", 'A', ft_isalpha('A'));
	printf(" Test on %c, return = %d \n", '0', ft_isalpha('0'));
	printf(" Test on %c, return = %d \n", '9', ft_isalpha('9'));
	printf(" Test on %c, return = %d \n", '4', ft_isalpha('4'));
	printf(" Test with NULL \n");
	printf(" Test return = %d \n", ft_isalpha(0));
	printf(" %sSUCCESS%s \n", GREEN, RESET);
	printf(" %sEND OF ALPHA%s \n", MAGENTA, RESET);
}

void		check_digit(void)
{
	printf("* DIGIT *\n");
	printf(" Test on %c, return = %d \n", 'a', ft_isdigit('a'));
	printf(" Test on %c, return = %d \n", 'z', ft_isdigit('z'));
	printf(" Test on %c, return = %d \n", '*', ft_isdigit('*'));
	printf(" Test on %c, return = %d \n", 'Z', ft_isdigit('Z'));
	printf(" Test on %c, return = %d \n", 'A', ft_isdigit('A'));
	printf(" Test on %c, return = %d \n", '0', ft_isdigit('0'));
	printf(" Test on %c, return = %d \n", '9', ft_isdigit('9'));
	printf(" Test on %c, return = %d \n", '4', ft_isdigit('4'));
	printf(" Test with NULL \n");
	printf(" Test return = %d \n", ft_isdigit(0));
	printf(" %sSUCCESS%s \n", GREEN, RESET);
	printf(" %sEND OF DIGIT%s \n", MAGENTA, RESET);
}

void		check_alnum(void)
{
	printf("* ALNUM *\n");
	printf(" Test on %c, return = %d \n", 'a', ft_isalnum('a'));
	printf(" Test on %c, return = %d \n", 'z', ft_isalnum('z'));
	printf(" Test on %c, return = %d \n", '*', ft_isalnum('*'));
	printf(" Test on %c, return = %d \n", 'Z', ft_isalnum('Z'));
	printf(" Test on %c, return = %d \n", 'A', ft_isalnum('A'));
	printf(" Test on %c, return = %d \n", '0', ft_isalnum('0'));
	printf(" Test on %c, return = %d \n", '9', ft_isalnum('9'));
	printf(" Test on %c, return = %d \n", '4', ft_isalnum('4'));
	printf(" Test with NULL \n");
	printf(" Test return = %d \n", ft_isalnum(0));
	printf(" %sSUCCESS%s \n", GREEN, RESET);
	printf(" %sEND OF ALNUM%s \n", MAGENTA, RESET);
}

void		check_isascii(void)
{
	printf("* ISASCII *\n");
	printf(" Test on %c : %d, return = %d \n", 'a', 'a', ft_isascii('a'));
	printf(" Test on %c : %d, return = %d \n", 'z', 'z', ft_isascii('z'));
	printf(" Test on %c : %d, return = %d \n", 'A', 'A', ft_isascii('A'));
	printf(" Test on %c : %d, return = %d \n", 'Z', 'Z', ft_isascii('Z'));
	printf(" Test on %c : %d, return = %d \n", 245, 245, ft_isascii(245));
	printf(" Test on %c : %d, return = %d \n", 221, 221, ft_isascii(221));
	printf(" Test with NULL \n");
	printf(" Test return = %d \n", ft_isascii(0));
	printf(" %sSUCCESS%s \n", GREEN, RESET);
	printf(" %sEND OF ISASCII%s \n", MAGENTA, RESET);
}

void		check_isprint(void)
{
	printf("* ISPRINT *\n");
	printf(" Test on %c : %d, return = %d \n", 'a', 'a', ft_isprint('a'));
	printf(" Test on %c : %d, return = %d \n", 'z', 'z', ft_isprint('z'));
	printf(" Test on %c : %d, return = %d \n", 'A', 'A', ft_isprint('A'));
	printf(" Test on %c : %d, return = %d \n", 'Z', 'Z', ft_isprint('Z'));
	printf(" Test on %c : %d, return = %d \n", 245, 245, ft_isprint(245));
	printf(" Test on %c : %d, return = %d \n", 221, 221, ft_isprint(221));
	printf(" Test with NULL \n");
	printf(" Test return = %d \n", ft_isprint(0));
	printf(" %sSUCCESS%s \n", GREEN, RESET);
	printf(" %sEND OF ISASCII%s \n", MAGENTA, RESET);
}

void		check_toupper(void)
{
	printf("* TOUPPER *\n");
	printf(" Test on %c, return = %c \n", 'a', ft_toupper('a'));
	printf(" Test on %c, return = %c \n", 'z', ft_toupper('z'));
	printf(" Test on %c, return = %c \n", '*', ft_toupper('*'));
	printf(" Test on %c, return = %c \n", 'Z', ft_toupper('Z'));
	printf(" Test on %c, return = %c \n", 'A', ft_toupper('A'));
	printf(" Test on %c, return = %c \n", '0', ft_toupper('0'));
	printf(" Test on %c, return = %c \n", '9', ft_toupper('9'));
	printf(" Test on %c, return = %c \n", '4', ft_toupper('4'));
	printf(" Test with NULL \n");
	printf(" Test return = %c \n", ft_toupper(0));
	printf(" %sSUCCESS%s \n", GREEN, RESET);
	printf(" %sEND OF TOUPPER%s \n", MAGENTA, RESET);
}

void		check_tolower(void)
{
	printf("* TOLOWER *\n");
	printf(" Test on %c, return = %c \n", 'a', ft_tolower('a'));
	printf(" Test on %c, return = %c \n", 'z', ft_tolower('z'));
	printf(" Test on %c, return = %c \n", '*', ft_tolower('*'));
	printf(" Test on %c, return = %c \n", 'Z', ft_tolower('Z'));
	printf(" Test on %c, return = %c \n", 'A', ft_tolower('A'));
	printf(" Test on %c, return = %c \n", '0', ft_tolower('0'));
	printf(" Test on %c, return = %c \n", '9', ft_tolower('9'));
	printf(" Test on %c, return = %c \n", '4', ft_tolower('4'));
	printf(" Test with NULL \n");
	printf(" Test return = %c \n", ft_tolower(0));
	printf(" %sSUCCESS%s \n", GREEN, RESET);
	printf(" %sEND OF TOLOWER%s \n", MAGENTA, RESET);
}

void		check_strlen(void)
{
	char	str[5] = "abcd";
	char	str2[3] = "op";

	printf("* STRLEN *\n");
	printf(" %s, sized: %d \n", str, (int)ft_strlen(str));
	printf(" %s, sized: %d \n", str2, (int)ft_strlen(str2));
	printf(" %sSUCCESS%s \n", GREEN, RESET);
	printf(" %sEND OF STRLEN%s \n", MAGENTA, RESET);
}

void		check_puts(void)
{
	printf("* PUTS *\n");
	ft_puts(" a ");
	ft_puts(" $#@#',./,~!@~*+");
	printf(" Test with null \n");
	ft_puts(NULL);
	printf(" %sSUCCESS%s \n", GREEN, RESET);
	printf(" %sEND OF PUTS%s \n", MAGENTA, RESET);
}

void		check_memset(void)
{
	printf("* MEMSET *\n");
	printf(" Replace 3 char by 'A'\n");
	printf(" Befor ft_memset: %s \n", "abcd");
	printf(" After ft_memset: %s \n", (char*)ft_memset(strdup("abcd"), 'A', 3));
	printf(" True fonction %s \n", (char*)memset(strdup("abcd"), 'A', 3));
	printf(" %sSUCCESS%s \n", GREEN, RESET);
	printf(" %sEND OF MEMSET%s \n", MAGENTA, RESET);
}

void		check_memcpy(void)
{
	char		str[2];
	char		str2[6];

	ft_bzero(str, 2);
	ft_bzero(str2, 6);

	printf("* MEMCPY *\n");
	printf(" Str1 size: %d, Content: %s \n", (int)ft_strlen(str), str);
	printf(" Str2 size: %d, Content: %s \n", (int)ft_strlen(str2), str2);
	ft_memcpy((void*)str, (void*)"a", 1);
	ft_memcpy((void*)str2, (void*)"hello", 5);
	printf(" Using ft_memcpy \n");
	printf(" Str1 size: %d, Content: %s \n", (int)ft_strlen(str), str);
	printf(" Str2 size: %d, Content: %s \n", (int)ft_strlen(str2), str2);
	printf(" %sSUCCESS%s \n", GREEN, RESET);
	printf(" %sEND OF MEMCPY%s \n", MAGENTA, RESET);
}

void		check_strdup(void)
{
	char		*str;
	char		f[] = "h";
	char		s[] = "hello";
	char		t[] = "";

	printf("* STRDUP *\n");
	printf(" Str init \n");
	str = ft_strdup(f);
	printf(" Str after strdup (\"%s\") %d\n", str, (int)ft_strlen(str));
	str = ft_strdup(s);
	//free(str);
	printf(" Str after strdup (\"%s\") %d\n", str, (int)ft_strlen(str));
	str = ft_strdup(t);
	printf(" Str after strdup (\"%s\") %d\n", str, (int)ft_strlen(str));
	printf(" %sSUCCESS%s \n", GREEN, RESET);
	printf(" %sEND OF STRDUP%s \n", MAGENTA, RESET);
}

void		check_putchar(void)
{
	printf("* PUTCHAR *\n");
	ft_putchar('+');
	ft_putchar('a');
	ft_putchar('\n');
	printf(" %sSUCCESS%s \n", GREEN, RESET);
	printf(" %sEND OF PUTS%s \n", MAGENTA, RESET);
}

void		check_isspace(void)
{
	printf("* ISSPACE *\n");
	printf(" Test on %c, return = %d \n", 'a', ft_isspace('a'));
	printf(" Test on %c, return = %d \n", '*', ft_isspace('*'));
	printf(" Test on %c, return = %d \n", 'A', ft_isspace('A'));
	printf(" Test on %c, return = %d \n", '	', ft_isspace('	'));
	printf(" Test on %c, return = %d \n", ' ', ft_isspace(' '));
	printf(" Test with NULL \n");
	printf(" Test return = %d \n", ft_isspace(0));
	printf(" %sSUCCESS%s \n", GREEN, RESET);
	printf(" %sEND OF ISSPACE%s \n", MAGENTA, RESET);
}

void		check_isupper(void)
{
	printf("* ISUPPER *\n");
	printf(" Test on %c, return = %d \n", 'A', ft_isupper('A'));
	printf(" Test on %c, return = %d \n", '*', ft_isupper('*'));
	printf(" Test on %c, return = %d \n", 'a', ft_isupper('a'));
	printf(" Test on %c, return = %d \n", '1', ft_isupper('1'));
	printf(" Test with NULL \n");
	printf(" Test return = %d \n", ft_isupper(0));
	printf(" %sSUCCESS%s \n", GREEN, RESET);
	printf(" %sEND OF ISUPPER%s \n", MAGENTA, RESET);
}

void		check_islower(void)
{
	printf("* ISLOWER *\n");
	printf(" Test on %c, return = %d \n", 'A', ft_islower('A'));
	printf(" Test on %c, return = %d \n", '*', ft_islower('*'));
	printf(" Test on %c, return = %d \n", 'a', ft_islower('a'));
	printf(" Test on %c, return = %d \n", '1', ft_islower('1'));
	printf(" Test with NULL \n");
	printf(" Test return = %d \n", ft_islower(0));
	printf(" %sSUCCESS%s \n", GREEN, RESET);
	printf(" %sEND OF ISLOWER%s \n", MAGENTA, RESET);
}

void		check_abs(void)
{
	printf("* ABS *\n");
	printf(" Test on %c, return = %d \n", 'a', ft_abs('a'));
	printf(" Test on %c, return = %d \n", '1', ft_abs('1'));
	printf(" Test on %c, return = %d \n", '0', ft_abs('0'));
	printf(" Test with NULL \n");
	printf(" Test return = %d \n", ft_abs(0));
	printf(" %sSUCCESS%s \n", GREEN, RESET);
	printf(" %sEND OF ABS%s \n", MAGENTA, RESET);
}

int			main(void)
{
	printf(" %s[ PART 1 ]%s \n\n", RED, RESET);
	check_bzero();
	printf("\n");
	check_strcat();
	printf("\n");
	check_alpha();
	printf("\n");
	check_digit();
	printf("\n");
	check_alnum();
	printf("\n");
	check_isascii();
	printf("\n");
	check_isprint();
	printf("\n");
	check_toupper();
	printf("\n");
	check_tolower();
	printf("\n");
	check_puts();
	printf("\n");
	printf(" %s[ PART 2 ]%s \n\n", RED, RESET);
	check_strlen();
	printf("\n");
	check_memset();
	printf("\n");
	check_memcpy();
	printf("\n");
	check_strdup();
	printf("\n");
	printf(" %s[ PART 3 ]%s \n\n", RED, RESET);
	int 	fd = open("Makefile", O_RDONLY);
	ft_cat(fd);
	printf(" %sEND OF CAT%s \n", MAGENTA, RESET);
	printf(" %s\n[ BONUS ]%s \n\n", RED, RESET);
	check_putchar();
	printf("\n");
	check_isspace();
	printf("\n");
	check_isupper();
	printf("\n");
	check_islower();
	printf("\n");
	check_abs();
	printf("\n");
	return 0;
}
