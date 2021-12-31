include c:\masm32\include\windows.inc
include c:\masm32\include\user32.inc
include c:\masm32\include\kernel32.inc
include c:\masm32\include\masm32.inc
     
includelib\masm32\lib\user32.lib
includelib\Irvine\kernel32.lib
includelib\Irvine\irvine32.lib


.data

startprogram               DB " Welcome to the assembly calculator Porgram ", 0
endprogram                 DB " we are happy to use our two operand calculator", 0

first_operandstring        DB 16 dup (?)
second_operandstring       DB 16 dup (?)
first_operand_len          DB ?
second_operand_len         DB ?


first_operand              DD ?
second_operand             DD ?
operator                   DB ?
result1                    DD ?

recall1                    DB "Enter the fisrt number, or (f/c) to exit", 0
recall2                    DB "Enter the second number, or (f/c) to exit " 0
recall3                    DB "Choose an operation (+, -, *, /), or (f/c) to exit ", 
result2                    DB " result is: ", 0


operand_msg                DB"<invalid number ,try another trial>",0
operator_msg               DB"< invalid operator ,try another trial>",0
overflow_msg0              DB"<result is large,   try another trial>",0
overflow _msg1             DB"<first number is large,try another trial>",0
overflow_msg2              DB"<secand number is large,try another trial>",0
div_by_zero_msg            DB"<Divison by zero is invalid >",0

 
addition_sign              DB '+', 0
subtraction_sign           DB '-', 0
division_sign              DB '/', 0
muliplication_sign         DB '*', 0
space_sign                 DB ' ', 0
equal_sign                 DB '=', 0
parth_sign1                DB '(', 0
parh_sign2                 DB ')', 0

.code

main PROC

start:
call	CrLf                                                  ;spacing to able to reading
lea edx,startprogram                                          ;address of caculcator program is copied  to EDX registor
call  writestring                                             ;write calculator program
call	CrLf	
call	CrLf							


; Getting first number
	get_first_operand:
		lea	edx, recall1
		call	WriteString					; Writting the recall1 message
		lea  edx, first_operandstring 
		mov	ecx, 15
		call	ReadString					; Read from the user a 32-bit integer and save it in EAX

		
		parsing_first_operand:

		mov   	ecx, first_operand_len 
    		call  	ParseInteger32
		mov	first_operand, eax	    				; The value of EAX is copied to the first operand
		
get_operator:		
	call	CrLf			
	lea	edx, recall3
	call	WriteString					; write recall3 message
	call	ReadChar					; read the operator from the user to save it in AL
	mov	operator, al	    				; the character of AL is copied to operator variable 
	
; Getting second number

     get_second_operand:
     
               call	CrLf
	       call	CrLf
	       lea      edx, recall2
	       call	WriteString                                                     ; Writting the recall2 message
	       lea      edx, second_operandstring 
	       mov	ecx, 15
	       call	ReadString                                                       ; Read from the user a 32-bit integer and save it in EAX

	       
          parsing_first_operand:
	  
	        mov   	ecx, second_operand_len 
    		call  	ParseInteger32
		mov	second_operand, eax                                              ; The value of EAX is copied to the second operand
		
	       
	       

	
				    				

	


 
 
 






