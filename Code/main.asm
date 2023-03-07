;
; AssemblerLED.asm
;
; Created: 3/6/2023 7:45:41 PM
; Author : JWilliams_E_E
;

; Replace with your application code
;<-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+->
;ENCABEZADO
;Programa 1: Enciende un led
;_________________________________________________________________________________
;CONFIGURACION GENERAL
.INCLUDE "TN2313DEF.INC" ;Hacemos referencia a la familia TN + el # del micro:2313
.CSEG ;Indicamos que este programa se grabe en la memoria flash
.ORG 0 ;Indicamos que se grabe desde la memoria en 0
 
;_________________________________________________________________________________
;STACK POINTER

LDI R16, LOW(RAMEND)
OUT SPL, R16

;_________________________________________________________________________________
;DEFINICION DE REGISTROS Y CONSTANTES

;_________________________________________________________________________________
;CONFIGURACION DE ENTRADAS Y SALIDAS

;Configuro el pin PB0
LDI R16, 0b0000_0001
OUT DDRB, R16

;_________________________________________________________________________________
;PROGRAMA PRINCIPAL

START:
LDI R16, 0b0000_0001
OUT PORTB, R16
LDI R16, 0b0000_0000
OUT PORTB, R16
LDI R16, 0b0000_0001
OUT PORTB, R16
LDI R16, 0b0000_0000
OUT PORTB, R16
RJMP START
;__________________________________________________________________________________
;SUBRUTINAS

;<-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+->