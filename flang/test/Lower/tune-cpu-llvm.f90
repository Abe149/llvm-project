! RUN: %if x86-registered-target %{ %flang -mtune=pentium4 -S -emit-llvm %s -o - | FileCheck %s --check-prefixes=ALL,CHECK-X86 %}
! RUN: %if aarch64-registered-target %{ %flang -mtune=neoverse-n1 -S -emit-llvm %s -o - | FileCheck %s --check-prefixes=ALL,CHECK-ARM %}

!ALL: attributes #{{[0-9]+}} = {
!CHECK-X86-SAME: "tune-cpu"="pentium4"
!CHECK-ARM-SAME: "tune-cpu"="neoverse-n1"
subroutine a
end subroutine a
