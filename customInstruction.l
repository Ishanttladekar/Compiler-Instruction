%{
#include <stdio.h>
float x = 0;
int token_count = 0, xsqrplus_flag = 0;
%}

%%

[ \t\n]+              ;
x[0-9]+               { sscanf(yytext, "x%f", &x); printf("Token: %s (x value)\n", yytext); token_count++; }
xsqrplus              { printf("Token: %s (Custom Instruction: XSQRPLUS)\n", yytext); token_count++; xsqrplus_flag = 1; }
"+"|"-"|"*"|"/"|"="   { printf("Token: %s (Operator)\n", yytext); token_count++; }
[0-9]+                { printf("Token: %s (Number)\n", yytext); token_count++; }
.                     { printf("Token: %s (Unknown)\n", yytext); token_count++; }

%%

int yywrap() { return 1; }

int main() {
    char input[256];
    printf("Enter input (e.g., 'x4 xsqrplus'):\n");
    fgets(input, sizeof(input), stdin);
    yy_scan_string(input);
    yylex();

    if (x != 0) {
        float z = x * x + 2 * x + 1;
        if (xsqrplus_flag) {
            printf("Assembly (Using XSQRPLUS):\n");
            printf("    XSQRPLUS r2, r1  # r2 = x^2 + 2x + 1\n");
        } else {
            printf("Standard Assembly:\n");
            printf("    MUL r3, r1, r1   # r3 = x * x\n");
            printf("    ADD r4, r1, r1   # r4 = 2 * x\n");
            printf("    ADD r5, r3, r4   # r5 = x^2 + 2x\n");
            printf("    ADD r2, r5, #1   # r2 = x^2 + 2x + 1\n");
        }
        printf("Result: z = %.2f\n", z);
    } else {
        printf("Missing x value.\n");
    }

    printf("Total tokens: %d\n", token_count);
    return 0;
}
