@echo off
setlocal enabledelayedexpansion

REM Generate a random number between 1 and 200
set /a target=%random% %% 200 + 1

echo Welcome to the Number Guessing Game!
echo I'm thinking of a number between 1 and 200.
echo Can you guess what it is?

set /a attempts=0

:guess
set /a attempts+=1
set /p guess=Your guess:

REM Check if the guess is correct
if %guess% lss %target% (
    echo Your guess is too low. Try again.
    goto guess
) else if %guess% gtr %target% (
    echo Your guess is too high. Try again.
    goto guess
) else (
    echo Congratulations! You guessed the number %target% in %attempts% attempts.
)

endlocal
