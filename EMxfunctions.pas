unit EMXFunctions;

{$mode objfpc}{$H+}

interface

uses
  Classes, Dialogs, SysUtils;
type
   TGetPCMSynthName = String;
   TSamplename = String;
   TNotestring = String;
   TSynthoscillatorstring = String;
   TWaveformstring = String;

function GetPCMSynthName(num : integer): TGetPCMSynthName;
function Samplename(num : integer) : TSamplename;
function Notestring (num : integer) : TNotestring;
Function Synthoscillatorstring(Synthoscillator : integer) :  TSynthoscillatorstring;
Function Waveformstring(Waveform : integer; Synthoscillator : integer ) : TWaveformstring;



implementation


Function GetPCMSynthName (num : integer) : TGetPCMSynthName;
//Function provided by Elke Peuser

begin
	Case num of
	//Keyboard
	1 : GetPCMSynthName:='Piano';
	2 : GetPCMSynthName:='E-Piano';
	3 : GetPCMSynthName:='Clav';
	4 : GetPCMSynthName:='M1-Organ';
	5 : GetPCMSynthName:='Organ';
	//Mallet
	6 : GetPCMSynthName:='Marimba';
	7 : GetPCMSynthName:='Vibe';
	8 : GetPCMSynthName:='Cymbell';
	//Woodwind
	9 : GetPCMSynthName:='Flute';
	10 : GetPCMSynthName:='AltoSax';
	11 : GetPCMSynthName:='M1-T.Sax';
	//Brass
	12 : GetPCMSynthName:='Trumpet';
	13 : GetPCMSynthName:='MuteTp';
	14 : GetPCMSynthName:='BrassEns';
	//Choir
	15 : GetPCMSynthName:='VoiceAh';
	16 : GetPCMSynthName:='M1-Choir';
	17 : GetPCMSynthName:='VoiceWav';
	//String
	18 : GetPCMSynthName:='Violin';
	19 : GetPCMSynthName:='Strings';
	20 : GetPCMSynthName:='Pizzicat';
	//Guitar
	21 : GetPCMSynthName:='F.Guitar';
	22 : GetPCMSynthName:='A.Guitar';
	23 : GetPCMSynthName:='MuteGtr';
	24 : GetPCMSynthName:='FunkGtr';
	25 : GetPCMSynthName:='Sitar';
	//Bass
	26 : GetPCMSynthName:='A.Bass';
	27 : GetPCMSynthName:='E.Bass';
	28 : GetPCMSynthName:='M1-Bass';
	29 : GetPCMSynthName:='PickBass';
	30 : GetPCMSynthName:='SlapBass';
	//SynthWave
	31 : GetPCMSynthName:='FMBass';
	32 : GetPCMSynthName:='88Bass';
	33 : GetPCMSynthName:='BoostSaw';
	34 : GetPCMSynthName:='SawSqMix';
	35 : GetPCMSynthName:='HPFSaw';
	36 : GetPCMSynthName:='OctBass1';
	37 : GetPCMSynthName:='OctBass2';
	38 : GetPCMSynthName:='Saw5th';
	39 : GetPCMSynthName:='Squ5th';
	40 : GetPCMSynthName:='SynSin1';
	41 : GetPCMSynthName:='SynSin2';
	42 : GetPCMSynthName:='SynSin3';
	43 : GetPCMSynthName:='SynSin4';
	44 : GetPCMSynthName:='SynSin5';
	45 : GetPCMSynthName:='SynWire1';
	46 : GetPCMSynthName:='SynWire2';
	47 : GetPCMSynthName:='Digi1';
	48 : GetPCMSynthName:='Digi2';
	49 : GetPCMSynthName:='Digi3';
	50 : GetPCMSynthName:='Digi4';
	51 : GetPCMSynthName:='SynVox1';
	52 : GetPCMSynthName:='SynVox2';
	53 : GetPCMSynthName:='Endless';
	//Motion
	54 : GetPCMSynthName:='Syn-FX1';
	55 : GetPCMSynthName:='Syn-Fx2';
	//Hit
	56 : GetPCMSynthName:='OrchHit';
	57 : GetPCMSynthName:='BandHit1';
	58 : GetPCMSynthName:='Bandhit2';
	59 : GetPCMSynthName:='DiscoHit';
	60 : GetPCMSynthName:='RaveHit1';
	61 : GetPCMSynthName:='RaveHit2';
	62 : GetPCMSynthName:='RaveHit3';
	63 : GetPCMSynthName:='RaveHit4';
	64 : GetPCMSynthName:='RaveHit5';
	65 : GetPCMSynthName:='RaveHit6';
	//Chordset (Maj,min,Maj7,min7)
	66 : GetPCMSynthName:='CH-Piano';
	67 : GetPCMSynthName:='CH-M1Pia';
	68 : GetPCMSynthName:='CH-EPian';
	69 : GetPCMSynthName:='CH-Organ';
	70 : GetPCMSynthName:='CH-Strgs';
	//Chordset (min,sus47,min7)
	71 : GetPCMSynthName:='CH-Gtr1';
	//Chordset (min,min,sus4,)
	72 : GetPCMSynthName:='CH-gtr2';
	//Drumset
	73 : GetPCMSynthName:='DR-BDs';
	74 : GetPCMSynthName:='DR-SDs';
	75 : GetPCMSynthName:='DR-CymTym';
	76 : GetPCMSynthName:='DR-Percs';
	end;
        //ShowMessage(GetPCMSynthName + '|' +TGetPCMSynthName)
