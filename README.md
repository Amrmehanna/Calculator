# *Assembly Calculator*

## Introduction about the Project
Our team worked together to build a Two-operand simple calculator using assembly language. <br/>
The program performs arithmetic operations such as  addition, subtraction, multiplication, and division.<br/>
the symbols of  arithmatic operations is  ( + , - , * , / ).

## Code Features
**Addition Process**
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
> **Example:** `Enter the first number, or (E/e) to exit:  100000`
> 
>`Choose a process (+, -, *, /), or (E/e) to exit: / `
>
>`Enter the second number, or (E/e) to exit: 1000`
>
> **Output:** `Evaluation result is (+100000) / (+1000) = +100`


### Exception Handling

- **Invalid operands**

> **Example 1:** `Enter the first number, or (E/e) to exit: b5p`
> 
> **Output:** `< Incorrect number, try anotner trail ... >`
>
>`Enter the first number, or (E/e) to exit: `

> **Example 2:** `Enter the first number, or (E/q) to exit: 5`
> 
>`Choose an operation (+, -, *, /), or (E/e) to exit: + `
>
>`Enter the second number, or (E/e) to exit: fffffff4`
>
> **Output:** `< Incorrect number, try anothtrialer  ... >`
>
>`Enter the second number, or (E/e) to exit: `

- **Invalid operator**

> **Example:** `Enter the first number, or (Q/q) to exit: 10`
> 
> `Choose an operation (+, -, *, /), or (Q/q) to exit: 9`
> 
> **Output:** `< Incorrect opertor, try again ... >`
>
>`Choose an operation (+, -, *, /), or (Q/q) to exit: `


>



- **By dividing by zero**

> **Example:** `Enter the first number, or (E/e) to exit: 8`
>
> `Choose an operation (+, -, *, /), or (E/e) to exit: / `
> 
> `Enter the second number, or (E/e) to exit: 0`
>
> **Output:** `<Divison by zero is invalid,try another trial. ... >`
>
>`Enter the second number, or (E/e) to exit: 
 


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


## Program limitations

  1. Does not allow fractions only integer number.
  2. I'm unable to print the result of a 32-bit numeric multiplication.<br/> 
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
