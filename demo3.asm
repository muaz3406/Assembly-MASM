INCLUDE Irvine32.inc

.data

;msg1 byte "*****basarili ici nex stage gecis****",0
;msg2 byte "esit degil new_input ici",0
msg2 byte "Welcome to Color Number Game. You are in Stage1! You Can 6 Guess in 2 minute!",0	
msg3 byte "Congratulations You are in Stage2! You Can 8 Guess in 2 minute !",0		
msg4 byte "                            GAME OVER!!! Much Trial!!!",0
msg5 byte "Congratulations You are in Stage3! You Can 10 Guess in 2 minute !",0
msg6 byte "!!!Congratulations You Win!!!",0
msg7 byte "Number of Try: ",0
msg8 byte "renklendirme cikis ",0
msg9 byte "Game Over!!! Time Left!!! ",0

introdelay DWORD 0

timing5 DWORD 0
timing25 DWORD 0

timing6 DWORD 0
timing26 DWORD 0

timing7 DWORD 0
timing27 DWORD 0


		 q1 dword 	' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '
	 	w2 dword 	' ',' ','*','*','*',' ',' ',' ','*','*','*','*',' ','*','*','*',' ','*','*',' ','*','*',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '
		 e3 dword 	' ',' ',' ','*',' ',' ',' ',' ','*',' ',' ',' ',' ','*',' ','*',' ','*',' ','*',' ','*',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '
	   r4 dword 	' ',' ',' ','*',' ',' ',' ',' ','*',' ',' ',' ',' ','*','*','*',' ','*',' ','*',' ','*',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '
		t5 dword 	' ',' ',' ','*',' ',' ',' ',' ','*','*','*','*',' ','*','*',' ',' ','*',' ',' ',' ','*',' ',' ','P','R','O','J','E','C','T',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '
		 y6 dword 	' ',' ',' ','*',' ',' ',' ',' ','*',' ',' ',' ',' ','*',' ','*',' ','*',' ',' ',' ','*',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '
		 u7 dword 	' ',' ',' ','*',' ',' ',' ',' ','*',' ',' ',' ',' ','*',' ','*',' ','*',' ',' ',' ','*',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '
		 a8 dword 	' ',' ',' ','*',' ',' ',' ',' ','*','*','*','*',' ','*',' ','*',' ','*',' ',' ',' ','*',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '
		d10 dword 	' ',' ',' ',' ',' ',' ',' ',' ',' ','  ',' ',' ',' ',' ',' ',' ',' ','  ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '
		f11 dword 	' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','C','O','L','O','R',' ','N','U','M','B','E','R',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '
		g12 dword 	' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ','G',' ','A',' ','M',' ','E',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '
		h13 dword 	' ',' ',' ',' ','M','U','A','Z',' ','T','A','S','T','E','M','E','L',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '
			

randomtable5 DWORD 0c9h,0cdh,0cdh,0cdh,0cbh,0cdh,0cdh,0cdh,0cbh,0cdh,0cdh,0cdh,0cbh,0cdh,0cdh,0cdh,0cbh,0cdh,0cdh,0cdh,0bbh,10d
			DWORD 0bah,020h,'*',020h,0bah,020h,'*',020h,0bah,020h,'*',020h,0bah,020h,'*',020h,0bah,020h,'*',020h,0bah,10d
			DWORD 0c8h,0cdh,0cdh,0cdh,0cah,0cdh,0cdh,0cdh,0cah,0cdh,0cdh,0cdh,0cah,0cdh,0cdh,0cdh,0cah,0cdh,0cdh,0cdh,0bch,10d

randomtable6  DWORD 0c9h,0cdh,0cdh,0cdh,0cbh,0cdh,0cdh,0cdh,0cbh,0cdh,0cdh,0cdh,0cbh,0cdh,0cdh,0cdh,0cbh,0cdh,0cdh,0cdh,0cbh,0cdh,0cdh,0cdh,0bbh,10d
			  DWORD 0bah,020h,'*',020h,0bah,020h,'*',020h,0bah,020h,'*',020h,0bah,020h,'*',020h,0bah,020h,'*',020h,0bah,020h,'*',020h,0bah,10d
			  DWORD 0c8h,0cdh,0cdh,0cdh,0cah,0cdh,0cdh,0cdh,0cah,0cdh,0cdh,0cdh,0cah,0cdh,0cdh,0cdh,0cah,0cdh,0cdh,0cdh,0cah,0cdh,0cdh,0cdh,0bch,10d
			