end;
function Samplename (num : integer) : TSamplename;
//Slavejob
begin
	Case num of
     	1 : Samplename:='BD-Dark';
     	2 : Samplename:='BD-99 1';
     	3 : Samplename:='BD-99 2';
     	4 : Samplename:='BD-Syn1';
     	5 : Samplename:='BD-Syn2';
     	6 : Samplename:='BD-Syn3';
     	7 : Samplename:='BD-Syn4';
     	8 : Samplename:='BD-Syn5';
     	9 : Samplename:='BD-Syn6';
     	10 : Samplename:='BD-Syn7';
     	11 : Samplename:='BD-Syn8';
     	12 : Samplename:='BD-Syn9';
     	13 : Samplename:='BD-Syn10';
     	14 : Samplename:='BD-Dist1';
     	15 : Samplename:='BD-Dist2';
     	16 : Samplename:='BD-Dist3';
     	17 : Samplename:='BD-Dist4';
     	18 : Samplename:='BD-Dist5';
     	19 : Samplename:='BD-Dist6';
     	20 : Samplename:='BD-Dist7';
     	21 : Samplename:='BD-Squas';
     	22 : Samplename:='BD-88 1';
     	23 : Samplename:='BD-88 2';
     	24 : Samplename:='BD-Digi';
     	25 : Samplename:='BD-DDD1';
     	26 : Samplename:='BD-DDD2';
     	27 : Samplename:='BD-Lynn';
     	28 : Samplename:='BD-Dry1';
     	29 : Samplename:='BD-Dry2';
     	30 : Samplename:='BD-Dry3';
     	31 : Samplename:='BD-Dry4';
     	32 : Samplename:='BD-Soft';
     	33 : Samplename:='BD-Hip';
     	34 : Samplename:='BD-R&B';
     	35 : Samplename:='BD-Jazz';
     	36 : Samplename:='BD-Break';
     	37 : Samplename:='BD-Ambi';
     	38 : Samplename:='BD-Def';
     	39 : Samplename:='BD-D&B1';
     	40 : Samplename:='BD-D&B2';
     	41 : Samplename:='BigBreak';
     	//Snaredrums
     	42 : Samplename:='SD-99 1';
     	43 : Samplename:='SD-99 2';
     	44 : Samplename:='SD-99 3';
     	45 : Samplename:='SD-99 4';
     	46 : Samplename:='SD-99 5';
     	47 : Samplename:='SD-88 1';
     	48 : Samplename:='SD-88 2';
     	49 : Samplename:='SD-88 3';
     	50 : Samplename:='SD-Syn1';
     	51 : Samplename:='SD-Syn2';
     	52 : Samplename:='SD-77';
     	53 : Samplename:='SD-Lynn';
     	54 : Samplename:='SD-Disco';
     	55 : Samplename:='SD-Dry 1';
     	56 : Samplename:='SD-Dry 2';
     	57 : Samplename:='SD-Dry 3';
     	58 : Samplename:='SD-Dry 4';
     	59 : Samplename:='SD-Dry 5';
     	60 : Samplename:='SD-Dry 6';
     	61 : Samplename:='SD-Ambi1';
     	62 : Samplename:='SD-Ambi2';
     	63 : Samplename:='SD-Ambi3';
     	64 : Samplename:='SD-Picl1';
     	65 : Samplename:='SD-Picl2';
     	66 : Samplename:='SD-Picl3';
     	67 : Samplename:='SD-Bras1';
     	68 : Samplename:='SD-Bras2';
     	69 : Samplename:='SD-Crckl';
     	70 : Samplename:='SD-Brk1';
     	71 : Samplename:='SD-Brk2';
     	72 : Samplename:='SD-Brk3';
     	73 : Samplename:='SD-Brk4';
     	74 : Samplename:='SD-D&B';
     	75 : Samplename:='SD-Clap1';
     	76 : Samplename:='SD-Clap2';
     	77 : Samplename:='SD-R&B1';
     	78 : Samplename:='SD-R&B2';
     	79 : Samplename:='SD-R&B3';
     	80 : Samplename:='SD-R&B4';
     	81 : Samplename:='SD-R&B5';
     	//Rim
     	82 : Samplename:='RM-Ambi1';
     	83 : Samplename:='RM-Ambi2';
     	84 : Samplename:='RM-Dry';
     	85 : Samplename:='RM-DDD';
     	86 : Samplename:='RM-Lynn';
     	87 : Samplename:='RM-88';
     	//Clap
     	88 : Samplename:='Clp-99 1';
     	89 : Samplename:='Clp-99 2';
     	90 : Samplename:='Clp-88 1';
     	91 : Samplename:='Clp-88 2';
     	92 : Samplename:='Clp-Nois';
     	93 : Samplename:='Clp-R&B1';
     	94 : Samplename:='Clp-R&B2';
     	//Hihat
     	95 : Samplename:='HH-99 1C';
     	96 : Samplename:='HH-99 1O';
     	97 : Samplename:='HH-99 2C';
     	98 : Samplename:='HH-99 2H';
     	99 : Samplename:='HH-99 2O';
     	100 : Samplename:='HH-99 3C';
     	101 : Samplename:='HH-99 3O';
     	102 : Samplename:='HH-88 C';
     	103 : Samplename:='HH-88 O';
     	104 : Samplename:='HH-Syn1C';
     	105 : Samplename:='HH-Syn1H';
     	106 : Samplename:='HH-Syn1O';
     	107 : Samplename:='HH-Syn2C';
     	108 : Samplename:='HH-Syn2O';
     	109 : Samplename:='HH-Syn3C';
     	110 : Samplename:='HH-Syn3O';
     	111 : Samplename:='HH-Nrm1C';
     	112 : Samplename:='HH-Nrm1O';
     	113 : Samplename:='HH-Nrm2C';
     	114 : Samplename:='HH-Nrm2O';
     	115 : Samplename:='HH-CrspC';
     	116 : Samplename:='HH-CrspO';
     	117 : Samplename:='HH-OldC';
     	118 : Samplename:='HH-OldO';
     	119 : Samplename:='HH-LynnC';
     	120 : Samplename:='HH-LynnO';
     	//Ride Cymbal
     	121 : Samplename:='Rid-99 1';
     	122 : Samplename:='Rid-99 2';
     	123 : Samplename:='Rid-KPR';
     	124 : Samplename:='Rid-Edg1';
     	125 : Samplename:='Rid-Edg2';
     	126 : Samplename:='Rid-Jazz';
     	//Crash Cymbal
     	127 : Samplename:='Crs-99 1';
     	128 : Samplename:='Crs-99 2';
     	129 : Samplename:='Crs-Nrm';
     	130 : Samplename:='Crs-Spls';
     	//Tom
     	131 : Samplename:='Tom-99';
     	132 : Samplename:='Tom-88';
     	133 : Samplename:='Tom-Simm';
     	134 : Samplename:='Tom-NrmH';
     	135 : Samplename:='Tom-NrmL';
     	136 : Samplename:='Tom-NrmF';
     	137 : Samplename:='Tom-Jazz';
     	//Percussions
     	138 : Samplename:='Bng-Hi';
     	139 : Samplename:='Bng-Slap';
     	140 : Samplename:='Bng-Lo1';
     	141 : Samplename:='Bng-Lo2';
     	142 : Samplename:='Cng-Hi1';
     	143 : Samplename:='Cng-Hi2';
     	144 : Samplename:='Cng-HiMt';
     	145 : Samplename:='Cng-Lo1';
     	146 : Samplename:='Cng-Lo2';
     	147 : Samplename:='Cng-LoMt';
     	148 : Samplename:='Cng-LynH';
     	149 : Samplename:='Cng-LynL';
     	150 : Samplename:='Timb-Hi1';
     	151 : Samplename:='Timb-Hi2';
     	152 : Samplename:='Timb-Lo1';
     	153 : Samplename:='Timb-Lo2';
     	154 : Samplename:='Timb-Rim';
     	155 : Samplename:='Claves';
     	156 : Samplename:='Cowbell';
     	157 : Samplename:='ChaChaBl';
     	158 : Samplename:='MamboBel';
     	159 : Samplename:='Agogo';
     	160 : Samplename:='Triangle';
     	161 : Samplename:='Tambouri';
     	162 : Samplename:='Junk1';
     	163 : Samplename:='Junk2';
     	164 : Samplename:='SleightBl';
     	165 : Samplename:='Shaker1';
     	166 : Samplename:='Shaker2';
     	167 : Samplename:='Cabasa1';
     	168 : Samplename:='Cabasa2';
     	169 : Samplename:='Cabasa3';
     	170 : Samplename:='Guiro-S';
     	171 : Samplename:='Guiro-L';
     	172 : Samplename:='Wbl-DDDH';
     	173 : Samplename:='Wbl-DDD';
     	174 : Samplename:='Whistle';
     	175 : Samplename:='Baya-Ghe';
     	176 : Samplename:='Baya-Mt1';
     	177 : Samplename:='Baya-Mt2';
     	178 : Samplename:='Tbla-Na';
     	179 : Samplename:='Tbla-Tin';
     	180 : Samplename:='Tbla-Mt1';
     	181 : Samplename:='Tbla-Mt2';
     	182 : Samplename:='Djmb-1a';
     	183 : Samplename:='Djmb-1b';
     	184 : Samplename:='Djmb-1c';
     	185 : Samplename:='Djmb-2a';
     	186 : Samplename:='Djmb-2b';
     	187 : Samplename:='Djmb-2c';
     	188 : Samplename:='Udu';
     	189 : Samplename:='Taiko-Op';
     	190 : Samplename:='Taiko-Rm';
     	191 : Samplename:='Tsuzumi';
     	//Synth Perc
     	192 : Samplename:='GtrWah';
     	193 : Samplename:='Zap1';
     	194 : Samplename:='Zap2';
     	195 : Samplename:='SynPerc1';
     	196 : Samplename:='SynPerc2';
     	197 : Samplename:='SynPerc3';
     	198 : Samplename:='SynPerc4';
     	199 : Samplename:='SynPerc5';
     	200 : Samplename:='SynPerc6';
     	//Reverse
     	201 : Samplename:='Rev-BD';
     	202 : Samplename:='Rev-SD1';
     	203 : Samplename:='Rev-SD2';
     	204 : Samplename:='Rev-Crsh';
     	//Scratch
     	205 : Samplename:='Scratch1';
     	206 : Samplename:='Scratch2';
     	207 : Samplename:='Scratch3';
	end;
