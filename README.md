🔺 Expression Evaluator Compiler 🔺
A simple compiler-like application built using Flex (Lex) and Bison (Yacc) in C to parse and evaluate the algebraic expression:

x² + 2x + 1

✨ Features
✅ Parses input like:

r
Copy
Edit
x5 compute expression
✅ Generates Three-Address Code (3AC) for the formula

✅ Displays pseudo assembly-style intermediate instructions

✅ Computes and displays the final numeric result

✅ Outputs the total token count parsed

📂 Project Structure
r
Copy
Edit
expression-compiler/
├── lexar.l         # Flex lexical analyzer rules
├── parser.y        # Bison grammar and actions
├── Makefile        # Build automation
├── README.md       # Project documentation
└── (optional)      # Any helper files or headers
⚙️ Requirements
flex (v2.6+)

bison (v3.0+)

gcc (C99 compatible)

make (optional)

🪟 For Windows (MSYS2)
bash
Copy
Edit
pacman -Syu
pacman -S mingw-w64-x86_64-gcc flex bison make
🐧 For Linux (Debian/Ubuntu)
bash
Copy
Edit
sudo apt-get update
sudo apt-get install gcc flex bison make
🔨 Build Instructions
✅ Using Makefile
bash
Copy
Edit
make
This will:

Run flex lexar.l → generates lex.yy.c

Run bison -d parser.y → generates parser.tab.c and parser.tab.h

Compile with:

bash
Copy
Edit
gcc lex.yy.c parser.tab.c -o expression -lm
🔧 Manual Build
bash
Copy
Edit
flex lexar.l
bison -d parser.y
gcc lex.yy.c parser.tab.c -o expression -lm
🚀 Usage
Run the compiled binary:

bash
Copy
Edit
./expression
Follow the input format:

php-template
Copy
Edit
x<number> compute expression
Example:
bash
Copy
Edit
> ./expression
Input format: x<number> compute expression
x5 compute expression
Sample Output:
yaml
Copy
Edit
MUL t0, x5, x5        # x^2
MUL t1, x5, 2         # 2x
ADD t2, t0, t1        # x^2 + 2x
ADD result, t2, 1     # x^2 + 2x + 1

Total Tokens: 3
Computed Result: 36
🧮 Expression Formula
𝐸
=
𝑥
2
+
2
𝑥
+
1
E=x 
2
 +2x+1
Where:

x = input value (integer)

🧹 Clean Build Files
Using Makefile:

bash
Copy
Edit
make clean
Or manually:

bash
Copy
Edit
rm -f lex.yy.c parser.tab.* expression
📜 License
This project is licensed under the MIT License.

✍🏻 Author
Ishant Kr. Ladekar
Roll Number: 23115043
B.Tech CSE, NIT Raipur

