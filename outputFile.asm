
; FRAME for main -------------------------
 MOV R5 FP
MOV FP SP
ADI SP -12 ; make room for RTN address, PFP and 'this'
MOV R7 SP
MOV R0 SP
CMP R0 SL
BLT R0 STACK_OVERFLOW_ERR
ADI R7 4 ; 'this'
LDR R2 null; load what's in the address of null into R2
STR R2 R7
ADI R7 4 ; PFP
STR R5 R7
; FRAME END ------------------------- 

;CALL -------------------------
ADI R7 4 ; RTN address
MOV R0 PC
ADI R0 36
STR R0 R7
 JMP main; jump to function main 
;CALL END -------------------------

PROGRAM_END TRP 0 ; Program stops here
; ------------------------- 

; FUNC X104 Performing: Hello ( ) { 
X104 ADI R0 0; NO OP
ADI SP -112
MOV R0 SP
CMP R0 SL
BLT R0 STACK_OVERFLOW_ERR
; FUNC END -------------------------

; FRAME for HelloSI131 -------------------------
 MOV R5 FP
MOV FP SP
ADI SP -12 ; make room for RTN address, PFP and 'this'
MOV R7 SP
MOV R0 SP
CMP R0 SL
BLT R0 STACK_OVERFLOW_ERR
ADI R7 4 ; 'this'
MOV R2 R5
ADI R2 -8 ; passing 'this' if found in right hand side
LDR R2 R2 ; dereference
STR R2 R7
ADI R7 4 ; PFP
STR R5 R7
; FRAME END ------------------------- 

;CALL -------------------------
ADI R7 4 ; RTN address
MOV R0 PC
ADI R0 36
STR R0 R7
 JMP HelloSI131; jump to function HelloSI131 
;CALL END -------------------------

; REF Performing: this . message [ 0 ] = 'H' ;
 ADI R0 0
MOV R3 FP
ADI R3 -8 ; Load up 'this'
LDR R3 R3 ; dereference 'this'
MOV R4 R3 ; moving this's value to R4
ADI R4 0 ; add offset to R4 to get heap location
MOV R1 FP; move copy of FP into R1 
ADI R1 -24 
STR R4 R1 ; store the offset that's in R4 into the address of r137
; REF END ------------------------- 

; Performing AEF
 ADI R0 0
MOV R1 FP; move copy of FP into R1 
ADI R1 -24 
LDR R1 R1
LDR R1 R1; load what's in the address of R1 into R1
LDR R2 N105; load what's in the address of N105 into R2
LDR R0 false
ADI R0 1 ; loading size of array type which is 1
MUL R2 R0 ; Multiply offset by size of array type
MOV R4 R2
ADD R4 R1 ; add base address to R4 to get heap location
MOV R1 FP; move copy of FP into R1 
ADI R1 -28 
STR R4 R1 ; store the offset that's in R4 into the address of r138
; AEF END -------------------------

; MOV Performing: r138 = H106  
 ADI R0 0; NO OP
LDB R3 H106; load what's in the address of H106 into R3
MOV R2 FP; move copy of FP into R2 
ADI R2 -28 
LDR R2 R2
STB R3 R2 ; store what's in R3 into the address of R2
; MOV END ------------------------- 

; REF Performing: this . message [ 1 ] = 'e' ;
 ADI R0 0
MOV R3 FP
ADI R3 -8 ; Load up 'this'
LDR R3 R3 ; dereference 'this'
MOV R4 R3 ; moving this's value to R4
ADI R4 0 ; add offset to R4 to get heap location
MOV R1 FP; move copy of FP into R1 
ADI R1 -32 
STR R4 R1 ; store the offset that's in R4 into the address of r139
; REF END ------------------------- 

; Performing AEF
 ADI R0 0
MOV R1 FP; move copy of FP into R1 
ADI R1 -32 
LDR R1 R1
LDR R1 R1; load what's in the address of R1 into R1
LDR R2 N107; load what's in the address of N107 into R2
LDR R0 false
ADI R0 1 ; loading size of array type which is 1
MUL R2 R0 ; Multiply offset by size of array type
MOV R4 R2
ADD R4 R1 ; add base address to R4 to get heap location
MOV R1 FP; move copy of FP into R1 
ADI R1 -36 
STR R4 R1 ; store the offset that's in R4 into the address of r140
; AEF END -------------------------

; MOV Performing: r140 = H108  
 ADI R0 0; NO OP
LDB R3 H108; load what's in the address of H108 into R3
MOV R2 FP; move copy of FP into R2 
ADI R2 -36 
LDR R2 R2
STB R3 R2 ; store what's in R3 into the address of R2
; MOV END ------------------------- 

; REF Performing: this . message [ 2 ] = 'l' ;
 ADI R0 0
MOV R3 FP
ADI R3 -8 ; Load up 'this'
LDR R3 R3 ; dereference 'this'
MOV R4 R3 ; moving this's value to R4
ADI R4 0 ; add offset to R4 to get heap location
MOV R1 FP; move copy of FP into R1 
ADI R1 -40 
STR R4 R1 ; store the offset that's in R4 into the address of r141
; REF END ------------------------- 

; Performing AEF
 ADI R0 0
MOV R1 FP; move copy of FP into R1 
ADI R1 -40 
LDR R1 R1
LDR R1 R1; load what's in the address of R1 into R1
LDR R2 N109; load what's in the address of N109 into R2
LDR R0 false
ADI R0 1 ; loading size of array type which is 1
MUL R2 R0 ; Multiply offset by size of array type
MOV R4 R2
ADD R4 R1 ; add base address to R4 to get heap location
MOV R1 FP; move copy of FP into R1 
ADI R1 -44 
STR R4 R1 ; store the offset that's in R4 into the address of r142
; AEF END -------------------------

; MOV Performing: r142 = H110  
 ADI R0 0; NO OP
LDB R3 H110; load what's in the address of H110 into R3
MOV R2 FP; move copy of FP into R2 
ADI R2 -44 
LDR R2 R2
STB R3 R2 ; store what's in R3 into the address of R2
; MOV END ------------------------- 

; REF Performing: this . message [ 3 ] = 'l' ;
 ADI R0 0
MOV R3 FP
ADI R3 -8 ; Load up 'this'
LDR R3 R3 ; dereference 'this'
MOV R4 R3 ; moving this's value to R4
ADI R4 0 ; add offset to R4 to get heap location
MOV R1 FP; move copy of FP into R1 
ADI R1 -48 
STR R4 R1 ; store the offset that's in R4 into the address of r143
; REF END ------------------------- 

; Performing AEF
 ADI R0 0
MOV R1 FP; move copy of FP into R1 
ADI R1 -48 
LDR R1 R1
LDR R1 R1; load what's in the address of R1 into R1
LDR R2 N111; load what's in the address of N111 into R2
LDR R0 false
ADI R0 1 ; loading size of array type which is 1
MUL R2 R0 ; Multiply offset by size of array type
MOV R4 R2
ADD R4 R1 ; add base address to R4 to get heap location
MOV R1 FP; move copy of FP into R1 
ADI R1 -52 
STR R4 R1 ; store the offset that's in R4 into the address of r144
; AEF END -------------------------

; MOV Performing: r144 = H110  
 ADI R0 0; NO OP
LDB R3 H110; load what's in the address of H110 into R3
MOV R2 FP; move copy of FP into R2 
ADI R2 -52 
LDR R2 R2
STB R3 R2 ; store what's in R3 into the address of R2
; MOV END ------------------------- 

; REF Performing: this . message [ 4 ] = 'o' ;
 ADI R0 0
MOV R3 FP
ADI R3 -8 ; Load up 'this'
LDR R3 R3 ; dereference 'this'
MOV R4 R3 ; moving this's value to R4
ADI R4 0 ; add offset to R4 to get heap location
MOV R1 FP; move copy of FP into R1 
ADI R1 -56 
STR R4 R1 ; store the offset that's in R4 into the address of r145
; REF END ------------------------- 

; Performing AEF
 ADI R0 0
MOV R1 FP; move copy of FP into R1 
ADI R1 -56 
LDR R1 R1
LDR R1 R1; load what's in the address of R1 into R1
LDR R2 N112; load what's in the address of N112 into R2
LDR R0 false
ADI R0 1 ; loading size of array type which is 1
MUL R2 R0 ; Multiply offset by size of array type
MOV R4 R2
ADD R4 R1 ; add base address to R4 to get heap location
MOV R1 FP; move copy of FP into R1 
ADI R1 -60 
STR R4 R1 ; store the offset that's in R4 into the address of r146
; AEF END -------------------------

; MOV Performing: r146 = H113  
 ADI R0 0; NO OP
LDB R3 H113; load what's in the address of H113 into R3
MOV R2 FP; move copy of FP into R2 
ADI R2 -60 
LDR R2 R2
STB R3 R2 ; store what's in R3 into the address of R2
; MOV END ------------------------- 

; REF Performing: this . message [ 5 ] = ' ' ;
 ADI R0 0
MOV R3 FP
ADI R3 -8 ; Load up 'this'
LDR R3 R3 ; dereference 'this'
MOV R4 R3 ; moving this's value to R4
ADI R4 0 ; add offset to R4 to get heap location
MOV R1 FP; move copy of FP into R1 
ADI R1 -64 
STR R4 R1 ; store the offset that's in R4 into the address of r147
; REF END ------------------------- 

; Performing AEF
 ADI R0 0
MOV R1 FP; move copy of FP into R1 
ADI R1 -64 
LDR R1 R1
LDR R1 R1; load what's in the address of R1 into R1
LDR R2 N114; load what's in the address of N114 into R2
LDR R0 false
ADI R0 1 ; loading size of array type which is 1
MUL R2 R0 ; Multiply offset by size of array type
MOV R4 R2
ADD R4 R1 ; add base address to R4 to get heap location
MOV R1 FP; move copy of FP into R1 
ADI R1 -68 
STR R4 R1 ; store the offset that's in R4 into the address of r148
; AEF END -------------------------

; MOV Performing: r148 = H115  
 ADI R0 0; NO OP
LDB R3 H115; load what's in the address of H115 into R3
MOV R2 FP; move copy of FP into R2 
ADI R2 -68 
LDR R2 R2
STB R3 R2 ; store what's in R3 into the address of R2
; MOV END ------------------------- 

; REF Performing: this . message [ 6 ] = 'W' ;
 ADI R0 0
MOV R3 FP
ADI R3 -8 ; Load up 'this'
LDR R3 R3 ; dereference 'this'
MOV R4 R3 ; moving this's value to R4
ADI R4 0 ; add offset to R4 to get heap location
MOV R1 FP; move copy of FP into R1 
ADI R1 -72 
STR R4 R1 ; store the offset that's in R4 into the address of r149
; REF END ------------------------- 

; Performing AEF
 ADI R0 0
MOV R1 FP; move copy of FP into R1 
ADI R1 -72 
LDR R1 R1
LDR R1 R1; load what's in the address of R1 into R1
LDR R2 N116; load what's in the address of N116 into R2
LDR R0 false
ADI R0 1 ; loading size of array type which is 1
MUL R2 R0 ; Multiply offset by size of array type
MOV R4 R2
ADD R4 R1 ; add base address to R4 to get heap location
MOV R1 FP; move copy of FP into R1 
ADI R1 -76 
STR R4 R1 ; store the offset that's in R4 into the address of r150
; AEF END -------------------------

; MOV Performing: r150 = H117  
 ADI R0 0; NO OP
LDB R3 H117; load what's in the address of H117 into R3
MOV R2 FP; move copy of FP into R2 
ADI R2 -76 
LDR R2 R2
STB R3 R2 ; store what's in R3 into the address of R2
; MOV END ------------------------- 

; REF Performing: this . message [ 7 ] = 'o' ;
 ADI R0 0
MOV R3 FP
ADI R3 -8 ; Load up 'this'
LDR R3 R3 ; dereference 'this'
MOV R4 R3 ; moving this's value to R4
ADI R4 0 ; add offset to R4 to get heap location
MOV R1 FP; move copy of FP into R1 
ADI R1 -80 
STR R4 R1 ; store the offset that's in R4 into the address of r151
; REF END ------------------------- 

; Performing AEF
 ADI R0 0
MOV R1 FP; move copy of FP into R1 
ADI R1 -80 
LDR R1 R1
LDR R1 R1; load what's in the address of R1 into R1
LDR R2 N118; load what's in the address of N118 into R2
LDR R0 false
ADI R0 1 ; loading size of array type which is 1
MUL R2 R0 ; Multiply offset by size of array type
MOV R4 R2
ADD R4 R1 ; add base address to R4 to get heap location
MOV R1 FP; move copy of FP into R1 
ADI R1 -84 
STR R4 R1 ; store the offset that's in R4 into the address of r152
; AEF END -------------------------

; MOV Performing: r152 = H113  
 ADI R0 0; NO OP
LDB R3 H113; load what's in the address of H113 into R3
MOV R2 FP; move copy of FP into R2 
ADI R2 -84 
LDR R2 R2
STB R3 R2 ; store what's in R3 into the address of R2
; MOV END ------------------------- 

; REF Performing: this . message [ 8 ] = 'r' ;
 ADI R0 0
MOV R3 FP
ADI R3 -8 ; Load up 'this'
LDR R3 R3 ; dereference 'this'
MOV R4 R3 ; moving this's value to R4
ADI R4 0 ; add offset to R4 to get heap location
MOV R1 FP; move copy of FP into R1 
ADI R1 -88 
STR R4 R1 ; store the offset that's in R4 into the address of r153
; REF END ------------------------- 

; Performing AEF
 ADI R0 0
MOV R1 FP; move copy of FP into R1 
ADI R1 -88 
LDR R1 R1
LDR R1 R1; load what's in the address of R1 into R1
LDR R2 N119; load what's in the address of N119 into R2
LDR R0 false
ADI R0 1 ; loading size of array type which is 1
MUL R2 R0 ; Multiply offset by size of array type
MOV R4 R2
ADD R4 R1 ; add base address to R4 to get heap location
MOV R1 FP; move copy of FP into R1 
ADI R1 -92 
STR R4 R1 ; store the offset that's in R4 into the address of r154
; AEF END -------------------------

; MOV Performing: r154 = H120  
 ADI R0 0; NO OP
LDB R3 H120; load what's in the address of H120 into R3
MOV R2 FP; move copy of FP into R2 
ADI R2 -92 
LDR R2 R2
STB R3 R2 ; store what's in R3 into the address of R2
; MOV END ------------------------- 

; REF Performing: this . message [ 9 ] = 'l' ;
 ADI R0 0
MOV R3 FP
ADI R3 -8 ; Load up 'this'
LDR R3 R3 ; dereference 'this'
MOV R4 R3 ; moving this's value to R4
ADI R4 0 ; add offset to R4 to get heap location
MOV R1 FP; move copy of FP into R1 
ADI R1 -96 
STR R4 R1 ; store the offset that's in R4 into the address of r155
; REF END ------------------------- 

; Performing AEF
 ADI R0 0
MOV R1 FP; move copy of FP into R1 
ADI R1 -96 
LDR R1 R1
LDR R1 R1; load what's in the address of R1 into R1
LDR R2 N121; load what's in the address of N121 into R2
LDR R0 false
ADI R0 1 ; loading size of array type which is 1
MUL R2 R0 ; Multiply offset by size of array type
MOV R4 R2
ADD R4 R1 ; add base address to R4 to get heap location
MOV R1 FP; move copy of FP into R1 
ADI R1 -100 
STR R4 R1 ; store the offset that's in R4 into the address of r156
; AEF END -------------------------

; MOV Performing: r156 = H110  
 ADI R0 0; NO OP
LDB R3 H110; load what's in the address of H110 into R3
MOV R2 FP; move copy of FP into R2 
ADI R2 -100 
LDR R2 R2
STB R3 R2 ; store what's in R3 into the address of R2
; MOV END ------------------------- 

; REF Performing: this . message [ 10 ] = 'd' ;
 ADI R0 0
MOV R3 FP
ADI R3 -8 ; Load up 'this'
LDR R3 R3 ; dereference 'this'
MOV R4 R3 ; moving this's value to R4
ADI R4 0 ; add offset to R4 to get heap location
MOV R1 FP; move copy of FP into R1 
ADI R1 -104 
STR R4 R1 ; store the offset that's in R4 into the address of r157
; REF END ------------------------- 

; Performing AEF
 ADI R0 0
MOV R1 FP; move copy of FP into R1 
ADI R1 -104 
LDR R1 R1
LDR R1 R1; load what's in the address of R1 into R1
LDR R2 N122; load what's in the address of N122 into R2
LDR R0 false
ADI R0 1 ; loading size of array type which is 1
MUL R2 R0 ; Multiply offset by size of array type
MOV R4 R2
ADD R4 R1 ; add base address to R4 to get heap location
MOV R1 FP; move copy of FP into R1 
ADI R1 -108 
STR R4 R1 ; store the offset that's in R4 into the address of r158
; AEF END -------------------------

; MOV Performing: r158 = H123  
 ADI R0 0; NO OP
LDB R3 H123; load what's in the address of H123 into R3
MOV R2 FP; move copy of FP into R2 
ADI R2 -108 
LDR R2 R2
STB R3 R2 ; store what's in R3 into the address of R2
; MOV END ------------------------- 

; REF Performing: this . message [ 11 ] = '!' ;
 ADI R0 0
MOV R3 FP
ADI R3 -8 ; Load up 'this'
LDR R3 R3 ; dereference 'this'
MOV R4 R3 ; moving this's value to R4
ADI R4 0 ; add offset to R4 to get heap location
MOV R1 FP; move copy of FP into R1 
ADI R1 -112 
STR R4 R1 ; store the offset that's in R4 into the address of r159
; REF END ------------------------- 

; Performing AEF
 ADI R0 0
MOV R1 FP; move copy of FP into R1 
ADI R1 -112 
LDR R1 R1
LDR R1 R1; load what's in the address of R1 into R1
LDR R2 N124; load what's in the address of N124 into R2
LDR R0 false
ADI R0 1 ; loading size of array type which is 1
MUL R2 R0 ; Multiply offset by size of array type
MOV R4 R2
ADD R4 R1 ; add base address to R4 to get heap location
MOV R1 FP; move copy of FP into R1 
ADI R1 -116 
STR R4 R1 ; store the offset that's in R4 into the address of r160
; AEF END -------------------------

; MOV Performing: r160 = H125  
 ADI R0 0; NO OP
LDB R3 H125; load what's in the address of H125 into R3
MOV R2 FP; move copy of FP into R2 
ADI R2 -116 
LDR R2 R2
STB R3 R2 ; store what's in R3 into the address of R2
; MOV END ------------------------- 

; REF Performing: this . message [ 11 ] = '\n' ;
 ADI R0 0
MOV R3 FP
ADI R3 -8 ; Load up 'this'
LDR R3 R3 ; dereference 'this'
MOV R4 R3 ; moving this's value to R4
ADI R4 0 ; add offset to R4 to get heap location
MOV R1 FP; move copy of FP into R1 
ADI R1 -120 
STR R4 R1 ; store the offset that's in R4 into the address of r161
; REF END ------------------------- 

; Performing AEF
 ADI R0 0
MOV R1 FP; move copy of FP into R1 
ADI R1 -120 
LDR R1 R1
LDR R1 R1; load what's in the address of R1 into R1
LDR R2 N124; load what's in the address of N124 into R2
LDR R0 false
ADI R0 1 ; loading size of array type which is 1
MUL R2 R0 ; Multiply offset by size of array type
MOV R4 R2
ADD R4 R1 ; add base address to R4 to get heap location
MOV R1 FP; move copy of FP into R1 
ADI R1 -124 
STR R4 R1 ; store the offset that's in R4 into the address of r162
; AEF END -------------------------

; MOV Performing: r162 = H126  
 ADI R0 0; NO OP
LDB R3 H126; load what's in the address of H126 into R3
MOV R2 FP; move copy of FP into R2 
ADI R2 -124 
LDR R2 R2
STB R3 R2 ; store what's in R3 into the address of R2
; MOV END ------------------------- 

; RETURN Performing: returning this
 ADI R0 0 ; NO OP
MOV R4 FP; move copy of FP into R4 
ADI R4 -8 
LDR R4 R4; load what's in the address of R4 into R4
MOV SP FP
MOV R6 FP
CMP R6 SB
BGT R6 STACK_UNDERFLOW_ERR
LDR R6 FP
MOV R5 FP
ADI R5 -4
LDR FP R5 ; PFP -> FP
STR R4 SP ; return this
JMR R6 ; GOTO rtn addr
; RETURN END ------------------------- 

; RTN --------------------------------- 
 ADI R0 0
MOV SP FP
MOV R6 FP
CMP R6 SB
BGT R6 STACK_UNDERFLOW_ERR
LDR R6 FP ; rtn address
MOV R5 FP
ADI R5 -4
LDR FP R5 ; PFP -> FP
JMR R6 ; GOTO rtn addr
; RTN END------------------------- 

; FUNC M127 Performing:  
M127 ADI R0 0; NO OP
ADI SP -20
MOV R0 SP
CMP R0 SL
BLT R0 STACK_OVERFLOW_ERR
; FUNC END -------------------------

; MOV Performing: int count = 0 ; 
 ADI R0 0; NO OP
LDR R3 N105; load what's in the address of N105 into R3
MOV R2 FP; move copy of FP into R2 
ADI R2 -16 
STR R3 R2 ; store what's in R3 into the address of R2
; MOV END ------------------------- 

; Performing: while ( count < 13 ) {
BEGIN165 LDR R0 false; loading false which is 0 into R0
LDR R1 true ; loading true which is 1 into R1
MOV R2 FP; move copy of FP into R2 
ADI R2 -16 
LDR R2 R2; load what's in the address of R2 into R2
LDR R3 N102; load what's in the address of N102 into R3
MOV R4 R2
CMP R4 R3
BLT R4 LT175 ; if L128 < N102 GOTO LT175
MOV R4 R0
JMP LT176
LT175 MOV R4 R1
LT176 ADI R0 0 ;NO OP
MOV R3 FP; move copy of FP into R3 
ADI R3 -20 
STR R4 R3 ; store what's in R4 into the address of R3
;LT END -------------------------

; BranchFalse t166 ENDWHILE167
 LDR R0 false; loading false which is 0 into R0
LDR R1 true ; loading true which is 1 into R1
MOV R3 FP; move copy of FP into R3 
ADI R3 -20 
LDR R3 R3; load what's in the address of R3 into R3
BRZ R3 ENDWHILE167; if R3 == 0 then branch to label

; REF Performing: cout << this . message [ count ] ;
 ADI R0 0
MOV R3 FP
ADI R3 -8 ; Load up 'this'
LDR R3 R3 ; dereference 'this'
MOV R4 R3 ; moving this's value to R4
ADI R4 0 ; add offset to R4 to get heap location
MOV R1 FP; move copy of FP into R1 
ADI R1 -24 
STR R4 R1 ; store the offset that's in R4 into the address of r168
; REF END ------------------------- 

; Performing AEF
 ADI R0 0
MOV R1 FP; move copy of FP into R1 
ADI R1 -24 
LDR R1 R1
LDR R1 R1; load what's in the address of R1 into R1
MOV R2 FP; move copy of FP into R2 
ADI R2 -16 
LDR R2 R2; load what's in the address of R2 into R2
LDR R0 false
ADI R0 1 ; loading size of array type which is 1
MUL R2 R0 ; Multiply offset by size of array type
MOV R4 R2
ADD R4 R1 ; add base address to R4 to get heap location
MOV R1 FP; move copy of FP into R1 
ADI R1 -28 
STR R4 R1 ; store the offset that's in R4 into the address of r169
; AEF END -------------------------

; WRITE Performing:  
 ADI R0 0 ; NO OP
MOV R3 FP; move copy of FP into R3 
ADI R3 -28 
LDR R3 R3
LDB R3 R3; load what's in the address of R3 into R3
TRP 3
; WRITE END------------------------- 

; ADD Performing: t170 = L128 + N107 
 ADI R0 0 ; NO OP
MOV R2 FP; move copy of FP into R2 
ADI R2 -16 
LDR R2 R2; load what's in the address of R2 into R2
LDR R3 N107; load what's in the address of N107 into R3
ADD R2 R3
MOV R3 FP; move copy of FP into R3 
ADI R3 -32 
STR R2 R3 ; store what's in R2 into the address of R3

; ADD END-------------------------

; MOV Performing: count = count + 1 ; 
 ADI R0 0; NO OP
MOV R3 FP; move copy of FP into R3 
ADI R3 -32 
LDR R3 R3; load what's in the address of R3 into R3
MOV R2 FP; move copy of FP into R2 
ADI R2 -16 
STR R3 R2 ; store what's in R3 into the address of R2
; MOV END ------------------------- 

; JMP
 JMP BEGIN165 
; JMP END ------------------------- 

; RTN --------------------------------- 
ENDWHILE167 ADI R0 0
MOV SP FP
MOV R6 FP
CMP R6 SB
BGT R6 STACK_UNDERFLOW_ERR
LDR R6 FP ; rtn address
MOV R5 FP
ADI R5 -4
LDR FP R5 ; PFP -> FP
JMR R6 ; GOTO rtn addr
; RTN END------------------------- 

; FUNC HelloSI131 Performing: Static Initializer function for Hello 
HelloSI131 ADI R0 0; NO OP
ADI SP -0
MOV R0 SP
CMP R0 SL
BLT R0 STACK_OVERFLOW_ERR
; FUNC END -------------------------

; MUL Performing: sizeof(pointer) * 13 -> t133 
 ADI R0 0 ; NO OP
LDR R2 false ; load 0 into R2
ADI R2 1 ; add size of pointer
LDR R3 N102; load what's in the address of N102 into R3
MUL R2 R3
MOV R3 FP; move copy of FP into R3 
ADI R3 -16 
STR R2 R3 ; store what's in R2 into the address of R3

; MUL END-------------------------

; NEW Performing: malloc(t133) -> t134
; Allocate space to put an array in memory
 MOV R6 SL
MOV R3 FP; move copy of FP into R3 
ADI R3 -16 
LDR R3 R3; load what's in the address of R3 into R3
ADD SL R3 ; Add size of array which is in R3 into SL
; Find address of t134
MOV R3 FP
ADI R3 -20
; Move the array pointer to the temporary(t134)
STR R6 R3
; NEW END -------------------------

; MOV Performing: private char [ ] message = new char [ 13 ] ; 
 ADI R0 0; NO OP
MOV R3 FP; move copy of FP into R3 
ADI R3 -20 
LDR R3 R3; load what's in the address of R3 into R3
MOV R5 FP
ADI R5 -8 ; Load up 'this'
LDR R5 R5 ; dereference 'this'
MOV R2 R5 ; moving V101's value to R2
ADI R2 0 ; add offset to R2 to get heap location
STR R3 R2 ; store what's in R3 into the address of R2
; MOV END ------------------------- 

; MOV Performing: private bool sayBye = false ; 
 ADI R0 0; NO OP
LDR R3 false; load what's in the address of false into R3
MOV R5 FP
ADI R5 -8 ; Load up 'this'
LDR R5 R5 ; dereference 'this'
MOV R2 R5 ; moving V103's value to R2
ADI R2 4 ; add offset to R2 to get heap location
STR R3 R2 ; store what's in R3 into the address of R2
; MOV END ------------------------- 

; RTN --------------------------------- 
 ADI R0 0
MOV SP FP
MOV R6 FP
CMP R6 SB
BGT R6 STACK_UNDERFLOW_ERR
LDR R6 FP ; rtn address
MOV R5 FP
ADI R5 -4
LDR FP R5 ; PFP -> FP
JMR R6 ; GOTO rtn addr
; RTN END------------------------- 

; FUNC main Performing: void kxi2020 main ( ) { 
main ADI R0 0; NO OP
ADI SP -16
MOV R0 SP
CMP R0 SL
BLT R0 STACK_OVERFLOW_ERR
; FUNC END -------------------------

; NEWI Performing: Hello hello = new Hello ( ) ;
; Allocate space to put an instance in memory
 MOV R6 SL
ADI SL 8; Size of class is 8 
; Find address of t172 
MOV R3 FP
ADI R3 -20
; Move the instance pointer to the temporary(t172)
STR R6 R3
; NEWI END ------------------------- 

; FRAME for X104 -------------------------
 MOV R5 FP
MOV FP SP
ADI SP -12 ; make room for RTN address, PFP and 'this'
MOV R7 SP
MOV R0 SP
CMP R0 SL
BLT R0 STACK_OVERFLOW_ERR
ADI R7 4 ; 'this'
MOV R2 R5; move copy of R5 into R2 
ADI R2 -20 
LDR R2 R2; load what's in the address of R2 into R2
STR R2 R7
ADI R7 4 ; PFP
STR R5 R7
; FRAME END ------------------------- 

;CALL -------------------------
ADI R7 4 ; RTN address
MOV R0 PC
ADI R0 36
STR R0 R7
 JMP X104; jump to function X104 
;CALL END -------------------------

; PEEK Peek t173
 ADI R0 0
LDR R5 SP ; Peek the stack
MOV R3 FP; move copy of FP into R3 
ADI R3 -24 
STR R5 R3

; END of PEEK------------------------- 

; MOV Performing: L129 = t173  
 ADI R0 0; NO OP
MOV R3 FP; move copy of FP into R3 
ADI R3 -24 
LDR R3 R3; load what's in the address of R3 into R3
MOV R2 FP; move copy of FP into R2 
ADI R2 -16 
STR R3 R2 ; store what's in R3 into the address of R2
; MOV END ------------------------- 

; FRAME for M127 -------------------------
 MOV R5 FP
MOV FP SP
ADI SP -12 ; make room for RTN address, PFP and 'this'
MOV R7 SP
MOV R0 SP
CMP R0 SL
BLT R0 STACK_OVERFLOW_ERR
ADI R7 4 ; 'this'
MOV R2 R5; move copy of R5 into R2 
ADI R2 -16 
LDR R2 R2; load what's in the address of R2 into R2
STR R2 R7
ADI R7 4 ; PFP
STR R5 R7
; FRAME END ------------------------- 

;CALL -------------------------
ADI R7 4 ; RTN address
MOV R0 PC
ADI R0 36
STR R0 R7
 JMP M127; jump to function M127 
;CALL END -------------------------

; RTN --------------------------------- 
 ADI R0 0
MOV SP FP
MOV R6 FP
CMP R6 SB
BGT R6 STACK_UNDERFLOW_ERR
LDR R6 FP ; rtn address
MOV R5 FP
ADI R5 -4
LDR FP R5 ; PFP -> FP
JMR R6 ; GOTO rtn addr
; RTN END------------------------- 
STACK_OVERFLOW_ERR ADI R0 0
LDR R0 null
ADI R0 404
JMP DISPLAY_ERR

STACK_UNDERFLOW_ERR ADI R0 0
LDR R0 null
ADI R0 303
JMP DISPLAY_ERR

DISPLAY_ERR ADI R0 0
MOV R3 R0
TRP 1
JMP PROGRAM_END


; Global Data Segment
true .INT 1
false .INT 0
null .INT 0
N102 .INT 13
N105 .INT 0
H106 .BYT 72
N107 .INT 1
H108 .BYT 101
N109 .INT 2
H110 .BYT 108
N111 .INT 3
N112 .INT 4
H113 .BYT 111
N114 .INT 5
H115 .BYT 32
N116 .INT 6
H117 .BYT 87
N118 .INT 7
N119 .INT 8
H120 .BYT 114
N121 .INT 9
N122 .INT 10
H123 .BYT 100
N124 .INT 11
H125 .BYT 33
H126 .BYT 10
