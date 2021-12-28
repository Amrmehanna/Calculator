include c:\masm32\include\windows.inc
include c:\masm32\include\user32.inc
include c:\masm32\include\kernel32.inc
include c:\masm32\include\masm32.inc
     
includelib\masm32\lib\user32.lib
includelib\Irvine\kernel32.lib
includelib\Irvine\irvine32.lib


.data

startprogram               DB " start the two operand assembly calculator ", 0
endprogram                 DB " we are happy to use our two operand calculator", 0

operand1                   DD
operand2                   DD
operator                   DB
result1                    DD

recall1                    db "please enter the fisrt number, or (f/c) to exit", 0
recall2                    db "please enter the second number, or (f/c) to exit " 0
recall3                    db " please choose an operation (+, -, *, /), or (f/c) to exit ", 
result2                    db " result is: ", 0
 
addition_sign              DB '+', 0
subtraction_sign           DB '-', 0
division_sign              DB '/', 0
muliplication_sign         DB '*', 0
space_sign                 DB ' ', 0
equal_sign                 db '=', 0
parth_sign1                db '(', 0
parh_sign2                 db ')', 0

.code