randomtable7  DWORD 0c9h,0cdh,0cdh,0cdh,0cbh,0cdh,0cdh,0cdh,0cbh,0cdh,0cdh,0cdh,0cbh,0cdh,0cdh,0cdh,0cbh,0cdh,0cdh,0cdh,0cbh,0cdh,0cdh,0cdh,0cbh,0cdh,0cdh,0cdh,0bbh,10d
			  DWORD 0bah,020h,'*',020h,0bah,020h,'*',020h,0bah,020h,'*',020h,0bah,020h,'*',020h,0bah,020h,'*',020h,0bah,020h,'*',020h,0bah,020h,'*',020h,0bah,10d
			  DWORD 0c8h,0cdh,0cdh,0cdh,0cah,0cdh,0cdh,0cdh,0cah,0cdh,0cdh,0cdh,0cah,0cdh,0cdh,0cdh,0cah,0cdh,0cdh,0cdh,0cah,0cdh,0cdh,0cdh,0cah,0cdh,0cdh,0cdh,0bch,10d
					
			

table5 DWORD 0c9h,0cdh,0cdh,0cdh,0cbh,0cdh,0cdh,0cdh,0cbh,0cdh,0cdh,0cdh,0cbh,0cdh,0cdh,0cdh,0cbh,0cdh,0cdh,0cdh,0bbh,10d
	  DWORD 0bah,020h,'*',020h,0bah,020h,'*',020h,0bah,020h,'*',020h,0bah,020h,'*',020h,0bah,020h,'*',020h,0bah,10d
	  DWORD 0c8h,0cdh,0cdh,0cdh,0cah,0cdh,0cdh,0cdh,0cah,0cdh,0cdh,0cdh,0cah,0cdh,0cdh,0cdh,0cah,0cdh,0cdh,0cdh,0bch,10d

table6 DWORD 0c9h,0cdh,0cdh,0cdh,0cbh,0cdh,0cdh,0cdh,0cbh,0cdh,0cdh,0cdh,0cbh,0cdh,0cdh,0cdh,0cbh,0cdh,0cdh,0cdh,0cbh,0cdh,0cdh,0cdh,0bbh,10d
	  DWORD 0bah,020h,'*',020h,0bah,020h,'*',020h,0bah,020h,'*',020h,0bah,020h,'*',020h,0bah,020h,'*',020h,0bah,020h,'*',020h,0bah,10d
	  DWORD 0c8h,0cdh,0cdh,0cdh,0cah,0cdh,0cdh,0cdh,0cah,0cdh,0cdh,0cdh,0cah,0cdh,0cdh,0cdh,0cah,0cdh,0cdh,0cdh,0cah,0cdh,0cdh,0cdh,0bch,10d

table7 DWORD 0c9h,0cdh,0cdh,0cdh,0cbh,0cdh,0cdh,0cdh,0cbh,0cdh,0cdh,0cdh,0cbh,0cdh,0cdh,0cdh,0cbh,0cdh,0cdh,0cdh,0cbh,0cdh,0cdh,0cdh,0cbh,0cdh,0cdh,0cdh,0bbh,10d
	  DWORD 0bah,020h,'*',020h,0bah,020h,'*',020h,0bah,020h,'*',020h,0bah,020h,'*',020h,0bah,020h,'*',020h,0bah,020h,'*',020h,0bah,020h,'*',020h,0bah,10d
	  DWORD 0c8h,0cdh,0cdh,0cdh,0cah,0cdh,0cdh,0cdh,0cah,0cdh,0cdh,0cdh,0cah,0cdh,0cdh,0cdh,0cah,0cdh,0cdh,0cdh,0cah,0cdh,0cdh,0cdh,0cah,0cdh,0cdh,0cdh,0bch,10d
			



random5 DWORD 5 DUP (?)
guess5 DWORD 5 DUP (0)
guesscolor5 DWORD 5 DUP (?)

random6 DWORD 6 DUP (?)
guess6 DWORD 6 DUP (?)
guesscolor6 DWORD 6 DUP (?)

random7 DWORD 7 DUP (?)
guess7 DWORD 7 DUP (?)
guesscolor7 DWORD 7 DUP (?)

; k==0  b==1 y==2


stage5count DWORD ?
stage6count DWORD ?
stage7count DWORD ?

