# *Assembly Calculator*

## Introduction about the Project
Our team worked together to build a Two-operand simple calculator using assembly language. <br/>
The program performs arithmetic operations such as  addition, subtraction, multiplication, and division.<br/>
the symbols of  arithmatic operations is  ( + , - , * , / ).

## Code Features
- **Addition Process**
> **Example from the code :** `Enter the fisrt number, or (E/e) to exit: 50`
> 
>`Choose an operation (+, -, *, /), or (E/e) to exit:  + `
>
>`Enter the second number, or (E/e) to exit: 60`
>
> **the Output:** `result is (+50) + (+60) = +110`

- **Subtraction Process**
> **Example from the code:** `Enter the fisrt number, or (E/e) to exit: 80`
> 
>`Choose an operation (+, -, *, /), or (E/e) to exit: - `
>
>`Enter the second number, or (E/e) to exit: 100`
>
> **The Output:** `result is (+80) - (+100) = -20`
<br/>

- **Multiplication Process**
> **Example from the code:** `Enter the fisrt number, or (E/e) to exit: -200`
> 
>`Choose an operation (+, -, *, /), or (E/e) to exit: * `
>
>`Enter the second number, or (E/e) to exit: 10`
>
> **The Output:** `result is (-200) * (+10) = -2000`
> 
- **Division process**
> **Example from the code:** `Enter the first number, or (E/e) to exit:  100000`
> 
>`Choose an operation (+, -, *, /), or (E/e) to exit: / `
>
>`Enter the second number, or (E/e) to exit: 1000`
>
> **The Output:** `Evaluation result is (+100000) / (+1000) = +100`


## Handling of Exceptions

- **Incorrect operands**

> **Example 1:** `Enter the first number, or (E/e) to exit: sd3`
> 
> **The Output:** `< invalid number ,try another trial >`
>
>`Enter the first number, or (E/e) to exit: `

> **Example 2:** `Enter the first number, or (E/e) to exit: 9`
> 
>`Choose an operation (+, -, *, /), or (E/e) to exit: - `
>
>`Enter the second number, or (E/e) to exit: efe3`
>
> **Output:** `< invalid number ,try another trial >`
>
>`Enter the second number, or (E/e) to exit: `

- **incorrect operator**

> **Example:** `Enter the first number, or (E/e) to exit: 3`
> 
> `Choose an operation (+, -, *, /), or (E/e) to exit: `
> 
> **Output:** `< invalid operator ,try another trial >`
>
>`Choose an operation (+, -, *, /), or (E/e) to exit: `



- **By dividing by zero**

> **Example:** `Enter the first number, or (E/e) to exit: 8`
>
> `Choose an operation (+, -, *, /), or (E/e) to exit: / `
> 
> `Enter the second number, or (E/e) to exit: 0`
>
> **Output:** `<Divison by zero is invalid,try another trial. ... >`
>
>`Enter the second number, or (E/e) to exit: `
 


- **Cases of overflow**

1. **During runtime, in operands** 


> **Example 1:** `Enter the first number, or (E/e) to exit: 6666666666`
>
> `< first number is large,try another trial >`
>
> **Output:** `Enter the first number, or (E/e) to exit:`


> **Example 2:** `Enter the first number, or (E/e) to exit: 6`
>
> `Choose an operation (+, -, *, /), or (E/e) to exit: / `
>
> `Enter the second number, or (E/e) to exit: 6666666666`
>
> **Output:** `< secand number is large,try another trial >`
>
>> `Enter the second number, or (E/e) to exit: `



 2. **Overflow in addition** 

> **Example:** `Enter the first number, or (E/e) to exit: 1800000000`
>
> `Choose an operation (+, -, *, /), or (E/e) to exit: + `
> 
> `Enter the second number, or (E/e) to exit: 1800000000`
>
> **Output:** `< Due to an overflow, the result was incorrect; please try again >`
>
> `Enter the first number, or (E/e) to exit: `

 3. **overflow in Subtraction** 
   
> **Example:** `Enter the first number, or (Q/q) to exit: -1800000000`
>
> `Choose an operation (+, -, *, /), or (E/e) to exit: - `
> 
> `Enter the second number, or (E/e) to exit: 1800000000`
>
> **Output:** `< Due to an overflow, the result was incorrect; please try again >`
>
> `Enter the first number, or (E/e) to exit: `

  4. **overflow in Multiplication** 
   
> **Example:** `Enter the first number, or (E/e) to exit: 3000000000`
>
> `Choose an operation (+, -, *, /), or (E/e) to exit: * `
> 
> `Enter the second number, or (E/e) to exit: 5000000000`
>
> **Output:** `< Due to an overflow, the result was incorrect; please try again >`
>
> `Enter the first number, or (E/e) to exit: `



 5. **overflow in Division**
  
  Because the user can only enter a 32-bit numerator and we fill the EDX register with zeros to avoid calculation problems, there will be no overflow in division






## Program limitations

  1. Does not allow fractions only integer number.
  2. Couldn't print the result of a 32-bit numeric multiplication.<br/> 
  hint :(destination of multiplication required the double size of the two register multiplied which is no to be supported )


## Tools
- Visual Studio Code (using terminal to run the code) <br/>
- Irvine Library<br/>
- Msm32(compiler)


## Team Members 

- [Amr Mehanna](https://github.com/Amrmehanna)
- [Ahmed Mahmoud Mahmoud ](https://github.com/AhmedMahmoud125)
- [Mina Bekheet](https://github.com/MinaBekheet)
- [Mahmoud Sayed](https://github.com/MahmoudSayed77)

## Under the supervision of 
Dr.Abdelhamid Attaby
