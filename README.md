Taken from:

https://www.tutorialspoint.com/assembly_programming

# notes

system calls

/usr/include/asm/unistd.h

=> now in

https://comp.lang.asm.x86.narkive.com/1sTueYaD/sys-read-from-stdin

=> maybe switch to x86_64 instead

syscall instead of int 0x80

http://faculty.nps.edu/cseagle/assembly/sys_call.html

# confusion about stdin, stderr, stdout

I was able to read and write indistinctly to 0, 1, 2

In fact it seems that the terminal does something like this:

```
if(!fork()){
       <close all fd's>
       int fd = open("/dev/tty1", O_RDWR);
       dup(fd);
       dup(fd);
       execvp("name", argv);
  }
  ```

From: 

https://stackoverflow.com/questions/7383803/writing-to-stdin-and-reading-from-stdout-unix-linux-c-programming

Also:

When the input comes from the console, and the output goes to the console, then all three indeed happen to refer to the same file. (But the console device has quite different implementations for reading and writing.)

Anyway, you should use stdin/stdout/stderr only for their intended purpose; otherwise, redirections like the following would not work:

https://stackoverflow.com/questions/51532911/are-stdin-and-stdout-actually-the-same-file

# maybe to follow

https://www.conradk.com/2017/06/06/x86-64-assembly-from-scratch.html

https://cs.lmu.edu/~ray/notes/nasmtutorial/