stage5 DWORD 5
stage6 DWORD 6
stage7 DWORD 7


.code
main PROC

call clrscr
call introanime
call clrscr

stage5_initial:

mov edx, offset msg2
call writestring

call crlf
call randomproc5
call crlf
mov eax,0
call getmseconds

mov timing5,eax

mov ecx,stage5
mov stage5count,0

stage_5:

			
			add stage5count,1  ; input counter
			cmp stage5count,7
			je game_over
			
		
			call crlf
			mov edx, offset msg7
			call writestring
			
			mov eax, DWORD ptr stage5count ; try counter
			call writedec
			call crlf
			cmp stage5count,7
			je game_over
			
			push ecx ; tıme control
			call readch5
			call getmseconds
			sub eax,timing5
			mov timing25,eax
		
		    cmp timing25,120000
		    ja timeleft	
		    pop ecx
		
		 call crlf
		 call table5_
			
			
			call crlf
			;call readch5
			call crlf
			call compare5
			call sonucyaz5  ; renklendirme olacak ekana yazmaya gerek yok 
			
			
			mov eax,0
			mov ebx,0
			mov esi,0
			
			push ecx
			mov ecx, 6
			
stage_control5:

			mov eax,DWORD PTR guesscolor5[esi*4] 
			cmp eax,2 
			jne new_input5 ; 2 olmayan eleman var yeni input al
			inc esi
			loop stage_control5
			pop ecx
			
			jmp basarili5

basarili5: 

			;call crlf
			;mov edx, offset msg1 
			;call writestring 
			
			call crlf
			jmp stage6_initial

			
new_input5:		
			;call crlf
			;mov edx, offset msg2
			;call writestring
			
			
			call crlf
			;call readch
			;call crlf
			jmp guess_color_bosalt5
						
	guess_color_bosalt5:		
			
			mov esi,0
			push ecx
			mov ecx,stage5

	gk5:
			mov eax,0
			mov DWORD PTR guesscolor5[esi*4],eax
			inc esi
			loop gk5
			pop ecx 
		
	;call compare	
	;call sonucyaz
	
	dec cx
	jne stage_5

;****************************

stage6_initial:

call clrscr
mov edx, offset msg3
call writestring 

call crlf
;call tablerandom6_
call crlf
call randomproc6
 
call crlf


mov eax,0
call getmseconds

mov timing6,eax

mov ecx,stage6
mov stage6count,0

stage_6:


			add stage6count,1
			cmp stage6count,9
			je game_over
			call crlf
			mov edx, offset msg7
			call writestring
			mov eax, DWORD ptr stage6count
			call writedec
			call crlf
			
			
			
			push ecx ; sure control
			call readch6
			call getmseconds
			sub eax,timing6
			mov timing26,eax
		
		    cmp timing26,120000
		    ja timeleft	
		    pop ecx
			
			
			
			call crlf
			;call readch6
			call crlf
			call compare6
			call sonucyaz6  ; renklendirme olacak ekana yazmaya gerek yok 		
		


			mov eax,0
			mov ebx,0
			mov esi,0
			
			push ecx
			mov ecx, 7
stage_control6:

			mov eax,DWORD PTR guesscolor6[esi*4] 
			cmp eax,2 
			jne new_input6 ; 2 olmayan eleman var yeni input al
			inc esi
			loop stage_control6
			
			pop ecx
			
			jmp basarili6

basarili6: 

			
			;call crlf
			;mov edx, offset msg1 
			;call writestring 
			
			call crlf
			jmp stage7_initial

			
new_input6:		
			;call crlf
			;mov edx, offset msg2
			;call writestring
			
			
			call crlf
			;call readch
			;call crlf
			jmp guess_color_bosalt6
						
	guess_color_bosalt6:		
			
			mov esi,0
			push ecx
			mov ecx,stage5

	gk6:
			mov eax,0
			mov DWORD PTR guesscolor6[esi*4],eax
			inc esi
			loop gk6
			pop ecx 
		
	;call compare	
	;call sonucyaz
	
	dec cx
	jne stage_6

	
;call crlf
;mov edx, offset msg4
;call writestring 

;********************************************

stage7_initial:


call clrscr
mov edx, offset msg5
call writestring 
call crlf
;call tablerandom7_
call crlf
call randomproc7
 
call crlf

mov eax,0
call getmseconds

mov timing7,eax

mov ecx,stage7
mov stage7count,0

