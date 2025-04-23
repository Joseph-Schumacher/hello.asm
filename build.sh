rm main
nasm -felf64 main.asm
ld main.o -o main
rm main.o
