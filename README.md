🔺 Expression Evaluator Compiler 🔺
📌 Expression Evaluator Compiler is a simple compiler-like application built using Flex (Lex) and Bison (Yacc) in C to parse and evaluate algebraic expression instructions — specifically:
x² + 2x + 1

✨ Features ✨
✅ Parses user-friendly input like:

r
Copy
Edit
x5 compute expression
✅ Generates three-address code (3AC) for the algebraic formula

✅ Displays pseudo assembly–style intermediate instructions

✅ Computes and displays final numeric result

✅ Shows total token count parsed

📂 Project Structure 📂
r
Copy
Edit
expression-compiler/
├── lexar.l        # Flex lexical analyzer rules
├── parser.y       # Bison grammar and actions
├── Makefile       # Build automation script
├── README.md      # This documentation
└── (optional)     # Any helper headers or scripts
⚙️ Requirements ⚙️
flex (v2.6+)

bison (v3.0+)

gcc (supports C99 or above)

make (optional, for Makefile usage)

🪟 On Windows (MSYS2)
bash
Copy
Edit
pacman -Syu
pacman -S mingw-w64-x86_64-gcc flex bison make
🐧 On Linux (Debian/Ubuntu)
bash
Copy
Edit
sudo apt-get update
sudo apt-get install gcc flex bison make
🔨 Build Instructions 🔨
Using Makefile
bash
Copy
Edit
make
This will: 1️⃣ Run flex lexar.l to generate lex.yy.c
2️⃣ Run bison -d parser.y to generate parser.tab.c and parser.tab.h
3️⃣ Compile all sources:

bash
Copy
Edit
gcc lex.yy.c parser.tab.c -o expression -lm
Manual Build
bash
Copy
Edit
flex lexar.l
bison -d parser.y
gcc lex.yy.c parser.tab.c -o expression -lm
🚀 How to Use 🚀
Run the compiled binary:

bash
Copy
Edit
./expression
Input format:

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
🧮 Expression Formula 🧮
𝐸=𝑥^2+2𝑥+1
E=x^2+2x+1

Where:

x = input value

🧹 Cleaning the Build 🧹
To remove generated files:

bash
Copy
Edit
make clean
or manually:

bash
Copy
Edit
rm -f lex.yy.c parser.tab.* expression
📜 License 📜
This project is released under the MIT License.

✍🏻 Author ✍🏻
Ishant Kr. Ladekar
Roll Number: 23115043
B.Tech CSE, NIT Raipur