stage_7:



		
		
			
			add stage7count,1
			cmp stage7count,11
			je game_over
			call crlf
			mov edx, offset msg7
			call writestring
			mov eax, DWORD ptr stage7count
			call writedec
			call crlf
			
			
			push ecx ; sure control
			call readch7
			call getmseconds
			sub eax,timing7
			mov timing27,eax
		
		    cmp timing27,120000
		    ja timeleft	
		    pop ecx
					
			call crlf
			;call table7_
			;call readch7 		
			call crlf
			call compare7
			call sonucyaz7 ; renklendirme olacak ekana yazmaya gerek yok 


			mov eax,0
			mov ebx,0
			mov esi,0
			
			push ecx
			mov ecx, 8
stage_control7:

			mov eax,DWORD PTR guesscolor7[esi*4] 
			cmp eax,2 
			jne new_input7 ; 2 olmayan eleman var yeni input al
			inc esi
			loop stage_control7
			
			pop ecx
			
			jmp basarili7

basarili7: 

			;call crlf
			;mov edx, offset msg1 
			;call writestring 
			
			call crlf
			jmp you_win

			
new_input7:		
			;call crlf
			;mov edx, offset msg2
			;call writestring
			
			
			call crlf
			;call readch
			;call crlf
			jmp guess_color_bosalt7
						
	guess_color_bosalt7:		
			
			mov esi,0
			push ecx
			mov ecx,stage7

	gk7:
			mov eax,0
			mov DWORD PTR guesscolor7[esi*4],eax
			inc esi
			loop gk7
			pop ecx 
		
	;call compare	
	;call sonucyaz
	
	dec cx
	jne stage_7

jmp you_win	
;***********************	
	

	
game_over:
call clrscr	
call crlf

mov edx, offset msg4
call writestring 

call introanime
call clrscr
jmp exit_

you_win:

call clrscr
mov edx, offset msg6
call writestring 
jmp exit_


timeleft:
call clrscr
call crlf
mov edx, offset msg9
call writestring 



exit_:


exit	
main ENDP
;*************************



;****************
table_ proc

mov esi,0
mov ecx, 66

tb:
		mov eax,table5 [esi*4]
		call writechar
		inc esi
		loop tb
		

ret
table_ endp

; alınan sayıyı arraye atma



;****************
table5_ proc

mov esi,0
mov ecx, 66

tb:
		mov eax,randomtable5 [esi*4]
		call writechar
		inc esi
		loop tb
		

ret
table5_ endp
;*************************



; alınan sayıyı arraye atma

;****************
table6_ proc

mov esi,0
mov ecx, 78

tb6:
		mov eax,table6 [esi*4]
		call writechar
		inc esi
		loop tb6
		

ret
table6_ endp

; alınan sayıyı arraye atma

;****************
table7_ proc

mov esi,0
mov ecx, 90

tb7:
		mov eax,table7 [esi*4]
		call writechar
		inc esi
		loop tb7
		
ret
table7_ endp

; alınan sayıyı arraye atma


;*******************************begin input
introanime PROC
mov edx,0
			
				mov esi,0
				call clrscr	
				mov ecx,13
				loop111:
				mov introdelay,ecx
				mov ecx,48
				loop211:	
				mov eax,q1[esi*4]
				call writeChar
				mov eax,15
				call delay
				inc esi
				loop loop211
				mov ecx,introdelay
				call crlf
				loop loop111
				mov eax,6000
				call delay

ret
introanime ENDP
;**************************

;*******************************begin input
nextstage PROC
mov edx,0
			
				mov esi,0
				call clrscr	
				mov ecx,13
				loop111:
				mov introdelay,ecx
				mov ecx,48
				loop211:	
				mov eax,q1[esi*4]
				call writeChar
				mov eax,15
				call delay
				inc esi
				loop loop211
				mov ecx,introdelay
				call crlf
				loop loop111
				mov eax,500
				call delay

ret
nextstage ENDP
;**************************







;**********************readchar proc 
readch5 proc

mov esi ,0
mov ecx ,stage5
mov edi,24 

l15:
	mov eax,0
	top5:
	call readchar 
	cmp eax,48
	jb ring5
	cmp eax,57
	ja ring5
	jmp correct5
	ring5:
	mov eax,7
	call writechar
	jmp top5
	correct5:
	mov DWORD PTR randomtable5[edi*4],eax
	add edi,4
	sub eax,48
	mov DWORD PTR guess5[esi*4],eax 
	call writedec
	inc esi
	;add edi,2
	loop l15

