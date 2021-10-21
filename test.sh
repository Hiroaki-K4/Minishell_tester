
# colors
RESET="\033[0m"
BOLDMAGENTA="\033[1m\033[35m"
BOLDGREEN="\033[1m\033[32m"


cd ../minishell
make re
cd ../Minishell_tester
cp ../minishell/minishell .
chmod 755 minishell
./minishell

printf "$BOLDGREEN __  __ _____ _   _ _____  _____ _ _     _ __          \n"
printf "|  \/  |_   _| \ | |_   _|/ ____| |  | |  ____| |    | |     \n"
printf "| \  / | | | |  \| | | | | (___ | |__| | |__  | |    | |     \n"
printf "| |\/| | | | | . \` | | |  \___ \|  __  |  __| | |    | |     \n"
printf "| |  | |_| |_| |\  |_| |_ ____) | |  | | |____| |____| |____ \n"
printf "|_|  |_|_____|_| \_|_____|_____/|_|  |_|______|______|______|\n$RESET"

function run_test()
{
	TEST1=$(echo $@ "; exit" | ./minishell 2>&-)
	echo $TEST1
}

run_test 'echo test'