end;
function Notestring (num : integer) : TNotestring;
begin
	Case num of
                0 : NoteString :='C-2';
		1 : NoteString :='C#-2';
		2 : NoteString :='D-2';
		3 : NoteString :='D#-2';
		5 : NoteString :='E-2';
		6 : NoteString :='F-2';
		7 : NoteString :='F#-2';
		8 : NoteString :='G-2';
		9 : NoteString :='G#-2';
		10 : NoteString :='A-2';
		11 : NoteString :='A#-2';
		12 : NoteString :='B-2';
		13 : NoteString :='C-1';
		14 : NoteString :='C#-1';
		15 : NoteString :='D-1';
		16 : NoteString :='E-1';
		17 : NoteString :='F-1';
		18 : NoteString :='F#-1';
		19 : NoteString :='G-1';
		20 : NoteString :='G#-1';
		21 : NoteString :='A-1';
		22 : NoteString :='A#-1';
		23 : NoteString :='B-1';
		24 : NoteString :='C 0';
		25 : NoteString :='C#0';
		26 : NoteString :='D 0';
		27 : NoteString :='D#0';
		28 : NoteString :='E 0';
		29 : NoteString :='F 0';
		30 : NoteString :='F#0';
		31 : NoteString :='G 0';
		32 : NoteString :='G#0';
		33 : NoteString :='A 0';
		34 : NoteString :='A#0';
		35 : NoteString :='B 0';
		36 : NoteString :='C 1';
		37 : NoteString :='C#1';
		38 : NoteString :='D 1';
		39 : NoteString :='D#1';
		40 : NoteString :='E 1';
		41 : NoteString :='F 1';
		42 : NoteString :='F#1';
		43 : NoteString :='G 1';
		44 : NoteString :='G#1';
		45 : NoteString :='A 1';
		46 : NoteString :='A#1';
		47 : NoteString :='B 1';
		48 : NoteString :='C 2';
		49 : NoteString :='C#2';
		50 : NoteString :='D 2';
		51 : NoteString :='D#2';
		52 : NoteString :='E 2';
		53 : NoteString :='F 2';
		54 : NoteString :='F#2';
		55 : NoteString :='G 2';
		56 : NoteString :='G#2';
		57 : NoteString :='A 2';
		58 : NoteString :='A#2';
		59 : NoteString :='B 2';
		60 : NoteString :='C 3';
		61 : NoteString :='C#3';
		62 : NoteString :='D 3';
		63 : NoteString :='D#3';
		64 : NoteString :='E 3';
		65 : NoteString :='F 3';
		66 : NoteString :='F#3';
		67 : NoteString :='G 3';
		68 : NoteString :='G#3';
		69 : NoteString :='A 3';
		70 : NoteString :='A#3';
		71 : NoteString :='B 3';
		72 : NoteString :='C 4';
		73 : NoteString :='C#4';
		74 : NoteString :='D 4';
		75 : NoteString :='D#4';
		76 : NoteString :='E 4';
		77 : NoteString :='F 4';
		78 : NoteString :='F#4';
		79 : NoteString :='G 4';
		80 : NoteString :='G#4';
		81 : NoteString :='A 4';
		82 : NoteString :='A#4';
		83 : NoteString :='B 4';
		84 : NoteString :='C 5';
		85 : NoteString :='C#5';
		86 : NoteString :='D 5';
		87 : NoteString :='D#5';
		88 : NoteString :='E 5';
		89 : NoteString :='F 5';
		90 : NoteString :='F#5';
		91 : NoteString :='G 5';
		92 : NoteString :='G#5';
		93 : NoteString :='A 5';
		94 : NoteString :='A#5';
		95 : NoteString :='B 5';
		96 : NoteString :='C 6';
		97 : NoteString :='C#6';
		98 : NoteString :='D 6';
		99 : NoteString :='D#6';
		100 : NoteString :='E 6';
		101 : NoteString :='F 6';
		102 : NoteString :='F#6';
		103 : NoteString :='G 6';
		104 : NoteString :='G#6';
		105 : NoteString :='A 6';
		106 : NoteString :='A#6';
		107 : NoteString :='B 6';
		108 : NoteString :='C 7';
		109 : NoteString :='C#7';
		110 : NoteString :='D 7';
		111 : NoteString :='D#7';
		112 : NoteString :='E 7';
		113 : NoteString :='F 7';
		114 : NoteString :='F#7';
		115 : NoteString :='G 7';
		116 : NoteString :='G#7';
		117 : NoteString :='A 7';
		118 : NoteString :='A#7';
		119 : NoteString :='B 7';
		120 : NoteString :='C 8';
		121 : NoteString :='C#8';
		122 : NoteString :='D 8';
		123 : NoteString :='D#8';
		124 : NoteString :='E 8';
		125 : NoteString :='F 8';
		126 : NoteString :='F#8';
		127 : NoteString :='G 8';
		188 : NoteString :='---'; //Nothing
		//otherwise NoteString :='Err';
                otherwise NoteString :='---';  //ignore them, because User misconfigurated Midifilter
	end;
