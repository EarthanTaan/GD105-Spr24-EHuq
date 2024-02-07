/*
BernardMT-Condensed
Algerian
BradleyHandITC
Castellar
Chiller-Regular
ColonnaMT
CourierNewPSMT
EngraversMT
FelixTitlingMT
ImprintMT-Shadow
NiagaraEngraved-Reg
OldEnglishTextMT
Onyx
Parchment-Regular
Playbill
SourceCodePro-Light
Stencil
*/

size(400, 400);
PFont font;
// The font must be located in the sketch's 
// "data" directory to load successfully
font = createFont("BernardMT-Condensed
.otf", 128);
textFont(font);
text("word", 50, 200);