ret
readch5 endp
;********************


; alınan sayıyı arraye atma
;**********************readchar proc 
readch6 proc

mov esi ,0       
mov ecx ,stage6
mov edi,28

l16:
	mov eax,0
	top6:
	call readchar 
	cmp eax,48
	jb ring6
	cmp eax,57
	ja ring6
	jmp correct6

	ring6:
	mov eax,7
	call writechar
	jmp top6

	correct6:
	mov DWORD PTR randomtable6[edi*4],eax
	add edi,4
	sub eax,48
	mov DWORD PTR guess6[esi*4],eax
	call writedec
	inc esi
loop l16

ret
readch6 endp
;********************


; alınan sayıyı arraye atma
;**********************readchar proc 
readch7 proc

mov esi ,0       
mov ecx ,stage7
mov edi,32


l17:
	mov eax,0
	top7:
	call readchar
	cmp eax,48
	jb ring7
	cmp eax,57
	ja ring7
	jmp correct7

	ring7:
	mov eax,7
	call writechar
	jmp top7

	correct7:
	mov DWORD PTR randomtable7[edi*4],eax
	add edi,4
	sub eax,48
	mov DWORD PTR guess7[esi*4],eax
	call writedec
	inc esi
loop l17

ret
readch7 endp
;********************



; random sayı alma
;************************ random number proc
randomproc5 proc

call randomize
mov ecx,stage5
mov esi,0
mov edi,24


L15:                      ;random sayısı oluşur
	mov eax,10
	call randomrange 
	mov DWORD PTR random5[esi*4],eax
	;call writedec
	add eax,48
	mov DWORD PTR randomtable5[edi*4],eax
	add edi,4
	inc esi

loop L15




ret
randomproc5 endp
;************************


; random sayı alma
;************************ random number proc
randomproc6 proc

call randomize
mov ecx,stage6
mov esi,0
mov edi,28
L16:                      ;random sayısı oluşur
	mov eax,10
	call randomrange 
	mov DWORD PTR random6[esi*4],eax
	;call writedec
	add eax,48
	mov DWORD PTR randomtable6[edi*4],eax
	add edi,4
	inc esi

loop L16

ret
randomproc6 endp
;************************



; random sayı alma
;************************ random number proc
randomproc7 proc

call randomize
mov ecx,stage7
mov esi,0
mov edi,32
L17:                      ;random sayısı oluşur
	mov eax,10
	call randomrange 
	mov DWORD PTR random7[esi*4],eax
	;call writedec
	add eax,48
	mov DWORD PTR randomtable7[edi*4],eax
	add edi,4
	inc esi

loop L17

ret
randomproc7 endp
;************************




;********************* compare procedure
compare5 PROC

pushad

		mov eax,0
		mov ebx,0
		mov esi,0
		mov edi,0
		mov ecx,stage5		
guess_array5:
		
		mov esi,0
		push ecx
		mov ecx, stage5
random_array5:
		
		
		mov ebx,0
		mov eax,0
		
			
		mov ebx,DWORD PTR random5[esi*4]  ; eax random sayının array  adresi
		mov eax,DWORD PTR guess5[edi*4]   ; ebx girilen sayının array adresi 
	
	
		cmp eax,ebx
		je  yesilmibeyazmi5
		jmp red_5
		
		
yesilmibeyazmi5:		
				cmp esi,edi
				je yesil5
				jmp beyaz5


yesil5:		
		
				mov edx,2
				mov DWORD PTR guesscolor5[edi*4],edx				
				pop ecx
				inc edi
				loop guess_array5
				jmp son5

beyaz5:          
				
				mov edx,1
				mov DWORD PTR guesscolor5[edi*4],edx
				
				inc esi
				loop random_array5
				pop ecx
				inc edi
				loop guess_array5
				jmp son5
					
				
red_5: 			
				cmp DWORD PTR guesscolor5[edi*4],0
				je make_red5
				inc esi
				loop random_array5
				pop ecx
				inc edi
				loop guess_array5
				jmp son5
				
				make_red5:
				mov edx,0
				mov DWORD PTR guesscolor5[edi*4],edx	
				inc esi
				loop random_array5
				pop ecx
				inc edi
				dec cx
				jne guess_array5
				;loop guess_array
				jmp son5
son5:

popad		
ret
compare5 endp
;******************	



