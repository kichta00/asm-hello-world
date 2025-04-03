# asm-hello-world  
*(For Absolute Beginners!)*  

Welcome to your first Assembly project! This guide will help you run a "Hello World" program on Windows x64.

## Quick Start  
**Just want to run it?** Follow these steps:  
1. **Install Tools**:  
   - [NASM](https://www.nasm.us/) (Assembler)  
   - [MinGW-w64](https://www.mingw-w64.org/) (Compiler)  

2. **Open PowerShell** in the project folder and run:  
```powershell
nasm -f win64 hello.asm -o hello.obj  # Convert to machine code
gcc hello.obj -o hello.exe -lkernel32 # Create executable
.\hello.exe                           # Run the program
