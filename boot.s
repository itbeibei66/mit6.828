.global start
start:
  .code16
  movw $0xb800,%ax
  movw %ax,%ds
  xorw %di,%di   

  movb $0x41,%al
  movb $0x04,%ah
  movw %ax,%ds:(%di)
  
spin:
  jmp spin

.=510
.word 0xAA55
