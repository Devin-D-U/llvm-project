// RUN: llvm-mc -triple x86_64 -x86-asm-syntax=intel -output-asm-variant=1 --show-encoding %s | FileCheck %s

// CHECK: movrs bl, byte ptr [rbp + 8*r14 + 268435456]
// CHECK: encoding: [0x42,0x0f,0x38,0x8a,0x9c,0xf5,0x00,0x00,0x00,0x10]
          movrs bl, byte ptr [rbp + 8*r14 + 268435456]

// CHECK: movrs bl, byte ptr [r8 + 4*rax + 291]
// CHECK: encoding: [0x41,0x0f,0x38,0x8a,0x9c,0x80,0x23,0x01,0x00,0x00]
          movrs bl, byte ptr [r8 + 4*rax + 291]

// CHECK: movrs bl, byte ptr [rip]
// CHECK: encoding: [0x0f,0x38,0x8a,0x1d,0x00,0x00,0x00,0x00]
          movrs bl, byte ptr [rip]

// CHECK: movrs bl, byte ptr [2*rbp - 32]
// CHECK: encoding: [0x0f,0x38,0x8a,0x1c,0x6d,0xe0,0xff,0xff,0xff]
          movrs bl, byte ptr [2*rbp - 32]

// CHECK: movrs bl, byte ptr [rcx + 127]
// CHECK: encoding: [0x0f,0x38,0x8a,0x59,0x7f]
          movrs bl, byte ptr [rcx + 127]

// CHECK: movrs bl, byte ptr [rdx - 128]
// CHECK: encoding: [0x0f,0x38,0x8a,0x5a,0x80]
          movrs bl, byte ptr [rdx - 128]

// CHECK: movrs bx, word ptr [rbp + 8*r14 + 268435456]
// CHECK: encoding: [0x66,0x42,0x0f,0x38,0x8b,0x9c,0xf5,0x00,0x00,0x00,0x10]
          movrs bx, word ptr [rbp + 8*r14 + 268435456]

// CHECK: movrs bx, word ptr [r8 + 4*rax + 291]
// CHECK: encoding: [0x66,0x41,0x0f,0x38,0x8b,0x9c,0x80,0x23,0x01,0x00,0x00]
          movrs bx, word ptr [r8 + 4*rax + 291]

// CHECK: movrs bx, word ptr [rip]
// CHECK: encoding: [0x66,0x0f,0x38,0x8b,0x1d,0x00,0x00,0x00,0x00]
          movrs bx, word ptr [rip]

// CHECK: movrs bx, word ptr [2*rbp - 32]
// CHECK: encoding: [0x66,0x0f,0x38,0x8b,0x1c,0x6d,0xe0,0xff,0xff,0xff]
          movrs bx, word ptr [2*rbp - 32]

// CHECK: movrs bx, word ptr [rcx + 127]
// CHECK: encoding: [0x66,0x0f,0x38,0x8b,0x59,0x7f]
          movrs bx, word ptr [rcx + 127]

// CHECK: movrs bx, word ptr [rdx - 128]
// CHECK: encoding: [0x66,0x0f,0x38,0x8b,0x5a,0x80]
          movrs bx, word ptr [rdx - 128]

// CHECK: movrs ebx, dword ptr [rbp + 8*r14 + 268435456]
// CHECK: encoding: [0x42,0x0f,0x38,0x8b,0x9c,0xf5,0x00,0x00,0x00,0x10]
          movrs ebx, dword ptr [rbp + 8*r14 + 268435456]

// CHECK: movrs ebx, dword ptr [r8 + 4*rax + 291]
// CHECK: encoding: [0x41,0x0f,0x38,0x8b,0x9c,0x80,0x23,0x01,0x00,0x00]
          movrs ebx, dword ptr [r8 + 4*rax + 291]

// CHECK: movrs ebx, dword ptr [rip]
// CHECK: encoding: [0x0f,0x38,0x8b,0x1d,0x00,0x00,0x00,0x00]
          movrs ebx, dword ptr [rip]

// CHECK: movrs ebx, dword ptr [2*rbp - 32]
// CHECK: encoding: [0x0f,0x38,0x8b,0x1c,0x6d,0xe0,0xff,0xff,0xff]
          movrs ebx, dword ptr [2*rbp - 32]

// CHECK: movrs ebx, dword ptr [rcx + 127]
// CHECK: encoding: [0x0f,0x38,0x8b,0x59,0x7f]
          movrs ebx, dword ptr [rcx + 127]

// CHECK: movrs ebx, dword ptr [rdx - 128]
// CHECK: encoding: [0x0f,0x38,0x8b,0x5a,0x80]
          movrs ebx, dword ptr [rdx - 128]

// CHECK: movrs rbx, qword ptr [rbp + 8*r14 + 268435456]
// CHECK: encoding: [0x4a,0x0f,0x38,0x8b,0x9c,0xf5,0x00,0x00,0x00,0x10]
          movrs rbx, qword ptr [rbp + 8*r14 + 268435456]

// CHECK: movrs rbx, qword ptr [r8 + 4*rax + 291]
// CHECK: encoding: [0x49,0x0f,0x38,0x8b,0x9c,0x80,0x23,0x01,0x00,0x00]
          movrs rbx, qword ptr [r8 + 4*rax + 291]

// CHECK: movrs rbx, qword ptr [rip]
// CHECK: encoding: [0x48,0x0f,0x38,0x8b,0x1d,0x00,0x00,0x00,0x00]
          movrs rbx, qword ptr [rip]

// CHECK: movrs rbx, qword ptr [2*rbp - 32]
// CHECK: encoding: [0x48,0x0f,0x38,0x8b,0x1c,0x6d,0xe0,0xff,0xff,0xff]
          movrs rbx, qword ptr [2*rbp - 32]

// CHECK: movrs rbx, qword ptr [rcx + 127]
// CHECK: encoding: [0x48,0x0f,0x38,0x8b,0x59,0x7f]
          movrs rbx, qword ptr [rcx + 127]

// CHECK: movrs rbx, qword ptr [rdx - 128]
// CHECK: encoding: [0x48,0x0f,0x38,0x8b,0x5a,0x80]
          movrs rbx, qword ptr [rdx - 128]