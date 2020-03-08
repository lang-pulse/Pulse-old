# How to contribute to Pulse?

## Click on the image to get a video tutorial.

[![Pulse Contributing](https://img.youtube.com/vi/tG_y5o9qkNk/0.jpg)](https://youtu.be/tG_y5o9qkNk)

# Syntax

<details>
  <summary><b>Operators</b></summary>

  ### Arithmetic operators

  1) Addition operator (+):-

  ```console
  1 + 2
  ```
  <b>Result = 3</b>

  2) Subtraction operator (-):-

  ```console
  1 - 2
  ```
  <b>Result = -1</b>

  3) Multiplication operator (*):-

  ```console
  1 * 2
  ```
  <b>Result = 2</b>

  4) Division operator (/):-

  ```console
  1 / 2
  ```
  <b>Result = 0.5</b>

  5) Modulo operator (%):-

  ```console
  1 % 2
  ```
  <b>Result = 1</b>

  6) Power operator (^):-

  ```console
  2 ^ 3
  ```
  <b>Result = 8</b>
  
  ### Relational operator
  
  1) Less than (<):-
  
  ```console
  1 < 2
  ```
  <b>Result = true</b>
  
  2) Greater than (>):-
  
  ```console
  1 > 2
  ```
  <b>Result = false</b>
  
  3) Equal to (==):-
  ```console
  1 == 2
  ```
  <b>Result = false</b>
  
  4) Less than equal to (<=):-
  ```console
  1 <= 2
  ```
  <b>Result = true</b>
  
  5) Greater than equal to (>=):-
  ```console
  1 >= 2
  ```
  <b>Result = false</b>
  
  6) Not equal to (!=):-
  ```console
  1 != 2
  ```
  <b>Result = true</b>
  
  ### Assignment operator
  
  ```console
  a = 1
  ```
  <b>Note: Further details about assignment can be found in the variables section.</b>
  
  ### Logical operator
  
  1) Not operator (!):-
  ```console
  !true
  ```
  <b>Result = false</b>
  
  2) And operator (and):-
  ```console
  (1 < 2) and (3 > 4)
  ```
  <b>Result = false</b>
  
  3) Or operator (or):-
  ```console
  (1 < 2) or (3 > 4)
  ```
  <b>Result = true</b>
  
</details>

<hr />

<details>
  <summary><b>Variables</b></summary>

  ### Declaring a variable

  ```console
  var a
  ```
  <b>Note: Here a is name of variable.</b>

  ### Initializing a variable

  ```console
  var a = 2
  ```
  <b>Note: Here a is name of variable and it gets a value of 2.</b>

  ### Assigning value to a variable

  ```console
  a = 3
  ```
  <b>Note: Here a is name of variable, we also assume here that a is declared earler in the code.</b>
</details>

<hr />

<details>
  <summary><b>Strings</b></summary>
  
  ### Initializing a string variable
  
  ```console
  var a = "Hello"
  ```
  <b>Note: Strings should be enclosed within double quotes (" ") in pulse, single quotes (' ') are not supported yet.</b>
  
  ### String operations
  
  1) String equality:-
  
  ```console
  "hello" == "hello"
  ```
  <b>Result = true</b>
  
  2) String concatenation:-
  ```console
  "hello" + " world"
  ```
  <b>Result = hello world</b>
  
  3) String multiplication:-
  ```console
  "hello" * 2
  ```
  <b>Result = hellohello<b/>
  <br><br>
  <b>Note: The order of the operands is trivial, 2 * "hello" and "hello" * 2 will produce same results.</b>
  
</details>

<hr />

<details>
  <summary>Print Statements</summary>
  
  A very basic hello world code in pulse.
  ```console
  print("Hello World")
  ```
  
</details>