end;
Function Synthoscillatorstring(Synthoscillator : integer) :  TSynthoscillatorstring;
begin
Case Synthoscillator of
     0 : Synthoscillatorstring :='Waveform';
     1 : Synthoscillatorstring :='DualOsc';
     2 : Synthoscillatorstring :='Chord';
     3 : Synthoscillatorstring :='Unison';
     4 : Synthoscillatorstring :='Ring Mod';
     5 : Synthoscillatorstring :='Osc Sync';
     6 : Synthoscillatorstring :='Cross Mod';
     7 : Synthoscillatorstring :='VPM';
     8 : Synthoscillatorstring :='WS';
     9 : Synthoscillatorstring :='Additive';
     10 : Synthoscillatorstring :='Comb';
     11 : Synthoscillatorstring :='Formant';
     12 : Synthoscillatorstring :='Noise';
     13 : Synthoscillatorstring :='PCM+Comb';
     14 : Synthoscillatorstring :='PCM+WS';
     15 : Synthoscillatorstring :='Audio in + Comb';
end;
end;

Function Waveformstring(Waveform : integer; Synthoscillator : integer ) : TWaveformstring;
begin
If (Synthoscillator=0) or (Synthoscillator=7) or (Synthoscillator=9) then
   begin
        Case Waveform of
          0 : Waveformstring :='Saw';
  	  1 : Waveformstring :='Pulse';
  	  2 : Waveformstring :='Tri';
  	  3 : Waveformstring :='Sin';
        end;
