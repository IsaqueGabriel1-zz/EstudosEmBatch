@echo off
title O jogo da advinhacao
mode 40, 30
set /a cont=0
:inicio
cls
set /a num=(%random% %%10) + 1
set /a cont=%cont% + 1
goto jogo
:jogo
set /a tentativa=%tentativa% + 0
cls
color 0a
echo ==================ooOoo=================
echo      =              =             =
echo     = =          == O ==         = =
echo      =         == Jogo ===        =
echo     = =      ==    da    ====    = =
echo      =     == Adivinhacao =====   =
echo ==================ooOoo=================
echo.
echo ----------------------------------------
echo ADiVINHE O NUMERO SORTEADO ENTRE 01 E 50
echo ----------------------------------------
echo         QUANTIDADE DE TENTATIVAS: %tentativa%
echo ----------------------------------------
 
set /p ns=DIGITE O NUMERO DA SORTE:

if %tentativa% lss 4 (goto:maior) else (
    goto errou
    set /a tentativa=0
    pause > nul
    goto inicio
    )

:maior 
if %ns% == %num% (goto:acertou) else (
    set /a tentativa=%tentativa% + 1
    goto jogo
    pause > nul
)
if %num% lss %ns% (echo numero menor)
if %num% gtr %ns% (echo numero maior)
pause > nul


:acertou
cls
echo ==================ooOoo=================
echo      =                           =
echo     = =         Acertou!!!      = =
echo      =     Numero sorteado: %num%   =
echo      =      Sortear novamente?   =
set /p resp=        Eai? [S/N]:
echo     = =                         = =
echo      =                           =
echo ==================ooOoo=================
if /i %resp% == s (goto:jogo) else (exit)
:errou
cls
echo ==================ooOoo=================
echo      =                           =
echo     = =           Errou!!!      = =
echo      =     Numero sorteado: %num%   =
echo      =      Sortear novamente?   =
set /p resp=        Eai? [S/N]:
echo     = =                         = =
echo      =                           =
echo ==================ooOoo=================

set /a tentativa=0
if /i %resp% == s (goto:jogo) else (exit) 
pause > nul