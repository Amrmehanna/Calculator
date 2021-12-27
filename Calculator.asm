include c:\masm32\include\windows.inc
include c:\masm32\include\user32.inc
include c:\masm32\include\kernel32.inc
include c:\masm32\include\masm32.inc
     
includelib\masm32\lib\user32.lib
includelib\Irvine\kernel32.lib
includelib\Irvine\irvine32.lib


.data

startprogram               db " start the two operand assembly calculator ", 0
endprogram                 db " we are happy to use our two operand calculator", 0


addition_sign              db '+', 0
subtraction_sign           db '-', 0
division_sign              db '/', 0
muliplication_sign         db '*', 0
space_sign                 db ' ', 0
equal_sign                 db '=', 0
parth_sign1                db '(', 0
parh_sign2                 db ')', 0