end;
If (Synthoscillator=1) or (Synthoscillator=4) or (Synthoscillator=6) then
   begin
        Case Waveform of
          0 : Waveformstring :='SawSaw';
  	  1 : Waveformstring :='SawSqu';
  	  2 : Waveformstring :='SawTri';
  	  3 : Waveformstring :='SawSin';
          4 : Waveformstring :='SawNs';
  	  5 : Waveformstring :='SquSaw';
  	  6 : Waveformstring :='SquSqu';
  	  7 : Waveformstring :='SquTri';
          8 : Waveformstring :='SquSin';
  	  9 : Waveformstring :='SquNs';
  	  10 : Waveformstring :='TriSaw';
  	  11 : Waveformstring :='TriSqu';
          12 : Waveformstring :='TriTri';
  	  13 : Waveformstring :='TriSin';
  	  14 : Waveformstring :='TriNs';
  	  15 : Waveformstring :='SinSaw';
          16 : Waveformstring :='SinSqu';
  	  17 : Waveformstring :='SinTri';
  	  18 : Waveformstring :='SinSin';
  	  19 : Waveformstring :='SinNs';
        end;
   end;
If (Synthoscillator=2) or (Synthoscillator=5) then
   begin
        Case Waveform of
          0 : Waveformstring :='Saw';
  	  1 : Waveformstring :='Sin';
        end;
   end;
 If (Synthoscillator=3) then
   begin
        Case Waveform of
          0 : Waveformstring :='3Saw';
  	  1 : Waveformstring :='4Saw';
  	  2 : Waveformstring :='5Saw';
  	  3 : Waveformstring :='6Saw';
          4 : Waveformstring :='3Squ';
  	  5 : Waveformstring :='4Squ';
  	  6 : Waveformstring :='5Squ';
          7 : Waveformstring :='6Squ';
          8 : Waveformstring :='3Tri';
  	  9 : Waveformstring :='4Tri';
  	  10 : Waveformstring :='5Tri';
  	  11 : Waveformstring :='6Tri';
          12 : Waveformstring :='3Sin';
  	  13 : Waveformstring :='4Sin';
  	  14 : Waveformstring :='5Sin';
  	  15 : Waveformstring :='6Sin';
        end;
   end;
 If (Synthoscillator=8) then
   begin
        Case Waveform of
          0 : Waveformstring :='Type 1';
  	  1 : Waveformstring :='Type 2';
        end;
   end;
 If (Synthoscillator=10) then
    begin
         Case Waveform of
           0 : Waveformstring :='Saw';
   	   1 : Waveformstring :='Pulse';
   	   2 : Waveformstring :='Tri';
   	   3 : Waveformstring :='Sin';
           4 : Waveformstring :='Noise';
         end;
    end;
If (Synthoscillator=11) or (Synthoscillator=12) or (Synthoscillator=15) then Waveformstring :='------';
If (Synthoscillator=13) or (Synthoscillator=14) then
   begin
        Waveform := Waveform + 1;
        Waveformstring := GetPCMSynthName(Waveform);
   end;
end;

end.

