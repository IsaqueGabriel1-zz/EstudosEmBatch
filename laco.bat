set /p ni=Digite o numero inicial
set /p inc=Digite o incremento
set /p nf=Digite o numero final
for /l %%n in (%ni%,%inc%,%nf%) do echo numero: %%n
echo.
echo fim laco
pause > nul