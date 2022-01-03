includelib \masm32\lib\user32.lib
include\Irvine\Irvine32.inc
includelib \Irvine\irvine32.lib
includelib \Irvine\kernel32.lib



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

recall1                    DB "Enter the fisrt number, or (E/e) to exit", 0
recall2                    DB "Enter the second number, or (E/e) to exit " 0
recall3                    DB "Choose an operation (+, -, *, /), or (E/e) to exit ", 
result2                    DB " result is: ", 0


operand_message                      DB"<invalid number ,try another trial>",0
operator_message                     DB"< invalid operator ,try another trial>",0
overflow_the_first_message           DB"<result is large,   try another trial>",0
overflow_the_second_message          DB"<first number is large,try another trial>",0
overflow_the_third_message           DB"<secand number is large,try another trial>",0
div_by_zero_message                  DB"<Divison by zero is invalid >",0

 
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

	       
          parsing_second_operand:
	  
	        mov   	ecx, second_operand_len 
    		call  	ParseInteger32
		mov	second_operand, eax                                              ; The value of EAX is copied to the second operand

; re-routing to the required operator
		
        cmp       operator , '+'
        je        addition_process                                                             ; jump if equal to addition_process
        cmp       operator , '-'
        je        subtraction_process                                                          ; jump if equal to subtraction_process
        cmp       operator , '*'
        je        multiplication_process                                                        ; jump if equal to multiplication_process
        cmp       operator , '/'
        je        division_process                                                              ; jump if equal to division_process
  
 
	       

; Do the  Additionopertion opertion 

     addition_process:
		mov 	eax,first_operand                               ; copy the first operand in eax
		add 	eax , second_operand          			; add the two operands( first_operand  + second_operand) and put the result in eax eax=eax+operand2
		mov 	result , eax	                                ;put the eax in result 
				    				
; Do the Subtraction opertion 

	subtraction_process:
		mov 	eax , first_operand 	     		        ; copy the first operand in eax
		sub 	eax ,second_operand          			; subtract the second operand from the fisrt operand (first_operand - second_operand) and put the result in eax
		mov 	result , eax                                    ;put the eax in result 
		
		
	
;Do the Multiplication operation	

        
        multiplication_process:
		mov 	eax,first_operand         		        ; copy  thefirst_operand value and put it in  eax
		mov 	ebx,second_operand         			; copy  thesecond_operand value and put it   ebx
	        imul    ebx                 				; imul eax, ebx ....result of mul is aduble size of the operand so it store the result in edx-eax=eax*ebx 
		mov 	result, eax                                     ;put the eax in result 
		
		
;Do the Division operation


		division_process:
		xor 	edx, edx  		 			; clear edx => will have a most signtific 32bit from 64bit 
		mov 	eax,first_operand				; get operands  which is 32bit 
		mov 	ebx, second_operand 				; make  the divisble by to ebx 
		                           
		idiv 	ebx                                             ;eax=eax/ebx
	        mov 	result, eax                                     ;put the eax in result 
	 						
		                                                        ; make a division operator 
							              
		


 ; Dealing with Exceptions
 
 check_first_operand_validation:
 
 		lea  	edx, first_operand				; obtain the first operand's length 
        	call 	StrLength
        	mov  	first_operand_len, eax

		mov	al, first_operandstring			        ; Quit the programm
		cmp 	al,'E'
		je	quit
		cmp 	al,'e'
		je	quit	
		

		cmp	al, '+'					 	; Verify that the operand begins with a sign
		je	sign_exist1
		cmp	al, '-'
		je	sign_exist1
		
		sign_not_exist1:				 	; Begin checking operand validity from the start
		mov	ecx, first_operand_len
		lea	ebx, first_operandstring
		jmp 	loop1


		sign_exist1:					 	; checking operand validity from the second character
		mov	ecx, first_operand_len				
		dec	ecx
		lea	ebx, first_operandstring	
		inc	ebx

		loop1:					  	; loop check
		mov	al, [ebx] 		
		call 	IsDigit				
		jnz	incorrect_first_operand
		inc	ebx
		loop	loop1	

		jmp parsing_first_operand

		incorrect_first_operand:
			call	CrLf                    
			mov 	edx , offset operand_message
			call 	WriteString
			call	CrLf
			call	CrLf
			jmp 	get_first_operand
			
			
 	check_operator_validitation:

		cmp 	operator,'E'	     	  ; exit if (E/e) is found
		je	quit	
		cmp 	operator,'e'
		je	quit

		cmp 	operator , '+'                  
		je 	get_second_operand              ; jump if  is equal to operator is saved 
		cmp 	operator , '-'                  
		je 	get_second_operand             ; jump if is equal to operator is saved 
		cmp 	operator , '*'                   
		je 	get_second_operand             ; jump if is equal to operator is saved
		cmp 	operator , '/'                 
		je 	get_second_operand              ; jump if  is equal to save the operator 

		jmp 	incorrect_operator         ; else jump to incorrect_operator section

		incorrect_operator:            	; message will be printed if user enter incorrect operator
			call 	Crlf
			call 	Crlf
			mov 	edx , offset operator_message
			call 	WriteString
			call 	Crlf
			jmp 	get_operator

	
		
      check_second_operand_validation:
       
                          
         lea  	edx, second_operand				; obtain the second operand's length 
        	call 	StrLength
        	mov  	second_operand_len, eax
		
                
                mov	al, second_operandstring			        ; Quit the programm
		cmp 	al,'E'
		je	quit
		cmp 	al,'e'
		je	quit	
		

                cmp	al, '+'					 	; Verify that the operand begins with a sign
		je	sign_exist2
		cmp	al, '-'
		je	sign_exist2

                sign_not_exist2:				 	; Begin checking operand validity from the start
		mov	ecx, second_operand_len	
		lea	ebx, second_operandstring
		jmp 	loop1


		sign_exist2:					 	; checking operand validity from the second character
		mov	ecx, second_operand_len				
		dec	ecx
		lea	ebx, second_operandstring	
		inc	ebx

              
	        
		loop2:					  	; loop check
		mov	al, [ebx] 		
		call 	IsDigit				
		jnz	incorrect_operand2
		inc	ebx
		loop	loop2	

		jmp parsing_second_operand
		
		
		
	        incorrect_second_operand:
			call	CrLf                    
			mov 	edx , offset operand_message
			call 	WriteString
			call	CrLf
			call	CrLf
			jmp 	get_second_operand
			
			
	         
	        
	      
	      
	      
	      