;********************* compare procedure
compare6 PROC

pushad

		mov eax,0
		mov ebx,0
		mov esi,0
		mov edi,0
		mov ecx,stage6
		
guess_array6:
		
		
		mov esi,0
		
		
		
		push ecx
		mov ecx, stage6
random_array6:
		
		
		mov ebx,0
		mov eax,0
		
			
		mov ebx,DWORD PTR random6[esi*4]  ; eax random sayının array  adresi
		mov eax,DWORD PTR guess6[edi*4]   ; ebx girilen sayının array adresi 
	
	
		cmp eax,ebx
		je  yesilmibeyazmi6
		jmp red_6
		
		
yesilmibeyazmi6:		
				cmp esi,edi
				je yesil6
				jmp beyaz6


yesil6:		
		
				
				mov edx,2
				mov DWORD PTR guesscolor6[edi*4],edx				
				pop ecx
				inc edi
				loop guess_array6
				jmp son6

beyaz6:          
				


				mov edx,1
				mov DWORD PTR guesscolor6[edi*4],edx
				
				inc esi
				loop random_array6
				pop ecx
				inc edi
				loop guess_array6
				jmp son6
				
				
				
red_6: 			
				cmp DWORD PTR guesscolor6[edi*4],0
				je make_red6
				inc esi
				loop random_array6
				pop ecx
				inc edi
				loop guess_array6
				jmp son6
				
				make_red6:
				mov edx,0
				mov DWORD PTR guesscolor6[edi*4],edx	
				inc esi
				loop random_array6
				pop ecx
				inc edi
				dec cx
				jne guess_array6
				;loop guess_array
				jmp son6

son6:
		

popad		
ret
compare6 endp
;******************	



;********************* compare procedure
compare7 PROC

pushad

		mov eax,0
		mov ebx,0
		mov esi,0
		mov edi,0
		mov ecx,stage7
		
guess_array7:
		
		
		mov esi,0
		
		
		
		push ecx
		mov ecx, stage7
random_array7:
		
		
		mov ebx,0
		mov eax,0
		
			
		mov ebx,DWORD PTR random7[esi*4]  ; eax random sayının array  adresi
		mov eax,DWORD PTR guess7[edi*4]   ; ebx girilen sayının array adresi 
	
	
		cmp eax,ebx
		je  yesilmibeyazmi7
		jmp red_7
		
		
yesilmibeyazmi7:		
				cmp esi,edi
				je yesil7
				jmp beyaz7


yesil7:		
		
				
				mov edx,2
				mov DWORD PTR guesscolor7[edi*4],edx				
				pop ecx
				inc edi
				loop guess_array7
				jmp son7

beyaz7:          
				


				mov edx,1
				mov DWORD PTR guesscolor7[edi*4],edx
				
				inc esi
				loop random_array7
				pop ecx
				inc edi
				loop guess_array7
				jmp son7
				
				
				
red_7: 			
				cmp DWORD PTR guesscolor7[edi*4],0
				je make_red7
				inc esi
				loop random_array7
				pop ecx
				inc edi
				loop guess_array7
				jmp son7
				
				make_red7:
				mov edx,0
				mov DWORD PTR guesscolor7[edi*4],edx	
				inc esi
				loop random_array7
				pop ecx
				inc edi
				dec cx
				jne guess_array7
				;loop guess_array
				jmp son7

son7:
		

popad		
ret
compare7 endp
;******************	




	
;******************	renklendirme	
sonucyaz5 PROC

mov eax,0
mov ebx,0
mov esi,0
mov edi,24
mov ecx,stage5

renkbelirle:


             cmp DWORD PTR guesscolor5[esi*4],1
			 je white_
			 ja green_
			 jb red_

white_:  
		mov eax,white + (black * 16)
		call SetTextColor
		mov eax,DWORD PTR guess5[esi*4]
		call writedec
		add eax,48
		;mov DWORD PTR table5[edi*4],eax
		
		mov eax,yellow + (black * 16)
		call SetTextColor
		add edi,4 
		inc esi
		cmp esi,5
		je ext_
		dec ecx
		jne renkbelirle

		
green_:  
		mov eax,green + (black * 16)
		call SetTextColor
		mov eax,DWORD PTR guess5[esi*4]
		call writedec
		add eax,48
		;mov DWORD PTR table5[edi*4],eax
		
		mov eax,yellow + (black * 16)
		call SetTextColor
		
		add edi,4
		inc esi
		cmp esi, 5
		je ext_
		dec ecx
		jne renkbelirle

		


