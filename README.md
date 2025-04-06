# 🔺 Expression Evaluator Compiler 🔺

A simple compiler-like application built using **Flex (Lex)** and **Bison (Yacc)** in C to parse and evaluate the algebraic expression:  
**x² + 2x + 1**

---

## ✨ Features
- ✅ Parses input in the format: `x<number> compute expression` (e.g., `x5 compute expression`)  
- ✅ Generates **Three-Address Code (3AC)** for the formula  
- ✅ Displays pseudo **assembly-style intermediate instructions**  
- ✅ Computes and displays the **final numeric result**  
- ✅ Outputs the **total token count** parsed  

---

## 📂 Project Structure

expression-compiler/
├── lexar.l         # Flex lexical analyzer rules
├── parser.y        # Bison grammar and actions
├── Makefile        # Build automation
├── README.md       # Project documentation
└── (optional)      # Any helper files or headers

---

## ⚙️ Requirements
- **Flex**: v2.6+  
- **Bison**: v3.0+  
- **GCC**: C99 compatible  
- **Make**: Optional (for build automation)  

### 🪟 For Windows (MSYS2)
```bash
pacman -Syu
pacman -S mingw-w64-x86_64-gcc flex bison make

 For Linux (Debian/Ubuntu)
bash

sudo apt-get update
sudo apt-get install gcc flex bison make

 Build Instructions
 Using Makefile
bash

make

This will:  
Run flex lexar.l → Generates lex.yy.c  

Run bison -d parser.y → Generates parser.tab.c and parser.tab.h  

Compile with:

bash

gcc lex.yy.c parser.tab.c -o expression -lm

 Manual Build
bash

flex lexar.l
bison -d parser.y
gcc lex.yy.c parser.tab.c -o expression -lm

 Usage
Run the compiled binary:  
bash

./expression

Input Format

x<number> compute expression

Example
bash

> ./expression
Input format: x<number> compute expression
x5 compute expression

Sample Output
yaml

MUL t0, x5, x5        # x^2
MUL t1, x5, 2         # 2x
ADD t2, t0, t1        # x^2 + 2x
ADD result, t2, 1     # x^2 + 2x + 1

Total Tokens: 3
Computed Result: 36

 Expression Formula
E = x² + 2x + 1
Where:  
x = Input value (integer)

 Clean Build Files
Using Makefile
bash

make clean

Manually
bash

rm -f lex.yy.c parser.tab.* expression

 License
This project is licensed under the MIT License.
 Author
Ishant Kr. Ladekar
Roll Number: 23115043
B.Tech CSE, NIT Raipur

