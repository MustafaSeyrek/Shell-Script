# Shell-Script

Implementation Requirements
Your shell script (batch program) will read an input file line by line, do the task accordingly and
write the result to an output file. Your script should be dynamic, meaning that there can be various
numbers of line in the input file and each line may require a different task. Also names of the input
and output files are to be dynamic as well. Meaning that those variables will be parameters of
your script. An example input file is given below:
011000110101 2 10
3972 10 2
0110101 + 110101
110101 - 010101
...
...
...
524 6 8
And an output file (not the output file of the input above, just a random one) will be look like:
0110101101
1011110 (negative)
387
985
400
...
...
0011101 (positive)
1. A task to be done on each line can be either base conversion or one of the arithmetic
operations (+,-,*,/)
2. Base conversion can be between any bases. (Tip**: You may use bc for conversion)
3. As a result a of a base conversion task you will write the number in the converted base as
a new line to the output file.
4. In arithmetic operations only unsigned binary operands will be used.
5. For the addition and subtraction operations you have to do the operation manually bit by
bit. (As shown in Application Week 3 Slides) Write the answer to the output file in binary
form, put a tab and indicate if the answer is positive or negative in parenthesis.
6. For the division and multiplication, the divisor and multiplier will be power of two. (!!!!)