red_:  
		mov eax,red + (black * 16)
		call SetTextColor
		mov eax,DWORD PTR guess5[esi*4]
		call writedec
		add eax,48
		;mov DWORD PTR table5[edi*4],eax
		
		mov eax,yellow + (black * 16)
		call SetTextColor
		
		add edi,4
		inc esi
		cmp esi, 5
		je ext_
		dec ecx
		jne renkbelirle
		
		
		
call crlf
;mov edx, offset msg8
;call writestring 		
call crlf

ext_:


ret

sonucyaz5 endp		
;********************************************************		



;******************		
sonucyaz6 PROC
		
mov eax,0
mov ebx,0
mov esi,0
mov ecx,stage6



renkbelirle6:


             cmp  DWORD PTR guesscolor6[esi*4],1
			 je white_6
			 ja green_6
			 jb red_6

white_6:  
		mov eax,white + (black * 16)
		call SetTextColor
		mov eax,DWORD PTR guess6[esi*4]
		call writedec
		mov eax,yellow + (black * 16)
		call SetTextColor
		inc esi
		cmp esi, stage6
		je ext_6
		dec ecx
		jne renkbelirle6

		
green_6:  
		mov eax,green + (black * 16)
		call SetTextColor
		mov eax,DWORD PTR guess6[esi*4]
		call writedec
		mov eax,yellow + (black * 16)
		call SetTextColor
	
		inc esi
		cmp esi, stage6
		je ext_6
		dec ecx
		jne renkbelirle6

		


red_6:  
		mov eax,red + (black * 16)
		call SetTextColor
		mov eax,DWORD PTR guess6[esi*4]
		call writedec
		mov eax,yellow + (black * 16)
		call SetTextColor
		
		inc esi
		cmp esi, stage6
		je ext_6
		dec ecx
		jne renkbelirle6
		
		
		
call crlf
;mov edx, offset msg8
;call writestring 		
call crlf

ext_6:


ret

sonucyaz6 endp		
;********************************************************		




;******************		
sonucyaz7 PROC
		
mov eax,0
mov ebx,0
mov esi,0
mov ecx,stage7



renkbelirle7:


             cmp  DWORD PTR guesscolor7[esi*4],1
			 je white_7
			 ja green_7
			 jb red_7

white_7:  
		mov eax,white + (black * 16)
		call SetTextColor
		mov eax,DWORD PTR guess7[esi*4]
		call writedec
		mov eax,yellow + (black * 16)
		call SetTextColor
		inc esi
		cmp esi, stage7
		je ext_7
		dec ecx
		jne renkbelirle7

		
green_7:  
		mov eax,green + (black * 16)
		call SetTextColor
		mov eax,DWORD PTR guess7[esi*4]
		call writedec
		mov eax,yellow + (black * 16)
		call SetTextColor
	
		inc esi
		cmp esi, stage7
		je ext_7
		dec ecx
		jne renkbelirle7

		


red_7:  
		mov eax,red + (black * 16)
		call SetTextColor
		mov eax,DWORD PTR guess7[esi*4]
		call writedec
		mov eax,yellow + (black * 16)
		call SetTextColor
		
		inc esi
		cmp esi, stage7
		je ext_7
		dec ecx
		jne renkbelirle7
		
		
		
call crlf
;mov edx, offset msg8
;call writestring 		
call crlf

ext_7:


ret

sonucyaz7 endp		
;********************************************************		




;****************
tablerandom5_ proc

call randomproc5


mov esi,0
mov ecx, 66

tb5:
		mov eax,randomtable5 [esi*4]
		call writechar
		inc esi
		loop tb5
		
ret
tablerandom5_ endp

;************************************ alınan sayıyı arraye atma


;****************
tablerandom6_ proc

call randomproc6


mov esi,0
mov ecx, 78

tb6:
		mov eax,randomtable6 [esi*4]
		call writechar
		inc esi
		loop tb6
		
ret
tablerandom6_ endp

;************************************ alınan sayıyı arraye atma

;****************
tablerandom7_ proc

call randomproc7


mov esi,0
mov ecx, 90

tb7:
		mov eax,randomtable7 [esi*4]
		call writechar
		inc esi
		loop tb7
		
ret
tablerandom7_ endp

;************************************ alınan sayıyı arraye atma



END main