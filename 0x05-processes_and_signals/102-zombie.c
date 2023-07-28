#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

/**
 * infinite_while - Infinite loop function
 *
 * Description: This function runs an infinite loop and returns 0.
 * It is used to keep the program running indefinitely.
 *
 * Return: Always 0.
 */
int infinite_while(void)
{
while (1)
{
sleep(1);
}
return (0);
}

/**
 * main - Entry point of the program
 *
 * Description: This function creates 5 zombie processes and
 * displays their PIDs. It then calls infinite_while to keep the
 * program running indefinitely.
 *
 * Return: Always 0.
 */
int main(void)
{
int i;
pid_t child_pid;

for (i = 0; i < 5; i++)
{
child_pid = fork();

if (child_pid > 0)
{
printf("Zombie process created, PID: %d\n", child_pid);
sleep(1);
}
else if (child_pid == 0)
{
exit(0);
}
else
{
perror("fork");
return (1);
}
}

infinite_while();

return (0);
}
