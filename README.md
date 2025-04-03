# asm-hello-world
A beginner-friendly guide to writing, assembling, and running a simple "Hello World" program in x64 Assembly on Windows. Covers setup, code breakdown, compilation, execution, common errors, and key Assembly concepts.

## How to Run  
1. Install NASM and MinGW-w64  
2. Compile:  
   ```bash  
   nasm -f win64 hello.asm -o hello.obj  
   gcc hello.obj -o hello.exe -lkernel32  
ps: then Execute: .\hello.exe in Powershell
