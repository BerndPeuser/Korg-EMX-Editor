unit MainformEMX;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, uPSComponent, Forms, Controls, Graphics, Dialogs,
  ExtCtrls, Menus, ComCtrls, StdCtrls, Buttons, ueled, uEKnob, types;

type

  { TMainForm }

  TMainForm = class(TForm)
    Bank: TComboBox;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    LoadFileB: TButton;
    OpenDialog1: TOpenDialog;
    SaveFileB: TButton;
    GlobalSettingsB: TButton;
    Pattern: TComboBox;
    FileSelection: TComboBox;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItem19: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem20: TMenuItem;
    MenuItem21: TMenuItem;
    MenuItem22: TMenuItem;
    MenuItem23: TMenuItem;
    MenuItem24: TMenuItem;
    MenuItem25: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet10: TTabSheet;
    TabSheet11: TTabSheet;
    TabSheet12: TTabSheet;
    TabSheet13: TTabSheet;
    TabSheet14: TTabSheet;
    TabSheet15: TTabSheet;
    SynthAccent: TTabSheet;
    TabSheet16: TTabSheet;
    Overview: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    TreeView1: TTreeView;
    uEKnob1: TuEKnob;
    Led_Arp: TuELED;
    LED_Protect: TuELED;
    procedure FileSelectionChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure GlobalSettingsBClick(Sender: TObject);
    procedure LoadFileBClick(Sender: TObject);
    procedure PatternChange(Sender: TObject);
    procedure SaveFileBClick(Sender: TObject);
    procedure Led_ArpChange(Sender: TObject);
    //procedure PSCustomPlugin1CompileImport1(Sender: TPSScript);
  private
    { private declarations }
  public
    { public declarations }
  Var
     filename : string;
     Protect: Integer;
     Mastertune: Integer;
     Arpcontrol: Integer;
     Patternname : String;
     InstName: String;
     Patterntempo: Integer;
     Swing: Integer;
     RPB: Integer;
     RPBC: Integer;
     Rolltype: Integer;
     Patternlength: Integer;
     Beattype: String;
     FXC: Integer;
     FXChain: String;
     Laststep: Integer;
     ArpScale: Integer;
     ArpScaleString : String;
     ArpCenterNote : Integer;
     ArpCenterNoteString : String;
     MutestatusP1 : Integer;
     MutestatusP2 : Integer;
     SwingStatusP1 : Integer;
     SwingStatusP2 : Integer;
     OutputStatusP1 : Integer;
     OutputStatusP2 : Integer;
     AccentSwStatusP1 : Integer;
     AccentSwStatusP2 : Integer;
     Samplebanknumber : Integer;
     Pitch : Integer;
     Level : Integer;
     Pan : Integer;
     EQTime : Integer;
     FSSSRA : Integer;
     FXSelected : String;
     FXSend : String;
     Roll : String;
     AMPEG : String;
     MTDBS : Integer;
     MDestination : String;
     MType : String;
     MBPMSync : String;
     ModulationSpeed : Integer;
     ModulationDepth : Integer;
     MotionSeqS : Integer;
     MotionSeqStr : String;
     DrumPattern : array [0..16] of byte;
     DrumP : Integer;
     Drumbinary : String;
     Waveform : Integer;
     Waveformstring : String;
     Syntune : Integer;
     Synthoscillator : Integer;
     SynthoscillatorString : String;
     OscEdit1 : Integer;
     OscEdit2 : Integer;
     PitchGlide : Integer;
     Filtertype : Integer;
     FiltertypeString : String;
     Cutoff : Integer;
     Resonance : Integer;
     EGInt : Integer;
     Drive : Integer;
     Reserved : Integer;
     Note : Integer;
     PatternpartSynth : Integer;
     PatternpartSynthString : Integer;
     Gatetime : Integer;
     EGTime : Integer;


  end;

var
  MainForm: TMainForm;

implementation

{$R *.lfm}

{ TMainForm }

function Samplename (num : integer) : String;
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
function Notestring (num : integer) : String;
begin
	Case num of
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
		127 : NoteString :='G8';
		128 : NoteString :='C-2';  //Oops :)
		188 : NoteString :=''; //Nothing
		otherwise NoteString :='Err';
	end;
end;
procedure TMainForm.LoadFileBClick(Sender: TObject);
Var
   BytesRead : Integer;
   Buffer : array [0..8] of byte;
   FileStream : TFileStream;
   Patternbase: Integer;
   Banki: Integer;
   Patterni: Integer;
   Samplesi : Integer;
   Synthi: Integer;
   Tempo: Integer;
   TempoK: Integer;
   TempoR: Real;
   NodeCounter : Integer;
   i: Integer;
   ii: Integer;
   iii: Integer;
   uselessToday : Integer;
   s: String;
   FileNode: TTreeNode;
   GSNode: TTreeNode;
   BankNode: TTreeNode;
   NameNode: TTreeNode;
   PSNode: TTreeNode;
   StatusNode: TTreeNode;
   InstNode: TTreeNode;
   ParameterNode: TTreeNode;
   Getbit: Boolean;

   Procedure DeleteNode(Node:TTreeNode);
   begin
    while Node.HasChildren do DeleteNode(node.GetLastChild);
    TreeView1.Items.Delete(Node) ;
    end;


begin
   Patternbase := 512;

   if OpenDialog1.Execute then
        begin
             filename := OpenDialog1.Filename;
             //ShowMessage(filename);
             //if TreeView1.Items.Count > 0 then DeleteNode(FileNode);

             FileNode := Treeview1.Items.Add (nil,filename);
             FileStream := tFileStream.Create (filename,fmShareDenyNone);
             GSNode := Treeview1.Items.AddChild(FileNode ,'Global Settings');
             //Global Settings
             FileStream.Position := 32; //Protect
             BytesRead:=Filestream.Read(Protect,1);
             If (Protect= 0) then
                          Instname := 'No'
             Else
                      Instname := 'Yes';


             If (Protect= 0) then
                       LED_Protect.Color := clLime
             Else
                      LED_Protect.Color := clRed;


             NameNode := Treeview1.Items.AddChild(GSNode, 'Protect');
             Treeview1.Items.AddChild(NameNode, Instname);

             BytesRead:=Filestream.Read(Mastertune,1);
             NameNode := Treeview1.Items.AddChild(GSNode, 'Mastertune');
             Mastertune := Mastertune - 50;
             Treeview1.Items.AddChild(NameNode, inttostr(Mastertune));

             BytesRead:=Filestream.Read(Arpcontrol,1);
             If (Arpcontrol= 0) then
                Instname := 'No'
             Else
                 Instname := 'Yes';

             If (Arpcontrol= 0) then
                LED_Arp.Color:=clLime
             Else
                 LED_Arp.Color:=ClRed;

             NameNode := Treeview1.Items.AddChild(GSNode, 'Arpcontrol Reverse');
             Treeview1.Items.AddChild(NameNode, Instname);

             //If Protect>1 Or Mastertune > 127 or Arpcontrol > 1 then SomethingWentWrong;

             //Pattern Read
             For Banki := 65 to 68 Do Begin
                 i := treeview1.Items.Count;
                 s := 'Bank ' + chr(Banki);
                 BankNode := Treeview1.Items.AddChild(FileNode ,s);
                 For Patterni := 1 to 64 Do Begin
                     FileStream.Position := Patternbase;
                     BytesRead:=Filestream.Read(Buffer[0],8);
                     setlength(Patternname, 8);
                     move(Buffer[0], Patternname[1],8);
                     NameNode := Treeview1.Items.AddChild(BankNode, Patternname);
                     //Patternsettings
                     //Tempo
                     BytesRead:=Filestream.Read(Tempo,1);
                     BytesRead:=Filestream.Read(TempoK,1);
                     TempoR:= Tempo*2+TempoK/128; //No idea if i calculate it right. :)
                     PSNode := Treeview1.Items.AddChild(NameNode, 'Tempo');
                     Treeview1.Items.AddChild(PSNode, FloatToStr(TempoR));
                     //Swing Standardwert 56
                     BytesRead:=Filestream.Read(Swing,1);
                     Swing:=Swing+50;
                     PSNode := Treeview1.Items.AddChild(NameNode, 'Swing');
                     Treeview1.Items.AddChild(PSNode, inttostr(Swing));
                     //Rolltype, Patternlength, Beat
                     BytesRead:=Filestream.Read(RPB,1);
                     Rolltype := 2;
                     Beattype := 'Beat 16';
                     If (RPB > 127) Then
                        begin
                             Rolltype := 4;
                             RPB:=RPB-128;
                        End;
                     If (RPB > 63) Then
                        begin
                             Rolltype := 3;
                             RPB:=RPB-64;
                        End;
                     If (RPB > 47) Then
                        begin
                             Beattype := '16Tri';
                             RPB:=RPB-48;
                        End;
                     If (RPB > 31) Then
                        begin
                             Beattype := '8Tri';
                             RPB:=RPB-32;
                        End;
                      If (RPB > 15) Then
                        begin
                             Beattype := 'Beat 32';
                             RPB:=RPB-16;
                        End;
                      Case RPB of
                           0 : Patternlength := 1;
                           1 : Patternlength := 2;
                           2 : Patternlength := 3;
                           3 : Patternlength := 4;
                           4 : Patternlength := 5;
                           5 : Patternlength := 6;
                           6 : Patternlength := 7;
                           7 : Patternlength := 8;
                      end;

                      PSNode := Treeview1.Items.AddChild(NameNode, 'Rolltype');
                      Treeview1.Items.AddChild(PSNode, inttostr(Rolltype));
                      PSNode := Treeview1.Items.AddChild(NameNode, 'Beattype');
                      Treeview1.Items.AddChild(PSNode, Beattype);
                      PSNode := Treeview1.Items.AddChild(NameNode, 'Patternlength');
                      Treeview1.Items.AddChild(PSNode, inttostr(Patternlength));
                      //Effect Chain
                      BytesRead:=Filestream.Read(FXC,1);
                      FXChain :='No Chain';
                      If (FXC=1) Then
                        begin
                             FXChain :='Fx1 + Fx2';
                        End;
                      If (RPB=2) Then
                        begin
                             FXChain :='Fx2 + Fx3';
                        End;
                      If (RPB=3) Then
                        begin
                             FXChain :='Fx1 + Fx2 + Fx3';
                        End;
                      PSNode := Treeview1.Items.AddChild(NameNode, 'FX Chain');
                      Treeview1.Items.AddChild(PSNode, FXChain);
                      //Laststep (Patternlength per Beat)
                      BytesRead:=Filestream.Read(Laststep,1);
                      Laststep := Laststep + 1;
                      PSNode := Treeview1.Items.AddChild(NameNode, 'Last Step');
                      Treeview1.Items.AddChild(PSNode, inttostr(Laststep));
                      // ArpScale (00 Chroma,01 Ionian, 02 Dorian, ..., 0F Raga 2, ..., 1E Octave)
                      BytesRead:=Filestream.Read(ArpScale,1);
                      Case ArpScale of
                           0 : ArpScaleString:='Chroma C, Db, D, Eb, E, F, Gb, G, Ab, A, Bb, B, C';
                           1 : ArpScaleString:='Ionian C, D, E, F, G, A, B, C';
                           2 : ArpScaleString:='Dorian C, D, Eb, F, G, A, Bb, C';
                           3 : ArpScaleString:='Phrygi C, Db, Eb, F, G, Ab, Bb, C';
                           4 : ArpScaleString:='Lydian C, D, E, F#, G, A, B, C';
                           5 : ArpScaleString:='MixLyd C, D, E, F, G, A, Bb, C';
                           6 : ArpScaleString:='Aeolia C, D, Eb, F, G, Ab, Bb, C';
                           7 : ArpScaleString:='Locria C, Db, Eb, F, Gb, Ab, Bb, C';
                           8 : ArpScaleString:='MBlues C, Eb, E, G, A, Bb, C';
                           9 : ArpScaleString:='mBlues C, Eb, F, Gb, G, Bb, C';
                           10 : ArpScaleString:='Dim C, D, Eb, F, F#, G#, A, B, C';
                           11 : ArpScaleString:='ComDim C, Db, Eb, E, F#, G, A, Bb, C';
                           12 : ArpScaleString:='MPenta C, D, E, G, A, C';
                           13 : ArpScaleString:='mPenta C, Eb, F, G, Bb, C';
                           14 : ArpScaleString:='Raga1 C, Db, E, F, G, Ab, B, C';
                           15 : ArpScaleString:='Raga2 C, Db, E, F#, G, A, B, C';
                           16 : ArpScaleString:='Raga3 C, Db, Eb, F#, G, Ab, B, C';
                           17 : ArpScaleString:='Spansh C, Db, Eb, E, F, G, Ab, Bb, C';
                           18 : ArpScaleString:='Gypsy C, D, Eb, F#, G, Ab, B, C';
                           19 : ArpScaleString:='Arabia C, D, E, F, Gb, Ab, Bb, C';
                           20 : ArpScaleString:='Egypt C, D, F, G, Bb, C';
                           21 : ArpScaleString:='Hawaii C, D, Eb, G, A, C';
                           22 : ArpScaleString:='Pelog C, Db, Eb, G, Ab, C';
                           23 : ArpScaleString:='Japan C, Db, F, G, Ab, C';
                           24 : ArpScaleString:='Ryukyu C, E, F, G, B, C';
                           25 : ArpScaleString:='Whole C, D, E, Gb, Ab, Bb, C';
                           26 : ArpScaleString:='m3rd C, Eb, Gb, A, C';
                           27 : ArpScaleString:='M3rd C, E, Ab, C';
                           28 : ArpScaleString:='4th C, F, Bb, C';
                           29 : ArpScaleString:='5th C, G, C';
                           30 : ArpScaleString:='Octave C, C';
                           otherwise ArpScaleString:='Reserved';
                      end;
                      PSNode := Treeview1.Items.AddChild(NameNode, 'Arp Scale');
                      Treeview1.Items.AddChild(PSNode, ArpScaleString);
                      // Arp Center Note
                      // Heute keinen Bock mehr, schon wieder Case :)
                      BytesRead:=Filestream.Read(ArpCenterNote,1);
                      PSNode := Treeview1.Items.AddChild(NameNode, 'Arpeggiator CenterNote');
                      // ArpCenterNote noch in String konvertieren
                      Treeview1.Items.AddChild(PSNode, Notestring(ArpCenterNote));
                      // Mute Status
                      BytesRead:=Filestream.Read(MuteStatusP1,1);
                      BytesRead:=Filestream.Read(MuteStatusP2,1);
		      PSNode := Treeview1.Items.AddChild(NameNode, 'Mute Status');
                      //function GetBit(Value: QWord; Index: Byte): Boolean;
                      GetBit := ((MuteStatusP2 shr 0) and 1) = 1;
                      If (GetBit) then
                         s:='On'
                      Else
                         s:='Off';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'Mute Channel 1');
                      Treeview1.Items.AddChild(StatusNode,s);

                      GetBit := ((MuteStatusP2 shr 1) and 1) = 1;
                      If (GetBit) then
                         s:='On'
                      Else
                         s:='Off';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'Mute Channel 2');
                      Treeview1.Items.AddChild(StatusNode,s);

                      GetBit := ((MuteStatusP2 shr 2) and 1) = 1;
                      If (GetBit) then
                         s:='On'
                      Else
                         s:='Off';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'Mute Channel 3');
                      Treeview1.Items.AddChild(StatusNode,s);

                      GetBit := ((MuteStatusP2 shr 3) and 1) = 1;
                      If (GetBit) then
                         s:='On'
                      Else
                         s:='Off';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'Mute Channel 4');
                      Treeview1.Items.AddChild(StatusNode,s);

                      GetBit := ((MuteStatusP2 shr 4) and 1) = 1;
                      If (GetBit) then
                         s:='On'
                      Else
                         s:='Off';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'Mute Channel 5');
                      Treeview1.Items.AddChild(StatusNode,s);

                      GetBit := ((MuteStatusP2 shr 5) and 1) = 1;
                      If (GetBit) then
                         s:='On'
                      Else
                         s:='Off';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'Mute Channel 6A');
                      Treeview1.Items.AddChild(StatusNode,s);

                      GetBit := ((MuteStatusP2 shr 6) and 1) = 1;
                      If (GetBit) then
                         s:='On'
                      Else
                         s:='Off';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'Mute Channel 6B');
                      Treeview1.Items.AddChild(StatusNode,s);

                      GetBit := ((MuteStatusP2 shr 7) and 1) = 1;
                      If (GetBit) then
                         s:='On'
                      Else
                         s:='Off';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'Mute Channel 7A');
                      Treeview1.Items.AddChild(StatusNode,s);

                      GetBit := ((MuteStatusP1 shr 0) and 1) = 1;
                      If (GetBit) then
                         s:='On'
                      Else
                         s:='Off';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'Mute Channel 7B');
                      Treeview1.Items.AddChild(StatusNode,s);

                      GetBit := ((MuteStatusP1 shr 1) and 1) = 1;
                      If (GetBit) then
                         s:='On'
                      Else
                         s:='Off';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'Mute Channel S1');
                      Treeview1.Items.AddChild(StatusNode,s);

                      GetBit := ((MuteStatusP1 shr 2) and 1) = 1;
                      If (GetBit) then
                         s:='On'
                      Else
                         s:='Off';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'Mute Channel S2');
                      Treeview1.Items.AddChild(StatusNode,s);

                      GetBit := ((MuteStatusP1 shr 3) and 1) = 1;
                      If (GetBit) then
                         s:='On'
                      Else
                         s:='Off';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'Mute Channel S3');
                      Treeview1.Items.AddChild(StatusNode,s);
                      GetBit := ((MuteStatusP1 shr 4) and 1) = 1;
                      If (GetBit) then
                         s:='On'
                      Else
                         s:='Off';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'Mute Channel S4');
                      Treeview1.Items.AddChild(StatusNode,s);
                      GetBit := ((MuteStatusP1 shr 5) and 1) = 1;
                      If (GetBit) then
                         s:='On'
                      Else
                         s:='Off';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'Mute Channel S5');
                      Treeview1.Items.AddChild(StatusNode,s);
                      // Swing Status
                      BytesRead:=Filestream.Read(SwingStatusP1,1);
                      BytesRead:=Filestream.Read(SwingStatusP2,1);
		      PSNode := Treeview1.Items.AddChild(NameNode, 'Swing Status');
                      //function GetBit(Value: QWord; Index: Byte): Boolean;
                      GetBit := ((SwingStatusP2 shr 0) and 1) = 1;
                      If (GetBit) then
                         s:='On'
                      Else
                         s:='Off';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'Swing Channel 1');
                      Treeview1.Items.AddChild(StatusNode,s);

                      GetBit := ((SwingStatusP2 shr 1) and 1) = 1;
                      If (GetBit) then
                         s:='On'
                      Else
                         s:='Off';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'Swing Channel 2');
                      Treeview1.Items.AddChild(StatusNode,s);

                      GetBit := ((SwingStatusP2 shr 2) and 1) = 1;
                      If (GetBit) then
                         s:='On'
                      Else
                         s:='Off';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'Swing Channel 3');
                      Treeview1.Items.AddChild(StatusNode,s);

                      GetBit := ((SwingStatusP2 shr 3) and 1) = 1;
                      If (GetBit) then
                         s:='On'
                      Else
                         s:='Off';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'Swing Channel 4');
                      Treeview1.Items.AddChild(StatusNode,s);

                      GetBit := ((SwingStatusP2 shr 4) and 1) = 1;
                      If (GetBit) then
                         s:='On'
                      Else
                         s:='Off';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'Swing Channel 5');
                      Treeview1.Items.AddChild(StatusNode,s);

                      GetBit := ((SwingStatusP2 shr 5) and 1) = 1;
                      If (GetBit) then
                         s:='On'
                      Else
                         s:='Off';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'Swing Channel 6A');
                      Treeview1.Items.AddChild(StatusNode,s);

                      GetBit := ((SwingStatusP2 shr 6) and 1) = 1;
                      If (GetBit) then
                         s:='On'
                      Else
                         s:='Off';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'Swing Channel 6B');
                      Treeview1.Items.AddChild(StatusNode,s);

                      GetBit := ((SwingStatusP2 shr 7) and 1) = 1;
                      If (GetBit) then
                         s:='On'
                      Else
                         s:='Off';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'Swing Channel 7A');
                      Treeview1.Items.AddChild(StatusNode,s);

                      GetBit := ((SwingStatusP1 shr 0) and 1) = 1;
                      If (GetBit) then
                         s:='On'
                      Else
                         s:='Off';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'Swing Channel 7B');
                      Treeview1.Items.AddChild(StatusNode,s);

                      GetBit := ((SwingStatusP1 shr 1) and 1) = 1;
                      If (GetBit) then
                         s:='On'
                      Else
                         s:='Off';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'Swing Channel S1');
                      Treeview1.Items.AddChild(StatusNode,s);

                      GetBit := ((SwingStatusP1 shr 2) and 1) = 1;
                      If (GetBit) then
                         s:='On'
                      Else
                         s:='Off';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'Swing Channel S2');
                      Treeview1.Items.AddChild(StatusNode,s);

                      GetBit := ((SwingStatusP1 shr 3) and 1) = 1;
                      If (GetBit) then
                         s:='On'
                      Else
                         s:='Off';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'Swing Channel S3');
                      Treeview1.Items.AddChild(StatusNode,s);
                      GetBit := ((SwingStatusP1 shr 4) and 1) = 1;
                      If (GetBit) then
                         s:='On'
                      Else
                         s:='Off';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'Swing Channel S4');
                      Treeview1.Items.AddChild(StatusNode,s);
                      GetBit := ((SwingStatusP1 shr 5) and 1) = 1;
                      If (GetBit) then
                         s:='On'
                      Else
                         s:='Off';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'Swing Channel S5');
                      Treeview1.Items.AddChild(StatusNode,s);
                      // Output L/R or 3/4 (1 Word) 0=Output 3/4 1=Output L/R
                      BytesRead:=Filestream.Read(OutputStatusP1,1);
                      BytesRead:=Filestream.Read(OutputStatusP2,1);
		      PSNode := Treeview1.Items.AddChild(NameNode, 'Output Channel');
                      //functiOutput L/R GetBit(Value: QWord; Index: Byte): Boolean;
                      GetBit := ((OutputStatusP2 shr 0) and 1) = 1;
                      If (GetBit) then
                         s:='Output L/R'
                      Else
                         s:='Output 3/4';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'Output Channel 1');
                      Treeview1.Items.AddChild(StatusNode,s);

                      GetBit := ((OutputStatusP2 shr 1) and 1) = 1;
                      If (GetBit) then
                         s:='Output L/R'
                      Else
                         s:='Output 3/4';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'Output Channel 2');
                      Treeview1.Items.AddChild(StatusNode,s);

                      GetBit := ((OutputStatusP2 shr 2) and 1) = 1;
                      If (GetBit) then
                         s:='Output L/R'
                      Else
                         s:='Output 3/4';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'Output Channel 3');
                      Treeview1.Items.AddChild(StatusNode,s);

                      GetBit := ((OutputStatusP2 shr 3) and 1) = 1;
                      If (GetBit) then
                         s:='Output L/R'
                      Else
                         s:='Output 3/4';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'Output Channel 4');
                      Treeview1.Items.AddChild(StatusNode,s);

                      GetBit := ((OutputStatusP2 shr 4) and 1) = 1;
                      If (GetBit) then
                         s:='Output L/R'
                      Else
                         s:='Output 3/4';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'Output Channel 5');
                      Treeview1.Items.AddChild(StatusNode,s);

                      GetBit := ((OutputStatusP2 shr 5) and 1) = 1;
                      If (GetBit) then
                         s:='Output L/R'
                      Else
                         s:='Output 3/4';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'Output Channel 6A');
                      Treeview1.Items.AddChild(StatusNode,s);

                      GetBit := ((OutputStatusP2 shr 6) and 1) = 1;
                      If (GetBit) then
                         s:='Output L/R'
                      Else
                         s:='Output 3/4';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'Output Channel 6B');
                      Treeview1.Items.AddChild(StatusNode,s);

                      GetBit := ((OutputStatusP2 shr 7) and 1) = 1;
                      If (GetBit) then
                         s:='Output L/R'
                      Else
                         s:='Output 3/4';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'Output Channel 7A');
                      Treeview1.Items.AddChild(StatusNode,s);

                      GetBit := ((OutputStatusP1 shr 0) and 1) = 1;
                      If (GetBit) then
                         s:='Output L/R'
                      Else
                         s:='Output 3/4';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'Output Channel 7B');
                      Treeview1.Items.AddChild(StatusNode,s);

                      GetBit := ((OutputStatusP1 shr 1) and 1) = 1;
                      If (GetBit) then
                         s:='Output L/R'
                      Else
                         s:='Output 3/4';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'Output Channel S1');
                      Treeview1.Items.AddChild(StatusNode,s);

                      GetBit := ((OutputStatusP1 shr 2) and 1) = 1;
                      If (GetBit) then
                         s:='Output L/R'
                      Else
                         s:='Output 3/4';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'Output Channel S2');
                      Treeview1.Items.AddChild(StatusNode,s);

                      GetBit := ((OutputStatusP1 shr 3) and 1) = 1;
                      If (GetBit) then
                         s:='Output L/R'
                      Else
                         s:='Output 3/4';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'Output Channel S3');
                      Treeview1.Items.AddChild(StatusNode,s);
                      GetBit := ((OutputStatusP1 shr 4) and 1) = 1;
                      If (GetBit) then
                         s:='Output L/R'
                      Else
                         s:='Output 3/4';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'Output Channel S4');
                      Treeview1.Items.AddChild(StatusNode,s);
                      GetBit := ((OutputStatusP1 shr 5) and 1) = 1;
                      If (GetBit) then
                         s:='Output L/R'
                      Else
                         s:='Output 3/4';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'Output Channel S5');
                      Treeview1.Items.AddChild(StatusNode,s);
                      // AccentSw Status (1 Word) 0=AccentSw off 1=AccentSw On
                      BytesRead:=Filestream.Read(AccentSwStatusP1,1);
                      BytesRead:=Filestream.Read(AccentSwStatusP2,1);
		      PSNode := Treeview1.Items.AddChild(NameNode, 'AccentSw Status');
                      //function GetBit(Value: QWord; Index: Byte): Boolean;
                      GetBit := ((AccentSwStatusP2 shr 0) and 1) = 1;
                      If (GetBit) then
                         s:='On'
                      Else
                         s:='Off';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'AccentSw Channel 1');
                      Treeview1.Items.AddChild(StatusNode,s);

                      GetBit := ((AccentSwStatusP2 shr 1) and 1) = 1;
                      If (GetBit) then
                         s:='On'
                      Else
                         s:='Off';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'AccentSw Channel 2');
                      Treeview1.Items.AddChild(StatusNode,s);

                      GetBit := ((AccentSwStatusP2 shr 2) and 1) = 1;
                      If (GetBit) then
                         s:='On'
                      Else
                         s:='Off';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'AccentSw Channel 3');
                      Treeview1.Items.AddChild(StatusNode,s);

                      GetBit := ((AccentSwStatusP2 shr 3) and 1) = 1;
                      If (GetBit) then
                         s:='On'
                      Else
                         s:='Off';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'AccentSw Channel 4');
                      Treeview1.Items.AddChild(StatusNode,s);

                      GetBit := ((AccentSwStatusP2 shr 4) and 1) = 1;
                      If (GetBit) then
                         s:='On'
                      Else
                         s:='Off';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'AccentSw Channel 5');
                      Treeview1.Items.AddChild(StatusNode,s);

                      GetBit := ((AccentSwStatusP2 shr 5) and 1) = 1;
                      If (GetBit) then
                         s:='On'
                      Else
                         s:='Off';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'AccentSw Channel 6A');
                      Treeview1.Items.AddChild(StatusNode,s);

                      GetBit := ((AccentSwStatusP2 shr 6) and 1) = 1;
                      If (GetBit) then
                         s:='On'
                      Else
                         s:='Off';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'AccentSw Channel 6B');
                      Treeview1.Items.AddChild(StatusNode,s);

                      GetBit := ((AccentSwStatusP2 shr 7) and 1) = 1;
                      If (GetBit) then
                         s:='On'
                      Else
                         s:='Off';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'AccentSw Channel 7A');
                      Treeview1.Items.AddChild(StatusNode,s);

                      GetBit := ((AccentSwStatusP1 shr 0) and 1) = 1;
                      If (GetBit) then
                         s:='On'
                      Else
                         s:='Off';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'AccentSw Channel 7B');
                      Treeview1.Items.AddChild(StatusNode,s);

                      GetBit := ((AccentSwStatusP1 shr 1) and 1) = 1;
                      If (GetBit) then
                         s:='On'
                      Else
                         s:='Off';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'AccentSw Channel S1');
                      Treeview1.Items.AddChild(StatusNode,s);

                      GetBit := ((AccentSwStatusP1 shr 2) and 1) = 1;
                      If (GetBit) then
                         s:='On'
                      Else
                         s:='Off';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'AccentSw Channel S2');
                      Treeview1.Items.AddChild(StatusNode,s);

                      GetBit := ((AccentSwStatusP1 shr 3) and 1) = 1;
                      If (GetBit) then
                         s:='On'
                      Else
                         s:='Off';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'AccentSw Channel S3');
                      Treeview1.Items.AddChild(StatusNode,s);
                      GetBit := ((AccentSwStatusP1 shr 4) and 1) = 1;
                      If (GetBit) then
                         s:='On'
                      Else
                         s:='Off';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'AccentSw Channel S4');
                      Treeview1.Items.AddChild(StatusNode,s);
                      GetBit := ((AccentSwStatusP1 shr 5) and 1) = 1;
                      If (GetBit) then
                         s:='On'
                      Else
                         s:='Off';
                      StatusNode := Treeview1.Items.AddChild(PSNode, 'AccentSw Channel S5');
                      Treeview1.Items.AddChild(StatusNode,s);

                      //Endlich Sample 1
                      InstNode := Treeview1.Items.AddChild(NameNode, 'Sample 1');
                      //Samplebanknumber
                      BytesRead:=Filestream.Read(Samplebanknumber,1);
                      Samplebanknumber:=Samplebanknumber+1;
                      s:=Samplename(Samplebanknumber);
                      Treeview1.Items.AddChild(InstNode, 'Sample: ' + s);
                      Treeview1.Items.AddChild(InstNode, 'Samplebanknumber ' + inttostr(Samplebanknumber));
                      BytesRead:=Filestream.Read(Pitch,1);
                      Treeview1.Items.AddChild(InstNode, 'Pitch ' + inttostr(Pitch));
                      BytesRead:=Filestream.Read(Level,1);
                      Treeview1.Items.AddChild(InstNode, 'Level ' + inttostr(Level));
                      BytesRead:=Filestream.Read(Pan,1);
                      Treeview1.Items.AddChild(InstNode, 'Pan ' + inttostr(Pan));
                      BytesRead:=Filestream.Read(EQTime,1);
                      Treeview1.Items.AddChild(InstNode, 'EQ Time ' + inttostr(EQTime));

                      BytesRead:=Filestream.Read(FSSSRA,1);
                      AMPEG :='Square';
                      Roll :='Off';
                      FXSend :='Off';
                      FXSelected := 'FX1';
                      If (FSSSRA > 15) Then
                         begin
                              AMPEG :='Envelope';
                              FSSSRA:=FSSSRA-16;
                         End;
                      If (FSSSRA > 7) Then
                         begin
                              Roll :='On';
                              FSSSRA:=FSSSRA-8;
                         End;
                      If (FSSSRA > 3) Then
                         begin
                              FXSend :='On';
                              FSSSRA:=FSSSRA-4;
                         End;
                       If (FSSSRA = 2) Then
                         begin
                              FXSelected := 'FX3';
                         End;
                       If (FSSSRA = 1) Then
                          begin
                              FXSelected := 'FX2';
                          End;
                      Treeview1.Items.AddChild(InstNode, 'AMP EG: ' + AMPEG);
                      Treeview1.Items.AddChild(InstNode, 'Roll ' + Roll);
                      Treeview1.Items.AddChild(InstNode, 'FX Send ' + FXSend);
                      Treeview1.Items.AddChild(InstNode, 'FX Send to ' + FXSelected);

                      BytesRead:=Filestream.Read(MTDBS,1);
                      MType :='Saw';
                      MBPMSync :='Off';
                      If (MTDBS > 127) Then
                         begin
                              MBPMSync :='On';
                              MTDBS:=MTDBS-128;
                         End;
                      If (MTDBS > 63) Then
                         begin
                              MType :='Env';
                              MTDBS:=MTDBS-64;
                         End;
                      If (MTDBS > 47) Then
                         begin
                              MType :='Random';
                              MTDBS:=MTDBS-48;
                         End;
                      If (MTDBS > 31) Then
                         begin
                              MType :='Triangle';
                              MTDBS:=MTDBS-32;
                         End;
                      If (MTDBS > 15) Then
                         begin
                              MType :='Square';
                              MTDBS:=MTDBS-16;
                         End;
                      Case MTDBS of
                           0 : MDestination :='Pitch ';
                           1 : MDestination :='Osc Edit 1';
                           2 : MDestination :='Osc Edit 2';
                           3 : MDestination :='Cut Off';
                           4 : MDestination :='Amp';
                           5 : MDestination :='Pan ';
                           otherwise MDestination:='Error';
                      end;
                      Treeview1.Items.AddChild(InstNode, 'Modulation Type: ' + MType);
                      Treeview1.Items.AddChild(InstNode, 'Destination ' + MDestination);
                      Treeview1.Items.AddChild(InstNode, 'BPM Sync ' + MBPMSync);

                      BytesRead:=Filestream.Read(ModulationSpeed,1);
                      Treeview1.Items.AddChild(InstNode, 'Modulation Speed ' + inttostr(ModulationSpeed));
                      BytesRead:=Filestream.Read(ModulationDepth,1);
                      Treeview1.Items.AddChild(InstNode, 'Modulation Depth ' + inttostr(ModulationDepth));

                      BytesRead:=Filestream.Read(MotionSeqS,1);
                      Case MotionSeqS of
                           0 : MotionSeqStr :='Nothing';
                           1 : MotionSeqStr :='Smooth';
                           2 : MotionSeqStr :='Trig Hold';
                           otherwise MotionSeqStr:='Error';
                      end;

                      Treeview1.Items.AddChild(InstNode, 'MotionSeq.: ' + MotionSeqStr);
                      //The Pattern
                      ParameterNode := Treeview1.Items.AddChild(InstNode, 'Sample Pattern');


                      For i := 1 to 8 Do Begin
                          s:='';
                          For ii := 1 to 2 Do Begin
                              BytesRead:=Filestream.Read(DrumP,1);
                              For iii := 0 to 7 Do Begin
                                  GetBit := ((DrumP shr iii) and 1) = 1;
                                  If (GetBit) then
                                     s:=s + '1 '
                                  Else
                                     s:=s + '0 ';
                                  End;
                              end;
                              Treeview1.Items.AddChild(ParameterNode,s);
                          end;
                       //Endlich Sample 2
                      InstNode := Treeview1.Items.AddChild(NameNode, 'Sample 2');
                      //Samplebanknumber
                      BytesRead:=Filestream.Read(Samplebanknumber,1);
                      Samplebanknumber:=Samplebanknumber+1;
                      s:=Samplename(Samplebanknumber);
                      Treeview1.Items.AddChild(InstNode, 'Sample: ' + s);
                      Treeview1.Items.AddChild(InstNode, 'Samplebanknumber ' + inttostr(Samplebanknumber));
                      BytesRead:=Filestream.Read(Pitch,1);
                      Treeview1.Items.AddChild(InstNode, 'Pitch ' + inttostr(Pitch));
                      BytesRead:=Filestream.Read(Level,1);
                      Treeview1.Items.AddChild(InstNode, 'Level ' + inttostr(Level));
                      BytesRead:=Filestream.Read(Pan,1);
                      Treeview1.Items.AddChild(InstNode, 'Pan ' + inttostr(Pan));
                      BytesRead:=Filestream.Read(EQTime,1);
                      Treeview1.Items.AddChild(InstNode, 'EQ Time ' + inttostr(EQTime));

                      BytesRead:=Filestream.Read(FSSSRA,1);
                      AMPEG :='Square';
                      Roll :='Off';
                      FXSend :='Off';
                      FXSelected := 'FX1';
                      If (FSSSRA > 15) Then
                         begin
                              AMPEG :='Envelope';
                              FSSSRA:=FSSSRA-16;
                         End;
                      If (FSSSRA > 7) Then
                         begin
                              Roll :='On';
                              FSSSRA:=FSSSRA-8;
                         End;
                      If (FSSSRA > 3) Then
                         begin
                              FXSend :='On';
                              FSSSRA:=FSSSRA-4;
                         End;
                       If (FSSSRA = 2) Then
                         begin
                              FXSelected := 'FX3';
                         End;
                       If (FSSSRA = 1) Then
                          begin
                              FXSelected := 'FX2';
                          End;
                      Treeview1.Items.AddChild(InstNode, 'AMP EG: ' + AMPEG);
                      Treeview1.Items.AddChild(InstNode, 'Roll ' + Roll);
                      Treeview1.Items.AddChild(InstNode, 'FX Send ' + FXSend);
                      Treeview1.Items.AddChild(InstNode, 'FX Send to ' + FXSelected);

                      BytesRead:=Filestream.Read(MTDBS,1);
                      MType :='Saw';
                      MBPMSync :='Off';
                      If (MTDBS > 127) Then
                         begin
                              MBPMSync :='On';
                              MTDBS:=MTDBS-128;
                         End;
                      If (MTDBS > 63) Then
                         begin
                              MType :='Env';
                              MTDBS:=MTDBS-64;
                         End;
                      If (MTDBS > 47) Then
                         begin
                              MType :='Random';
                              MTDBS:=MTDBS-48;
                         End;
                      If (MTDBS > 31) Then
                         begin
                              MType :='Triangle';
                              MTDBS:=MTDBS-32;
                         End;
                      If (MTDBS > 15) Then
                         begin
                              MType :='Square';
                              MTDBS:=MTDBS-16;
                         End;
                      Case MTDBS of
                           0 : MDestination :='Pitch ';
                           1 : MDestination :='Osc Edit 1';
                           2 : MDestination :='Osc Edit 2';
                           3 : MDestination :='Cut Off';
                           4 : MDestination :='Amp';
                           5 : MDestination :='Pan ';
                           otherwise MDestination:='Error';
                      end;
                      Treeview1.Items.AddChild(InstNode, 'Modulation Type: ' + MType);
                      Treeview1.Items.AddChild(InstNode, 'Destination ' + MDestination);
                      Treeview1.Items.AddChild(InstNode, 'BPM Sync ' + MBPMSync);

                      BytesRead:=Filestream.Read(ModulationSpeed,1);
                      Treeview1.Items.AddChild(InstNode, 'Modulation Speed ' + inttostr(ModulationSpeed));
                      BytesRead:=Filestream.Read(ModulationDepth,1);
                      Treeview1.Items.AddChild(InstNode, 'Modulation Depth ' + inttostr(ModulationDepth));

                      BytesRead:=Filestream.Read(MotionSeqS,1);
                      Case MotionSeqS of
                           0 : MotionSeqStr :='Nothing';
                           1 : MotionSeqStr :='Smooth';
                           2 : MotionSeqStr :='Trig Hold';
                           otherwise MotionSeqStr:='Error';
                      end;

                      Treeview1.Items.AddChild(InstNode, 'MotionSeq.: ' + MotionSeqStr);
                      //The Pattern
                      ParameterNode := Treeview1.Items.AddChild(InstNode, 'Sample Pattern');


                      For i := 1 to 8 Do Begin
                          s:='';
                          For ii := 1 to 2 Do Begin
                              BytesRead:=Filestream.Read(DrumP,1);
                              For iii := 0 to 7 Do Begin
                                  GetBit := ((DrumP shr iii) and 1) = 1;
                                  If (GetBit) then
                                     s:=s + '1 '
                                  Else
                                     s:=s + '0 ';
                                  End;
                              end;
                              Treeview1.Items.AddChild(ParameterNode,s);
                          end;
                       //Endlich Sample 3
                      InstNode := Treeview1.Items.AddChild(NameNode, 'Sample 3');
                      //Samplebanknumber
                      BytesRead:=Filestream.Read(Samplebanknumber,1);
                      Samplebanknumber:=Samplebanknumber+1;
                      s:=Samplename(Samplebanknumber);
                      Treeview1.Items.AddChild(InstNode, 'Sample: ' + s);
                      Treeview1.Items.AddChild(InstNode, 'Samplebanknumber ' + inttostr(Samplebanknumber));
                      BytesRead:=Filestream.Read(Pitch,1);
                      Treeview1.Items.AddChild(InstNode, 'Pitch ' + inttostr(Pitch));
                      BytesRead:=Filestream.Read(Level,1);
                      Treeview1.Items.AddChild(InstNode, 'Level ' + inttostr(Level));
                      BytesRead:=Filestream.Read(Pan,1);
                      Treeview1.Items.AddChild(InstNode, 'Pan ' + inttostr(Pan));
                      BytesRead:=Filestream.Read(EQTime,1);
                      Treeview1.Items.AddChild(InstNode, 'EQ Time ' + inttostr(EQTime));

                      BytesRead:=Filestream.Read(FSSSRA,1);
                      AMPEG :='Square';
                      Roll :='Off';
                      FXSend :='Off';
                      FXSelected := 'FX1';
                      If (FSSSRA > 15) Then
                         begin
                              AMPEG :='Envelope';
                              FSSSRA:=FSSSRA-16;
                         End;
                      If (FSSSRA > 7) Then
                         begin
                              Roll :='On';
                              FSSSRA:=FSSSRA-8;
                         End;
                      If (FSSSRA > 3) Then
                         begin
                              FXSend :='On';
                              FSSSRA:=FSSSRA-4;
                         End;
                       If (FSSSRA = 2) Then
                         begin
                              FXSelected := 'FX3';
                         End;
                       If (FSSSRA = 1) Then
                          begin
                              FXSelected := 'FX2';
                          End;
                      Treeview1.Items.AddChild(InstNode, 'AMP EG: ' + AMPEG);
                      Treeview1.Items.AddChild(InstNode, 'Roll ' + Roll);
                      Treeview1.Items.AddChild(InstNode, 'FX Send ' + FXSend);
                      Treeview1.Items.AddChild(InstNode, 'FX Send to ' + FXSelected);

                      BytesRead:=Filestream.Read(MTDBS,1);
                      MType :='Saw';
                      MBPMSync :='Off';
                      If (MTDBS > 127) Then
                         begin
                              MBPMSync :='On';
                              MTDBS:=MTDBS-128;
                         End;
                      If (MTDBS > 63) Then
                         begin
                              MType :='Env';
                              MTDBS:=MTDBS-64;
                         End;
                      If (MTDBS > 47) Then
                         begin
                              MType :='Random';
                              MTDBS:=MTDBS-48;
                         End;
                      If (MTDBS > 31) Then
                         begin
                              MType :='Triangle';
                              MTDBS:=MTDBS-32;
                         End;
                      If (MTDBS > 15) Then
                         begin
                              MType :='Square';
                              MTDBS:=MTDBS-16;
                         End;
                      Case MTDBS of
                           0 : MDestination :='Pitch ';
                           1 : MDestination :='Osc Edit 1';
                           2 : MDestination :='Osc Edit 2';
                           3 : MDestination :='Cut Off';
                           4 : MDestination :='Amp';
                           5 : MDestination :='Pan ';
                           otherwise MDestination:='Error';
                      end;
                      Treeview1.Items.AddChild(InstNode, 'Modulation Type: ' + MType);
                      Treeview1.Items.AddChild(InstNode, 'Destination ' + MDestination);
                      Treeview1.Items.AddChild(InstNode, 'BPM Sync ' + MBPMSync);

                      BytesRead:=Filestream.Read(ModulationSpeed,1);
                      Treeview1.Items.AddChild(InstNode, 'Modulation Speed ' + inttostr(ModulationSpeed));
                      BytesRead:=Filestream.Read(ModulationDepth,1);
                      Treeview1.Items.AddChild(InstNode, 'Modulation Depth ' + inttostr(ModulationDepth));

                      BytesRead:=Filestream.Read(MotionSeqS,1);
                      Case MotionSeqS of
                           0 : MotionSeqStr :='Nothing';
                           1 : MotionSeqStr :='Smooth';
                           2 : MotionSeqStr :='Trig Hold';
                           otherwise MotionSeqStr:='Error';
                      end;

                      Treeview1.Items.AddChild(InstNode, 'MotionSeq.: ' + MotionSeqStr);
                      //The Pattern
                      ParameterNode := Treeview1.Items.AddChild(InstNode, 'Sample Pattern');


                      For i := 1 to 8 Do Begin
                          s:='';
                          For ii := 1 to 2 Do Begin
                              BytesRead:=Filestream.Read(DrumP,1);
                              For iii := 0 to 7 Do Begin
                                  GetBit := ((DrumP shr iii) and 1) = 1;
                                  If (GetBit) then
                                     s:=s + '1 '
                                  Else
                                     s:=s + '0 ';
                                  End;
                              end;
                              Treeview1.Items.AddChild(ParameterNode,s);
                          end;
                      //Endlich Sample 4
                      InstNode := Treeview1.Items.AddChild(NameNode, 'Sample 4');
                      //Samplebanknumber
                      BytesRead:=Filestream.Read(Samplebanknumber,1);
                      Samplebanknumber:=Samplebanknumber+1;
                      s:=Samplename(Samplebanknumber);
                      Treeview1.Items.AddChild(InstNode, 'Sample: ' + s);
                      Treeview1.Items.AddChild(InstNode, 'Samplebanknumber ' + inttostr(Samplebanknumber));
                      BytesRead:=Filestream.Read(Pitch,1);
                      Treeview1.Items.AddChild(InstNode, 'Pitch ' + inttostr(Pitch));
                      BytesRead:=Filestream.Read(Level,1);
                      Treeview1.Items.AddChild(InstNode, 'Level ' + inttostr(Level));
                      BytesRead:=Filestream.Read(Pan,1);
                      Treeview1.Items.AddChild(InstNode, 'Pan ' + inttostr(Pan));
                      BytesRead:=Filestream.Read(EQTime,1);
                      Treeview1.Items.AddChild(InstNode, 'EQ Time ' + inttostr(EQTime));

                      BytesRead:=Filestream.Read(FSSSRA,1);
                      AMPEG :='Square';
                      Roll :='Off';
                      FXSend :='Off';
                      FXSelected := 'FX1';
                      If (FSSSRA > 15) Then
                         begin
                              AMPEG :='Envelope';
                              FSSSRA:=FSSSRA-16;
                         End;
                      If (FSSSRA > 7) Then
                         begin
                              Roll :='On';
                              FSSSRA:=FSSSRA-8;
                         End;
                      If (FSSSRA > 3) Then
                         begin
                              FXSend :='On';
                              FSSSRA:=FSSSRA-4;
                         End;
                       If (FSSSRA = 2) Then
                         begin
                              FXSelected := 'FX3';
                         End;
                       If (FSSSRA = 1) Then
                          begin
                              FXSelected := 'FX2';
                          End;
                      Treeview1.Items.AddChild(InstNode, 'AMP EG: ' + AMPEG);
                      Treeview1.Items.AddChild(InstNode, 'Roll ' + Roll);
                      Treeview1.Items.AddChild(InstNode, 'FX Send ' + FXSend);
                      Treeview1.Items.AddChild(InstNode, 'FX Send to ' + FXSelected);

                      BytesRead:=Filestream.Read(MTDBS,1);
                      MType :='Saw';
                      MBPMSync :='Off';
                      If (MTDBS > 127) Then
                         begin
                              MBPMSync :='On';
                              MTDBS:=MTDBS-128;
                         End;
                      If (MTDBS > 63) Then
                         begin
                              MType :='Env';
                              MTDBS:=MTDBS-64;
                         End;
                      If (MTDBS > 47) Then
                         begin
                              MType :='Random';
                              MTDBS:=MTDBS-48;
                         End;
                      If (MTDBS > 31) Then
                         begin
                              MType :='Triangle';
                              MTDBS:=MTDBS-32;
                         End;
                      If (MTDBS > 15) Then
                         begin
                              MType :='Square';
                              MTDBS:=MTDBS-16;
                         End;
                      Case MTDBS of
                           0 : MDestination :='Pitch ';
                           1 : MDestination :='Osc Edit 1';
                           2 : MDestination :='Osc Edit 2';
                           3 : MDestination :='Cut Off';
                           4 : MDestination :='Amp';
                           5 : MDestination :='Pan ';
                           otherwise MDestination:='Error';
                      end;
                      Treeview1.Items.AddChild(InstNode, 'Modulation Type: ' + MType);
                      Treeview1.Items.AddChild(InstNode, 'Destination ' + MDestination);
                      Treeview1.Items.AddChild(InstNode, 'BPM Sync ' + MBPMSync);

                      BytesRead:=Filestream.Read(ModulationSpeed,1);
                      Treeview1.Items.AddChild(InstNode, 'Modulation Speed ' + inttostr(ModulationSpeed));
                      BytesRead:=Filestream.Read(ModulationDepth,1);
                      Treeview1.Items.AddChild(InstNode, 'Modulation Depth ' + inttostr(ModulationDepth));

                      BytesRead:=Filestream.Read(MotionSeqS,1);
                      Case MotionSeqS of
                           0 : MotionSeqStr :='Nothing';
                           1 : MotionSeqStr :='Smooth';
                           2 : MotionSeqStr :='Trig Hold';
                           otherwise MotionSeqStr:='Error';
                      end;

                      Treeview1.Items.AddChild(InstNode, 'MotionSeq.: ' + MotionSeqStr);
                      //The Pattern
                      ParameterNode := Treeview1.Items.AddChild(InstNode, 'Sample Pattern');


                      For i := 1 to 8 Do Begin
                          s:='';
                          For ii := 1 to 2 Do Begin
                              BytesRead:=Filestream.Read(DrumP,1);
                              For iii := 0 to 7 Do Begin
                                  GetBit := ((DrumP shr iii) and 1) = 1;
                                  If (GetBit) then
                                     s:=s + '1 '
                                  Else
                                     s:=s + '0 ';
                                  End;
                              end;
                              Treeview1.Items.AddChild(ParameterNode,s);
                          end;
                      //Endlich Sample 5
                      InstNode := Treeview1.Items.AddChild(NameNode, 'Sample 5');
                      //Samplebanknumber
                      BytesRead:=Filestream.Read(Samplebanknumber,1);
                      Samplebanknumber:=Samplebanknumber+1;
                      s:=Samplename(Samplebanknumber);
                      Treeview1.Items.AddChild(InstNode, 'Sample: ' + s);
                      Treeview1.Items.AddChild(InstNode, 'Samplebanknumber ' + inttostr(Samplebanknumber));
                      BytesRead:=Filestream.Read(Pitch,1);
                      Treeview1.Items.AddChild(InstNode, 'Pitch ' + inttostr(Pitch));
                      BytesRead:=Filestream.Read(Level,1);
                      Treeview1.Items.AddChild(InstNode, 'Level ' + inttostr(Level));
                      BytesRead:=Filestream.Read(Pan,1);
                      Treeview1.Items.AddChild(InstNode, 'Pan ' + inttostr(Pan));
                      BytesRead:=Filestream.Read(EQTime,1);
                      Treeview1.Items.AddChild(InstNode, 'EQ Time ' + inttostr(EQTime));

                      BytesRead:=Filestream.Read(FSSSRA,1);
                      AMPEG :='Square';
                      Roll :='Off';
                      FXSend :='Off';
                      FXSelected := 'FX1';
                      If (FSSSRA > 15) Then
                         begin
                              AMPEG :='Envelope';
                              FSSSRA:=FSSSRA-16;
                         End;
                      If (FSSSRA > 7) Then
                         begin
                              Roll :='On';
                              FSSSRA:=FSSSRA-8;
                         End;
                      If (FSSSRA > 3) Then
                         begin
                              FXSend :='On';
                              FSSSRA:=FSSSRA-4;
                         End;
                       If (FSSSRA = 2) Then
                         begin
                              FXSelected := 'FX3';
                         End;
                       If (FSSSRA = 1) Then
                          begin
                              FXSelected := 'FX2';
                          End;
                      Treeview1.Items.AddChild(InstNode, 'AMP EG: ' + AMPEG);
                      Treeview1.Items.AddChild(InstNode, 'Roll ' + Roll);
                      Treeview1.Items.AddChild(InstNode, 'FX Send ' + FXSend);
                      Treeview1.Items.AddChild(InstNode, 'FX Send to ' + FXSelected);

                      BytesRead:=Filestream.Read(MTDBS,1);
                      MType :='Saw';
                      MBPMSync :='Off';
                      If (MTDBS > 127) Then
                         begin
                              MBPMSync :='On';
                              MTDBS:=MTDBS-128;
                         End;
                      If (MTDBS > 63) Then
                         begin
                              MType :='Env';
                              MTDBS:=MTDBS-64;
                         End;
                      If (MTDBS > 47) Then
                         begin
                              MType :='Random';
                              MTDBS:=MTDBS-48;
                         End;
                      If (MTDBS > 31) Then
                         begin
                              MType :='Triangle';
                              MTDBS:=MTDBS-32;
                         End;
                      If (MTDBS > 15) Then
                         begin
                              MType :='Square';
                              MTDBS:=MTDBS-16;
                         End;
                      Case MTDBS of
                           0 : MDestination :='Pitch ';
                           1 : MDestination :='Osc Edit 1';
                           2 : MDestination :='Osc Edit 2';
                           3 : MDestination :='Cut Off';
                           4 : MDestination :='Amp';
                           5 : MDestination :='Pan ';
                           otherwise MDestination:='Error';
                      end;
                      Treeview1.Items.AddChild(InstNode, 'Modulation Type: ' + MType);
                      Treeview1.Items.AddChild(InstNode, 'Destination ' + MDestination);
                      Treeview1.Items.AddChild(InstNode, 'BPM Sync ' + MBPMSync);

                      BytesRead:=Filestream.Read(ModulationSpeed,1);
                      Treeview1.Items.AddChild(InstNode, 'Modulation Speed ' + inttostr(ModulationSpeed));
                      BytesRead:=Filestream.Read(ModulationDepth,1);
                      Treeview1.Items.AddChild(InstNode, 'Modulation Depth ' + inttostr(ModulationDepth));

                      BytesRead:=Filestream.Read(MotionSeqS,1);
                      Case MotionSeqS of
                           0 : MotionSeqStr :='Nothing';
                           1 : MotionSeqStr :='Smooth';
                           2 : MotionSeqStr :='Trig Hold';
                           otherwise MotionSeqStr:='Error';
                      end;

                      Treeview1.Items.AddChild(InstNode, 'MotionSeq.: ' + MotionSeqStr);
                      //The Pattern
                      ParameterNode := Treeview1.Items.AddChild(InstNode, 'Sample Pattern');


                      For i := 1 to 8 Do Begin
                          s:='';
                          For ii := 1 to 2 Do Begin
                              BytesRead:=Filestream.Read(DrumP,1);
                              For iii := 0 to 7 Do Begin
                                  GetBit := ((DrumP shr iii) and 1) = 1; //function GetBit(Value: QWord; Index: Byte): Boolean;
                                  If (GetBit) then
                                     s:=s + '1 '
                                  Else
                                     s:=s + '0 ';
                                  End;
                              end;
                              Treeview1.Items.AddChild(ParameterNode,s);
                          end;
                      //Endlich Sample 6A
                      InstNode := Treeview1.Items.AddChild(NameNode, 'Sample 6A');
                      //Samplebanknumber
                      BytesRead:=Filestream.Read(Samplebanknumber,1);
                      Samplebanknumber:=Samplebanknumber+1;
                      s:=Samplename(Samplebanknumber);
                      Treeview1.Items.AddChild(InstNode, 'Sample: ' + s);
                      Treeview1.Items.AddChild(InstNode, 'Samplebanknumber ' + inttostr(Samplebanknumber));
                      BytesRead:=Filestream.Read(Pitch,1);
                      Treeview1.Items.AddChild(InstNode, 'Pitch ' + inttostr(Pitch));
                      BytesRead:=Filestream.Read(Level,1);
                      Treeview1.Items.AddChild(InstNode, 'Level ' + inttostr(Level));
                      BytesRead:=Filestream.Read(Pan,1);
                      Treeview1.Items.AddChild(InstNode, 'Pan ' + inttostr(Pan));
                      BytesRead:=Filestream.Read(EQTime,1);
                      Treeview1.Items.AddChild(InstNode, 'EQ Time ' + inttostr(EQTime));

                      BytesRead:=Filestream.Read(FSSSRA,1);
                      AMPEG :='Square';
                      Roll :='Off';
                      FXSend :='Off';
                      FXSelected := 'FX1';
                      If (FSSSRA > 15) Then
                         begin
                              AMPEG :='Envelope';
                              FSSSRA:=FSSSRA-16;
                         End;
                      If (FSSSRA > 7) Then
                         begin
                              Roll :='On';
                              FSSSRA:=FSSSRA-8;
                         End;
                      If (FSSSRA > 3) Then
                         begin
                              FXSend :='On';
                              FSSSRA:=FSSSRA-4;
                         End;
                       If (FSSSRA = 2) Then
                         begin
                              FXSelected := 'FX3';
                         End;
                       If (FSSSRA = 1) Then
                          begin
                              FXSelected := 'FX2';
                          End;
                      Treeview1.Items.AddChild(InstNode, 'AMP EG: ' + AMPEG);
                      Treeview1.Items.AddChild(InstNode, 'Roll ' + Roll);
                      Treeview1.Items.AddChild(InstNode, 'FX Send ' + FXSend);
                      Treeview1.Items.AddChild(InstNode, 'FX Send to ' + FXSelected);

                      BytesRead:=Filestream.Read(MTDBS,1);
                      MType :='Saw';
                      MBPMSync :='Off';
                      If (MTDBS > 127) Then
                         begin
                              MBPMSync :='On';
                              MTDBS:=MTDBS-128;
                         End;
                      If (MTDBS > 63) Then
                         begin
                              MType :='Env';
                              MTDBS:=MTDBS-64;
                         End;
                      If (MTDBS > 47) Then
                         begin
                              MType :='Random';
                              MTDBS:=MTDBS-48;
                         End;
                      If (MTDBS > 31) Then
                         begin
                              MType :='Triangle';
                              MTDBS:=MTDBS-32;
                         End;
                      If (MTDBS > 15) Then
                         begin
                              MType :='Square';
                              MTDBS:=MTDBS-16;
                         End;
                      Case MTDBS of
                           0 : MDestination :='Pitch ';
                           1 : MDestination :='Osc Edit 1';
                           2 : MDestination :='Osc Edit 2';
                           3 : MDestination :='Cut Off';
                           4 : MDestination :='Amp';
                           5 : MDestination :='Pan ';
                           otherwise MDestination:='Error';
                      end;
                      Treeview1.Items.AddChild(InstNode, 'Modulation Type: ' + MType);
                      Treeview1.Items.AddChild(InstNode, 'Destination ' + MDestination);
                      Treeview1.Items.AddChild(InstNode, 'BPM Sync ' + MBPMSync);

                      BytesRead:=Filestream.Read(ModulationSpeed,1);
                      Treeview1.Items.AddChild(InstNode, 'Modulation Speed ' + inttostr(ModulationSpeed));
                      BytesRead:=Filestream.Read(ModulationDepth,1);
                      Treeview1.Items.AddChild(InstNode, 'Modulation Depth ' + inttostr(ModulationDepth));

                      BytesRead:=Filestream.Read(MotionSeqS,1);
                      Case MotionSeqS of
                           0 : MotionSeqStr :='Nothing';
                           1 : MotionSeqStr :='Smooth';
                           2 : MotionSeqStr :='Trig Hold';
                           otherwise MotionSeqStr:='Error';
                      end;

                      Treeview1.Items.AddChild(InstNode, 'MotionSeq.: ' + MotionSeqStr);
                      //The Pattern
                      ParameterNode := Treeview1.Items.AddChild(InstNode, 'Sample Pattern');


                      For i := 1 to 8 Do Begin
                          s:='';
                          For ii := 1 to 2 Do Begin
                              BytesRead:=Filestream.Read(DrumP,1);
                              For iii := 0 to 7 Do Begin
                                  GetBit := ((DrumP shr iii) and 1) = 1; //function GetBit(Value: QWord; Index: Byte): Boolean;
                                  If (GetBit) then
                                     s:=s + '1 '
                                  Else
                                     s:=s + '0 ';
                                  End;
                              end;
                              Treeview1.Items.AddChild(ParameterNode,s);
                          end;
                      //Endlich Sample 6A
                      InstNode := Treeview1.Items.AddChild(NameNode, 'Sample 6A');
                      //Samplebanknumber
                      BytesRead:=Filestream.Read(Samplebanknumber,1);
                      Samplebanknumber:=Samplebanknumber+1;
                      s:=Samplename(Samplebanknumber);
                      Treeview1.Items.AddChild(InstNode, 'Sample: ' + s);
                      Treeview1.Items.AddChild(InstNode, 'Samplebanknumber ' + inttostr(Samplebanknumber));
                      BytesRead:=Filestream.Read(Pitch,1);
                      Treeview1.Items.AddChild(InstNode, 'Pitch ' + inttostr(Pitch));
                      BytesRead:=Filestream.Read(Level,1);
                      Treeview1.Items.AddChild(InstNode, 'Level ' + inttostr(Level));
                      BytesRead:=Filestream.Read(Pan,1);
                      Treeview1.Items.AddChild(InstNode, 'Pan ' + inttostr(Pan));
                      BytesRead:=Filestream.Read(EQTime,1);
                      Treeview1.Items.AddChild(InstNode, 'EQ Time ' + inttostr(EQTime));

                      BytesRead:=Filestream.Read(FSSSRA,1);
                      AMPEG :='Square';
                      Roll :='Off';
                      FXSend :='Off';
                      FXSelected := 'FX1';
                      If (FSSSRA > 15) Then
                         begin
                              AMPEG :='Envelope';
                              FSSSRA:=FSSSRA-16;
                         End;
                      If (FSSSRA > 7) Then
                         begin
                              Roll :='On';
                              FSSSRA:=FSSSRA-8;
                         End;
                      If (FSSSRA > 3) Then
                         begin
                              FXSend :='On';
                              FSSSRA:=FSSSRA-4;
                         End;
                       If (FSSSRA = 2) Then
                         begin
                              FXSelected := 'FX3';
                         End;
                       If (FSSSRA = 1) Then
                          begin
                              FXSelected := 'FX2';
                          End;
                      Treeview1.Items.AddChild(InstNode, 'AMP EG: ' + AMPEG);
                      Treeview1.Items.AddChild(InstNode, 'Roll ' + Roll);
                      Treeview1.Items.AddChild(InstNode, 'FX Send ' + FXSend);
                      Treeview1.Items.AddChild(InstNode, 'FX Send to ' + FXSelected);

                      BytesRead:=Filestream.Read(MTDBS,1);
                      MType :='Saw';
                      MBPMSync :='Off';
                      If (MTDBS > 127) Then
                         begin
                              MBPMSync :='On';
                              MTDBS:=MTDBS-128;
                         End;
                      If (MTDBS > 63) Then
                         begin
                              MType :='Env';
                              MTDBS:=MTDBS-64;
                         End;
                      If (MTDBS > 47) Then
                         begin
                              MType :='Random';
                              MTDBS:=MTDBS-48;
                         End;
                      If (MTDBS > 31) Then
                         begin
                              MType :='Triangle';
                              MTDBS:=MTDBS-32;
                         End;
                      If (MTDBS > 15) Then
                         begin
                              MType :='Square';
                              MTDBS:=MTDBS-16;
                         End;
                      Case MTDBS of
                           0 : MDestination :='Pitch ';
                           1 : MDestination :='Osc Edit 1';
                           2 : MDestination :='Osc Edit 2';
                           3 : MDestination :='Cut Off';
                           4 : MDestination :='Amp';
                           5 : MDestination :='Pan ';
                           otherwise MDestination:='Error';
                      end;
                      Treeview1.Items.AddChild(InstNode, 'Modulation Type: ' + MType);
                      Treeview1.Items.AddChild(InstNode, 'Destination ' + MDestination);
                      Treeview1.Items.AddChild(InstNode, 'BPM Sync ' + MBPMSync);

                      BytesRead:=Filestream.Read(ModulationSpeed,1);
                      Treeview1.Items.AddChild(InstNode, 'Modulation Speed ' + inttostr(ModulationSpeed));
                      BytesRead:=Filestream.Read(ModulationDepth,1);
                      Treeview1.Items.AddChild(InstNode, 'Modulation Depth ' + inttostr(ModulationDepth));

                      BytesRead:=Filestream.Read(MotionSeqS,1);
                      Case MotionSeqS of
                           0 : MotionSeqStr :='Nothing';
                           1 : MotionSeqStr :='Smooth';
                           2 : MotionSeqStr :='Trig Hold';
                           otherwise MotionSeqStr:='Error';
                      end;

                      Treeview1.Items.AddChild(InstNode, 'MotionSeq.: ' + MotionSeqStr);
                      //The Pattern
                      ParameterNode := Treeview1.Items.AddChild(InstNode, 'Sample Pattern');


                      For i := 1 to 8 Do Begin
                          s:='';
                          For ii := 1 to 2 Do Begin
                              BytesRead:=Filestream.Read(DrumP,1);
                              For iii := 0 to 7 Do Begin
                                  GetBit := ((DrumP shr iii) and 1) = 1;
                                  If (GetBit) then
                                     s:=s + '1 '
                                  Else
                                     s:=s + '0 ';
                                  End;
                              end;
                              Treeview1.Items.AddChild(ParameterNode,s);
                          end;
                      //Endlich Sample 7A
                      InstNode := Treeview1.Items.AddChild(NameNode, 'Sample 7A');
                      //Samplebanknumber
                      BytesRead:=Filestream.Read(Samplebanknumber,1);
                      Samplebanknumber:=Samplebanknumber+1;
                      s:=Samplename(Samplebanknumber);
                      Treeview1.Items.AddChild(InstNode, 'Sample: ' + s);
                      Treeview1.Items.AddChild(InstNode, 'Samplebanknumber ' + inttostr(Samplebanknumber));
                      BytesRead:=Filestream.Read(Pitch,1);
                      Treeview1.Items.AddChild(InstNode, 'Pitch ' + inttostr(Pitch));
                      BytesRead:=Filestream.Read(Level,1);
                      Treeview1.Items.AddChild(InstNode, 'Level ' + inttostr(Level));
                      BytesRead:=Filestream.Read(Pan,1);
                      Treeview1.Items.AddChild(InstNode, 'Pan ' + inttostr(Pan));
                      BytesRead:=Filestream.Read(EQTime,1);
                      Treeview1.Items.AddChild(InstNode, 'EQ Time ' + inttostr(EQTime));

                      BytesRead:=Filestream.Read(FSSSRA,1);
                      AMPEG :='Square';
                      Roll :='Off';
                      FXSend :='Off';
                      FXSelected := 'FX1';
                      If (FSSSRA > 15) Then
                         begin
                              AMPEG :='Envelope';
                              FSSSRA:=FSSSRA-16;
                         End;
                      If (FSSSRA > 7) Then
                         begin
                              Roll :='On';
                              FSSSRA:=FSSSRA-8;
                         End;
                      If (FSSSRA > 3) Then
                         begin
                              FXSend :='On';
                              FSSSRA:=FSSSRA-4;
                         End;
                       If (FSSSRA = 2) Then
                         begin
                              FXSelected := 'FX3';
                         End;
                       If (FSSSRA = 1) Then
                          begin
                              FXSelected := 'FX2';
                          End;
                      Treeview1.Items.AddChild(InstNode, 'AMP EG: ' + AMPEG);
                      Treeview1.Items.AddChild(InstNode, 'Roll ' + Roll);
                      Treeview1.Items.AddChild(InstNode, 'FX Send ' + FXSend);
                      Treeview1.Items.AddChild(InstNode, 'FX Send to ' + FXSelected);

                      BytesRead:=Filestream.Read(MTDBS,1);
                      MType :='Saw';
                      MBPMSync :='Off';
                      If (MTDBS > 127) Then
                         begin
                              MBPMSync :='On';
                              MTDBS:=MTDBS-128;
                         End;
                      If (MTDBS > 63) Then
                         begin
                              MType :='Env';
                              MTDBS:=MTDBS-64;
                         End;
                      If (MTDBS > 47) Then
                         begin
                              MType :='Random';
                              MTDBS:=MTDBS-48;
                         End;
                      If (MTDBS > 31) Then
                         begin
                              MType :='Triangle';
                              MTDBS:=MTDBS-32;
                         End;
                      If (MTDBS > 15) Then
                         begin
                              MType :='Square';
                              MTDBS:=MTDBS-16;
                         End;
                      Case MTDBS of
                           0 : MDestination :='Pitch ';
                           1 : MDestination :='Osc Edit 1';
                           2 : MDestination :='Osc Edit 2';
                           3 : MDestination :='Cut Off';
                           4 : MDestination :='Amp';
                           5 : MDestination :='Pan ';
                           otherwise MDestination:='Error';
                      end;
                      Treeview1.Items.AddChild(InstNode, 'Modulation Type: ' + MType);
                      Treeview1.Items.AddChild(InstNode, 'Destination ' + MDestination);
                      Treeview1.Items.AddChild(InstNode, 'BPM Sync ' + MBPMSync);

                      BytesRead:=Filestream.Read(ModulationSpeed,1);
                      Treeview1.Items.AddChild(InstNode, 'Modulation Speed ' + inttostr(ModulationSpeed));
                      BytesRead:=Filestream.Read(ModulationDepth,1);
                      Treeview1.Items.AddChild(InstNode, 'Modulation Depth ' + inttostr(ModulationDepth));

                      BytesRead:=Filestream.Read(MotionSeqS,1);
                      Case MotionSeqS of
                           0 : MotionSeqStr :='Nothing';
                           1 : MotionSeqStr :='Smooth';
                           2 : MotionSeqStr :='Trig Hold';
                           otherwise MotionSeqStr:='Error';
                      end;

                      Treeview1.Items.AddChild(InstNode, 'MotionSeq.: ' + MotionSeqStr);
                      //The Pattern
                      ParameterNode := Treeview1.Items.AddChild(InstNode, 'Sample Pattern');


                      For i := 1 to 8 Do Begin
                          s:='';
                          For ii := 1 to 2 Do Begin
                              BytesRead:=Filestream.Read(DrumP,1);
                              For iii := 0 to 7 Do Begin
                                  GetBit := ((DrumP shr iii) and 1) = 1; //function GetBit(Value: QWord; Index: Byte): Boolean;
                                  If (GetBit) then
                                     s:=s + '1 '
                                  Else
                                     s:=s + '0 ';
                                  End;
                              end;
                              Treeview1.Items.AddChild(ParameterNode,s);
                          end;
                      //Endlich Sample 7B
                      InstNode := Treeview1.Items.AddChild(NameNode, 'Sample 7B');
                      //Samplebanknumber
                      BytesRead:=Filestream.Read(Samplebanknumber,1);
                      Samplebanknumber:=Samplebanknumber+1;
                      s:=Samplename(Samplebanknumber);
                      Treeview1.Items.AddChild(InstNode, 'Sample: ' + s);
                      Treeview1.Items.AddChild(InstNode, 'Samplebanknumber ' + inttostr(Samplebanknumber));
                      BytesRead:=Filestream.Read(Pitch,1);
                      Treeview1.Items.AddChild(InstNode, 'Pitch ' + inttostr(Pitch));
                      BytesRead:=Filestream.Read(Level,1);
                      Treeview1.Items.AddChild(InstNode, 'Level ' + inttostr(Level));
                      BytesRead:=Filestream.Read(Pan,1);
                      Treeview1.Items.AddChild(InstNode, 'Pan ' + inttostr(Pan));
                      BytesRead:=Filestream.Read(EQTime,1);
                      Treeview1.Items.AddChild(InstNode, 'EQ Time ' + inttostr(EQTime));

                      BytesRead:=Filestream.Read(FSSSRA,1);
                      AMPEG :='Square';
                      Roll :='Off';
                      FXSend :='Off';
                      FXSelected := 'FX1';
                      If (FSSSRA > 15) Then
                         begin
                              AMPEG :='Envelope';
                              FSSSRA:=FSSSRA-16;
                         End;
                      If (FSSSRA > 7) Then
                         begin
                              Roll :='On';
                              FSSSRA:=FSSSRA-8;
                         End;
                      If (FSSSRA > 3) Then
                         begin
                              FXSend :='On';
                              FSSSRA:=FSSSRA-4;
                         End;
                       If (FSSSRA = 2) Then
                         begin
                              FXSelected := 'FX3';
                         End;
                       If (FSSSRA = 1) Then
                          begin
                              FXSelected := 'FX2';
                          End;
                      Treeview1.Items.AddChild(InstNode, 'AMP EG: ' + AMPEG);
                      Treeview1.Items.AddChild(InstNode, 'Roll ' + Roll);
                      Treeview1.Items.AddChild(InstNode, 'FX Send ' + FXSend);
                      Treeview1.Items.AddChild(InstNode, 'FX Send to ' + FXSelected);

                      BytesRead:=Filestream.Read(MTDBS,1);
                      MType :='Saw';
                      MBPMSync :='Off';
                      If (MTDBS > 127) Then
                         begin
                              MBPMSync :='On';
                              MTDBS:=MTDBS-128;
                         End;
                      If (MTDBS > 63) Then
                         begin
                              MType :='Env';
                              MTDBS:=MTDBS-64;
                         End;
                      If (MTDBS > 47) Then
                         begin
                              MType :='Random';
                              MTDBS:=MTDBS-48;
                         End;
                      If (MTDBS > 31) Then
                         begin
                              MType :='Triangle';
                              MTDBS:=MTDBS-32;
                         End;
                      If (MTDBS > 15) Then
                         begin
                              MType :='Square';
                              MTDBS:=MTDBS-16;
                         End;
                      Case MTDBS of
                           0 : MDestination :='Pitch ';
                           1 : MDestination :='Osc Edit 1';
                           2 : MDestination :='Osc Edit 2';
                           3 : MDestination :='Cut Off';
                           4 : MDestination :='Amp';
                           5 : MDestination :='Pan ';
                           otherwise MDestination:='Error';
                      end;
                      Treeview1.Items.AddChild(InstNode, 'Modulation Type: ' + MType);
                      Treeview1.Items.AddChild(InstNode, 'Destination ' + MDestination);
                      Treeview1.Items.AddChild(InstNode, 'BPM Sync ' + MBPMSync);

                      BytesRead:=Filestream.Read(ModulationSpeed,1);
                      Treeview1.Items.AddChild(InstNode, 'Modulation Speed ' + inttostr(ModulationSpeed));
                      BytesRead:=Filestream.Read(ModulationDepth,1);
                      Treeview1.Items.AddChild(InstNode, 'Modulation Depth ' + inttostr(ModulationDepth));

                      BytesRead:=Filestream.Read(MotionSeqS,1);
                      Case MotionSeqS of
                           0 : MotionSeqStr :='Nothing';
                           1 : MotionSeqStr :='Smooth';
                           2 : MotionSeqStr :='Trig Hold';
                           otherwise MotionSeqStr:='Error';
                      end;

                      Treeview1.Items.AddChild(InstNode, 'MotionSeq.: ' + MotionSeqStr);
                      //The Pattern
                      ParameterNode := Treeview1.Items.AddChild(InstNode, 'Sample Pattern');


                      For i := 1 to 8 Do Begin
                          s:='';
                          For ii := 1 to 2 Do Begin
                              BytesRead:=Filestream.Read(DrumP,1);
                              For iii := 0 to 7 Do Begin
                                  GetBit := ((DrumP shr iii) and 1) = 1; //function GetBit(Value: QWord; Index: Byte): Boolean;
                                  If (GetBit) then
                                     s:=s + '1 '
                                  Else
                                     s:=s + '0 ';
                                  End;
                              end;
                              Treeview1.Items.AddChild(ParameterNode,s);
                          end;






                      //Synth 1
                      InstNode := Treeview1.Items.AddChild(NameNode, 'Synth 1');
                      BytesRead:=Filestream.Read(Waveform,1);
                      BytesRead:=Filestream.Read(Syntune,1);
                      BytesRead:=Filestream.Read(Synthoscillator,1);
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
                              Waveformstring :='PCM '+ inttostr(Waveform);
                         end;

                      Treeview1.Items.AddChild(InstNode, 'Waveform: ' + Waveformstring);
                      Treeview1.Items.AddChild(InstNode, 'Syntune: ' + inttostr(Syntune));
                      Treeview1.Items.AddChild(InstNode, 'Synthoscillator: ' + Synthoscillatorstring);

                      BytesRead:=Filestream.Read(OscEdit1,1);
                      Treeview1.Items.AddChild(InstNode, 'Osc Edit 1: ' + inttostr(OscEdit1));
                      BytesRead:=Filestream.Read(OscEdit2,1);
                      Treeview1.Items.AddChild(InstNode, 'Osc Edit 2: ' + inttostr(OscEdit2));
                      BytesRead:=Filestream.Read(PitchGlide ,1);
                      Treeview1.Items.AddChild(InstNode, 'Pitch/Glide: ' + inttostr(PitchGlide ));
                      BytesRead:=Filestream.Read(Filtertype ,1);
                      Case Filtertype of
                                0 : FiltertypeString :='LPF';
				1 : FiltertypeString :='HPF';
				2 : FiltertypeString :='BPF';
				3 : FiltertypeString :='BPF+';
                      end;
                      Treeview1.Items.AddChild(InstNode, 'Filtertype: ' + FiltertypeString);
                      BytesRead:=Filestream.Read(Cutoff ,1);
                      Treeview1.Items.AddChild(InstNode, 'Cutoff: ' + inttostr(Cutoff));
                      BytesRead:=Filestream.Read(Resonance  ,1);
                      Treeview1.Items.AddChild(InstNode, 'Resonance: ' + inttostr(Resonance ));
                      BytesRead:=Filestream.Read(EGInt,1);
                      Treeview1.Items.AddChild(InstNode, 'EG Int: ' + inttostr(EGInt));
                      BytesRead:=Filestream.Read(Drive,1);
                      Treeview1.Items.AddChild(InstNode, 'Drive: ' + inttostr(Drive));
                      BytesRead:=Filestream.Read(Level,1);
                      Treeview1.Items.AddChild(InstNode, 'Level: ' + inttostr(Level));
                      BytesRead:=Filestream.Read(Pan,1);
                      Treeview1.Items.AddChild(InstNode, 'Pan: ' + inttostr(Pan));
                      BytesRead:=Filestream.Read(EGTime,1);
                      Treeview1.Items.AddChild(InstNode, 'EG Time ' + inttostr(EGTime));
                      BytesRead:=Filestream.Read(FSSSRA,1);
                      AMPEG :='Square';
                      Roll :='Off';
                      FXSend :='Off';
                      FXSelected := 'FX1';
                      If (FSSSRA > 15) Then
                         begin
                              AMPEG :='Envelope';
                              FSSSRA:=FSSSRA-16;
                         End;
                      If (FSSSRA > 7) Then
                         begin
                              Roll :='On';
                              FSSSRA:=FSSSRA-8;
                         End;
                      If (FSSSRA > 3) Then
                         begin
                              FXSend :='On';
                              FSSSRA:=FSSSRA-4;
                         End;
                       If (FSSSRA = 2) Then
                         begin
                              FXSelected := 'FX3';
                         End;
                       If (FSSSRA = 1) Then
                          begin
                              FXSelected := 'FX2';
                          End;
                      Treeview1.Items.AddChild(InstNode, 'AMP EG: ' + AMPEG);
                      Treeview1.Items.AddChild(InstNode, 'Roll ' + Roll);
                      Treeview1.Items.AddChild(InstNode, 'FX Send ' + FXSend);
                      Treeview1.Items.AddChild(InstNode, 'FX Send to ' + FXSelected);

                      BytesRead:=Filestream.Read(Reserved,1);
                      //Treeview1.Items.AddChild(InstNode, 'Reserved ' + inttostr(Reserved));

                      BytesRead:=Filestream.Read(MTDBS,1);
                      MType :='Saw';
                      MBPMSync :='Off';
                      If (MTDBS > 127) Then
                         begin
                              MBPMSync :='On';
                              MTDBS:=MTDBS-128;
                         End;
                      If (MTDBS > 63) Then
                         begin
                              MType :='Env';
                              MTDBS:=MTDBS-64;
                         End;
                      If (MTDBS > 47) Then
                         begin
                              MType :='Random';
                              MTDBS:=MTDBS-48;
                         End;
                      If (MTDBS > 31) Then
                         begin
                              MType :='Triangle';
                              MTDBS:=MTDBS-32;
                         End;
                      If (MTDBS > 15) Then
                         begin
                              MType :='Square';
                              MTDBS:=MTDBS-16;
                         End;
                      Case MTDBS of
                           0 : MDestination :='Pitch ';
                           1 : MDestination :='Osc Edit 1';
                           2 : MDestination :='Osc Edit 2';
                           3 : MDestination :='Cut Off';
                           4 : MDestination :='Amp';
                           5 : MDestination :='Pan ';
                           otherwise MDestination:='Error';
                      end;
                      Treeview1.Items.AddChild(InstNode, 'Modulation Type: ' + MType);
                      Treeview1.Items.AddChild(InstNode, 'Destination ' + MDestination);
                      Treeview1.Items.AddChild(InstNode, 'BPM Sync ' + MBPMSync);

                      BytesRead:=Filestream.Read(ModulationSpeed,1);
                      Treeview1.Items.AddChild(InstNode, 'Modulation Speed ' + inttostr(ModulationSpeed));
                      BytesRead:=Filestream.Read(ModulationDepth,1);
                      Treeview1.Items.AddChild(InstNode, 'Modulation Depth ' + inttostr(ModulationDepth));

                      BytesRead:=Filestream.Read(MotionSeqS,1);
                      Case MotionSeqS of
                           0 : MotionSeqStr :='Nothing';
                           1 : MotionSeqStr :='Smooth';
                           2 : MotionSeqStr :='Trig Hold';
                           otherwise MotionSeqStr:='Error';
                      end;
                      Treeview1.Items.AddChild(InstNode, 'MotionSeq.: ' + MotionSeqStr);
                      //Synthpattern 128 Bytes
                      For i:=1 to 8 do
                          begin
                               s :=''
                               For i:=1 to 16 do
                                   begin
                                        BytesRead:=Filestream.Read(Note,1);
                                        s := s + ' ' + Notestring(Note);
                                   end;

                          end;

                      //Gatetime 128 Bytes Berechnung
                      //
                      //

                      //This is enough for today procedure
                      For i:=1 to 128 do
                          begin
                               BytesRead:=Filestream.Read(uselessToday,1);
                          end;






                      //Synth 2
                      InstNode := Treeview1.Items.AddChild(NameNode, 'Synth 2');
                      BytesRead:=Filestream.Read(Waveform,1);
                      BytesRead:=Filestream.Read(Syntune,1);
                      BytesRead:=Filestream.Read(Synthoscillator,1);
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
                              Waveformstring :='PCM '+ inttostr(Waveform);
                         end;

                      Treeview1.Items.AddChild(InstNode, 'Waveform: ' + Waveformstring);
                      Treeview1.Items.AddChild(InstNode, 'Syntune: ' + inttostr(Syntune));
                      Treeview1.Items.AddChild(InstNode, 'Synthoscillator: ' + Synthoscillatorstring);

                      BytesRead:=Filestream.Read(OscEdit1,1);
                      Treeview1.Items.AddChild(InstNode, 'Osc Edit 1: ' + inttostr(OscEdit1));
                      BytesRead:=Filestream.Read(OscEdit2,1);
                      Treeview1.Items.AddChild(InstNode, 'Osc Edit 2: ' + inttostr(OscEdit2));
                      BytesRead:=Filestream.Read(PitchGlide ,1);
                      Treeview1.Items.AddChild(InstNode, 'Pitch/Glide: ' + inttostr(PitchGlide ));
                      BytesRead:=Filestream.Read(Filtertype ,1);
                      Case Filtertype of
                                0 : FiltertypeString :='LPF';
				1 : FiltertypeString :='HPF';
				2 : FiltertypeString :='BPF';
				3 : FiltertypeString :='BPF+';
                      end;
                      Treeview1.Items.AddChild(InstNode, 'Filtertype: ' + FiltertypeString);
                      BytesRead:=Filestream.Read(Cutoff ,1);
                      Treeview1.Items.AddChild(InstNode, 'Cutoff: ' + inttostr(Cutoff));
                      BytesRead:=Filestream.Read(Resonance  ,1);
                      Treeview1.Items.AddChild(InstNode, 'Resonance: ' + inttostr(Resonance ));
                      BytesRead:=Filestream.Read(EGInt,1);
                      Treeview1.Items.AddChild(InstNode, 'EG Int: ' + inttostr(EGInt));
                      BytesRead:=Filestream.Read(Drive,1);
                      Treeview1.Items.AddChild(InstNode, 'Drive: ' + inttostr(Drive));
                      BytesRead:=Filestream.Read(Level,1);
                      Treeview1.Items.AddChild(InstNode, 'Level: ' + inttostr(Level));
                      BytesRead:=Filestream.Read(Pan,1);
                      Treeview1.Items.AddChild(InstNode, 'Pan: ' + inttostr(Pan));
                      BytesRead:=Filestream.Read(EGTime,1);
                      Treeview1.Items.AddChild(InstNode, 'EG Time ' + inttostr(EGTime));
                      BytesRead:=Filestream.Read(FSSSRA,1);
                      AMPEG :='Square';
                      Roll :='Off';
                      FXSend :='Off';
                      FXSelected := 'FX1';
                      If (FSSSRA > 15) Then
                         begin
                              AMPEG :='Envelope';
                              FSSSRA:=FSSSRA-16;
                         End;
                      If (FSSSRA > 7) Then
                         begin
                              Roll :='On';
                              FSSSRA:=FSSSRA-8;
                         End;
                      If (FSSSRA > 3) Then
                         begin
                              FXSend :='On';
                              FSSSRA:=FSSSRA-4;
                         End;
                       If (FSSSRA = 2) Then
                         begin
                              FXSelected := 'FX3';
                         End;
                       If (FSSSRA = 1) Then
                          begin
                              FXSelected := 'FX2';
                          End;
                      Treeview1.Items.AddChild(InstNode, 'AMP EG: ' + AMPEG);
                      Treeview1.Items.AddChild(InstNode, 'Roll ' + Roll);
                      Treeview1.Items.AddChild(InstNode, 'FX Send ' + FXSend);
                      Treeview1.Items.AddChild(InstNode, 'FX Send to ' + FXSelected);

                      BytesRead:=Filestream.Read(Reserved,1);
                      //Treeview1.Items.AddChild(InstNode, 'Reserved ' + inttostr(Reserved));

                      BytesRead:=Filestream.Read(MTDBS,1);
                      MType :='Saw';
                      MBPMSync :='Off';
                      If (MTDBS > 127) Then
                         begin
                              MBPMSync :='On';
                              MTDBS:=MTDBS-128;
                         End;
                      If (MTDBS > 63) Then
                         begin
                              MType :='Env';
                              MTDBS:=MTDBS-64;
                         End;
                      If (MTDBS > 47) Then
                         begin
                              MType :='Random';
                              MTDBS:=MTDBS-48;
                         End;
                      If (MTDBS > 31) Then
                         begin
                              MType :='Triangle';
                              MTDBS:=MTDBS-32;
                         End;
                      If (MTDBS > 15) Then
                         begin
                              MType :='Square';
                              MTDBS:=MTDBS-16;
                         End;
                      Case MTDBS of
                           0 : MDestination :='Pitch ';
                           1 : MDestination :='Osc Edit 1';
                           2 : MDestination :='Osc Edit 2';
                           3 : MDestination :='Cut Off';
                           4 : MDestination :='Amp';
                           5 : MDestination :='Pan ';
                           otherwise MDestination:='Error';
                      end;
                      Treeview1.Items.AddChild(InstNode, 'Modulation Type: ' + MType);
                      Treeview1.Items.AddChild(InstNode, 'Destination ' + MDestination);
                      Treeview1.Items.AddChild(InstNode, 'BPM Sync ' + MBPMSync);

                      BytesRead:=Filestream.Read(ModulationSpeed,1);
                      Treeview1.Items.AddChild(InstNode, 'Modulation Speed ' + inttostr(ModulationSpeed));
                      BytesRead:=Filestream.Read(ModulationDepth,1);
                      Treeview1.Items.AddChild(InstNode, 'Modulation Depth ' + inttostr(ModulationDepth));

                      BytesRead:=Filestream.Read(MotionSeqS,1);
                      Case MotionSeqS of
                           0 : MotionSeqStr :='Nothing';
                           1 : MotionSeqStr :='Smooth';
                           2 : MotionSeqStr :='Trig Hold';
                           otherwise MotionSeqStr:='Error';
                      end;
                      Treeview1.Items.AddChild(InstNode, 'MotionSeq.: ' + MotionSeqStr);
                      //Synthpattern 128 Bytes

                      //Gatetime 128 Bytes

                      //This is enough for today procedure
                      For i:=1 to 256 do
                          begin
                               BytesRead:=Filestream.Read(uselessToday,1);
                          end;
                      //Synth 3
                      InstNode := Treeview1.Items.AddChild(NameNode, 'Synth 3');
                      BytesRead:=Filestream.Read(Waveform,1);
                      BytesRead:=Filestream.Read(Syntune,1);
                      BytesRead:=Filestream.Read(Synthoscillator,1);
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
                              Waveformstring :='PCM '+ inttostr(Waveform);
                         end;

                      Treeview1.Items.AddChild(InstNode, 'Waveform: ' + Waveformstring);
                      Treeview1.Items.AddChild(InstNode, 'Syntune: ' + inttostr(Syntune));
                      Treeview1.Items.AddChild(InstNode, 'Synthoscillator: ' + Synthoscillatorstring);

                      BytesRead:=Filestream.Read(OscEdit1,1);
                      Treeview1.Items.AddChild(InstNode, 'Osc Edit 1: ' + inttostr(OscEdit1));
                      BytesRead:=Filestream.Read(OscEdit2,1);
                      Treeview1.Items.AddChild(InstNode, 'Osc Edit 2: ' + inttostr(OscEdit2));
                      BytesRead:=Filestream.Read(PitchGlide ,1);
                      Treeview1.Items.AddChild(InstNode, 'Pitch/Glide: ' + inttostr(PitchGlide ));
                      BytesRead:=Filestream.Read(Filtertype ,1);
                      Case Filtertype of
                                0 : FiltertypeString :='LPF';
				1 : FiltertypeString :='HPF';
				2 : FiltertypeString :='BPF';
				3 : FiltertypeString :='BPF+';
                      end;
                      Treeview1.Items.AddChild(InstNode, 'Filtertype: ' + FiltertypeString);
                      BytesRead:=Filestream.Read(Cutoff ,1);
                      Treeview1.Items.AddChild(InstNode, 'Cutoff: ' + inttostr(Cutoff));
                      BytesRead:=Filestream.Read(Resonance  ,1);
                      Treeview1.Items.AddChild(InstNode, 'Resonance: ' + inttostr(Resonance ));
                      BytesRead:=Filestream.Read(EGInt,1);
                      Treeview1.Items.AddChild(InstNode, 'EG Int: ' + inttostr(EGInt));
                      BytesRead:=Filestream.Read(Drive,1);
                      Treeview1.Items.AddChild(InstNode, 'Drive: ' + inttostr(Drive));
                      BytesRead:=Filestream.Read(Level,1);
                      Treeview1.Items.AddChild(InstNode, 'Level: ' + inttostr(Level));
                      BytesRead:=Filestream.Read(Pan,1);
                      Treeview1.Items.AddChild(InstNode, 'Pan: ' + inttostr(Pan));
                      BytesRead:=Filestream.Read(EGTime,1);
                      Treeview1.Items.AddChild(InstNode, 'EG Time ' + inttostr(EGTime));
                      BytesRead:=Filestream.Read(FSSSRA,1);
                      AMPEG :='Square';
                      Roll :='Off';
                      FXSend :='Off';
                      FXSelected := 'FX1';
                      If (FSSSRA > 15) Then
                         begin
                              AMPEG :='Envelope';
                              FSSSRA:=FSSSRA-16;
                         End;
                      If (FSSSRA > 7) Then
                         begin
                              Roll :='On';
                              FSSSRA:=FSSSRA-8;
                         End;
                      If (FSSSRA > 3) Then
                         begin
                              FXSend :='On';
                              FSSSRA:=FSSSRA-4;
                         End;
                       If (FSSSRA = 2) Then
                         begin
                              FXSelected := 'FX3';
                         End;
                       If (FSSSRA = 1) Then
                          begin
                              FXSelected := 'FX2';
                          End;
                      Treeview1.Items.AddChild(InstNode, 'AMP EG: ' + AMPEG);
                      Treeview1.Items.AddChild(InstNode, 'Roll ' + Roll);
                      Treeview1.Items.AddChild(InstNode, 'FX Send ' + FXSend);
                      Treeview1.Items.AddChild(InstNode, 'FX Send to ' + FXSelected);

                      BytesRead:=Filestream.Read(Reserved,1);
                      //Treeview1.Items.AddChild(InstNode, 'Reserved ' + inttostr(Reserved));

                      BytesRead:=Filestream.Read(MTDBS,1);
                      MType :='Saw';
                      MBPMSync :='Off';
                      If (MTDBS > 127) Then
                         begin
                              MBPMSync :='On';
                              MTDBS:=MTDBS-128;
                         End;
                      If (MTDBS > 63) Then
                         begin
                              MType :='Env';
                              MTDBS:=MTDBS-64;
                         End;
                      If (MTDBS > 47) Then
                         begin
                              MType :='Random';
                              MTDBS:=MTDBS-48;
                         End;
                      If (MTDBS > 31) Then
                         begin
                              MType :='Triangle';
                              MTDBS:=MTDBS-32;
                         End;
                      If (MTDBS > 15) Then
                         begin
                              MType :='Square';
                              MTDBS:=MTDBS-16;
                         End;
                      Case MTDBS of
                           0 : MDestination :='Pitch ';
                           1 : MDestination :='Osc Edit 1';
                           2 : MDestination :='Osc Edit 2';
                           3 : MDestination :='Cut Off';
                           4 : MDestination :='Amp';
                           5 : MDestination :='Pan ';
                           otherwise MDestination:='Error';
                      end;
                      Treeview1.Items.AddChild(InstNode, 'Modulation Type: ' + MType);
                      Treeview1.Items.AddChild(InstNode, 'Destination ' + MDestination);
                      Treeview1.Items.AddChild(InstNode, 'BPM Sync ' + MBPMSync);

                      BytesRead:=Filestream.Read(ModulationSpeed,1);
                      Treeview1.Items.AddChild(InstNode, 'Modulation Speed ' + inttostr(ModulationSpeed));
                      BytesRead:=Filestream.Read(ModulationDepth,1);
                      Treeview1.Items.AddChild(InstNode, 'Modulation Depth ' + inttostr(ModulationDepth));

                      BytesRead:=Filestream.Read(MotionSeqS,1);
                      Case MotionSeqS of
                           0 : MotionSeqStr :='Nothing';
                           1 : MotionSeqStr :='Smooth';
                           2 : MotionSeqStr :='Trig Hold';
                           otherwise MotionSeqStr:='Error';
                      end;
                      Treeview1.Items.AddChild(InstNode, 'MotionSeq.: ' + MotionSeqStr);
                      //Synthpattern 128 Bytes

                      //Gatetime 128 Bytes

                      //This is enough for today procedure
                      For i:=1 to 256 do
                          begin
                               BytesRead:=Filestream.Read(uselessToday,1);
                          end;






                      //Synth 4
                      InstNode := Treeview1.Items.AddChild(NameNode, 'Synth 4');
                      BytesRead:=Filestream.Read(Waveform,1);
                      BytesRead:=Filestream.Read(Syntune,1);
                      BytesRead:=Filestream.Read(Synthoscillator,1);
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
                              Waveformstring :='PCM '+ inttostr(Waveform);
                         end;

                      Treeview1.Items.AddChild(InstNode, 'Waveform: ' + Waveformstring);
                      Treeview1.Items.AddChild(InstNode, 'Syntune: ' + inttostr(Syntune));
                      Treeview1.Items.AddChild(InstNode, 'Synthoscillator: ' + Synthoscillatorstring);

                      BytesRead:=Filestream.Read(OscEdit1,1);
                      Treeview1.Items.AddChild(InstNode, 'Osc Edit 1: ' + inttostr(OscEdit1));
                      BytesRead:=Filestream.Read(OscEdit2,1);
                      Treeview1.Items.AddChild(InstNode, 'Osc Edit 2: ' + inttostr(OscEdit2));
                      BytesRead:=Filestream.Read(PitchGlide ,1);
                      Treeview1.Items.AddChild(InstNode, 'Pitch/Glide: ' + inttostr(PitchGlide ));
                      BytesRead:=Filestream.Read(Filtertype ,1);
                      Case Filtertype of
                                0 : FiltertypeString :='LPF';
				1 : FiltertypeString :='HPF';
				2 : FiltertypeString :='BPF';
				3 : FiltertypeString :='BPF+';
                      end;
                      Treeview1.Items.AddChild(InstNode, 'Filtertype: ' + FiltertypeString);
                      BytesRead:=Filestream.Read(Cutoff ,1);
                      Treeview1.Items.AddChild(InstNode, 'Cutoff: ' + inttostr(Cutoff));
                      BytesRead:=Filestream.Read(Resonance  ,1);
                      Treeview1.Items.AddChild(InstNode, 'Resonance: ' + inttostr(Resonance ));
                      BytesRead:=Filestream.Read(EGInt,1);
                      Treeview1.Items.AddChild(InstNode, 'EG Int: ' + inttostr(EGInt));
                      BytesRead:=Filestream.Read(Drive,1);
                      Treeview1.Items.AddChild(InstNode, 'Drive: ' + inttostr(Drive));
                      BytesRead:=Filestream.Read(Level,1);
                      Treeview1.Items.AddChild(InstNode, 'Level: ' + inttostr(Level));
                      BytesRead:=Filestream.Read(Pan,1);
                      Treeview1.Items.AddChild(InstNode, 'Pan: ' + inttostr(Pan));
                      BytesRead:=Filestream.Read(EGTime,1);
                      Treeview1.Items.AddChild(InstNode, 'EG Time ' + inttostr(EGTime));
                      BytesRead:=Filestream.Read(FSSSRA,1);
                      AMPEG :='Square';
                      Roll :='Off';
                      FXSend :='Off';
                      FXSelected := 'FX1';
                      If (FSSSRA > 15) Then
                         begin
                              AMPEG :='Envelope';
                              FSSSRA:=FSSSRA-16;
                         End;
                      If (FSSSRA > 7) Then
                         begin
                              Roll :='On';
                              FSSSRA:=FSSSRA-8;
                         End;
                      If (FSSSRA > 3) Then
                         begin
                              FXSend :='On';
                              FSSSRA:=FSSSRA-4;
                         End;
                       If (FSSSRA = 2) Then
                         begin
                              FXSelected := 'FX3';
                         End;
                       If (FSSSRA = 1) Then
                          begin
                              FXSelected := 'FX2';
                          End;
                      Treeview1.Items.AddChild(InstNode, 'AMP EG: ' + AMPEG);
                      Treeview1.Items.AddChild(InstNode, 'Roll ' + Roll);
                      Treeview1.Items.AddChild(InstNode, 'FX Send ' + FXSend);
                      Treeview1.Items.AddChild(InstNode, 'FX Send to ' + FXSelected);

                      BytesRead:=Filestream.Read(Reserved,1);
                      //Treeview1.Items.AddChild(InstNode, 'Reserved ' + inttostr(Reserved));

                      BytesRead:=Filestream.Read(MTDBS,1);
                      MType :='Saw';
                      MBPMSync :='Off';
                      If (MTDBS > 127) Then
                         begin
                              MBPMSync :='On';
                              MTDBS:=MTDBS-128;
                         End;
                      If (MTDBS > 63) Then
                         begin
                              MType :='Env';
                              MTDBS:=MTDBS-64;
                         End;
                      If (MTDBS > 47) Then
                         begin
                              MType :='Random';
                              MTDBS:=MTDBS-48;
                         End;
                      If (MTDBS > 31) Then
                         begin
                              MType :='Triangle';
                              MTDBS:=MTDBS-32;
                         End;
                      If (MTDBS > 15) Then
                         begin
                              MType :='Square';
                              MTDBS:=MTDBS-16;
                         End;
                      Case MTDBS of
                           0 : MDestination :='Pitch ';
                           1 : MDestination :='Osc Edit 1';
                           2 : MDestination :='Osc Edit 2';
                           3 : MDestination :='Cut Off';
                           4 : MDestination :='Amp';
                           5 : MDestination :='Pan ';
                           otherwise MDestination:='Error';
                      end;
                      Treeview1.Items.AddChild(InstNode, 'Modulation Type: ' + MType);
                      Treeview1.Items.AddChild(InstNode, 'Destination ' + MDestination);
                      Treeview1.Items.AddChild(InstNode, 'BPM Sync ' + MBPMSync);

                      BytesRead:=Filestream.Read(ModulationSpeed,1);
                      Treeview1.Items.AddChild(InstNode, 'Modulation Speed ' + inttostr(ModulationSpeed));
                      BytesRead:=Filestream.Read(ModulationDepth,1);
                      Treeview1.Items.AddChild(InstNode, 'Modulation Depth ' + inttostr(ModulationDepth));

                      BytesRead:=Filestream.Read(MotionSeqS,1);
                      Case MotionSeqS of
                           0 : MotionSeqStr :='Nothing';
                           1 : MotionSeqStr :='Smooth';
                           2 : MotionSeqStr :='Trig Hold';
                           otherwise MotionSeqStr:='Error';
                      end;
                      Treeview1.Items.AddChild(InstNode, 'MotionSeq.: ' + MotionSeqStr);
                      //Synthpattern 128 Bytes

                      //Gatetime 128 Bytes

                      //This is enough for today procedure
                      For i:=1 to 256 do
                          begin
                               BytesRead:=Filestream.Read(uselessToday,1);
                          end;
                      //Synth 5
                      InstNode := Treeview1.Items.AddChild(NameNode, 'Synth 5');
                      BytesRead:=Filestream.Read(Waveform,1);
                      BytesRead:=Filestream.Read(Syntune,1);
                      BytesRead:=Filestream.Read(Synthoscillator,1);
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
                              Waveformstring :='PCM '+ inttostr(Waveform);
                         end;

                      Treeview1.Items.AddChild(InstNode, 'Waveform: ' + Waveformstring);
                      Treeview1.Items.AddChild(InstNode, 'Syntune: ' + inttostr(Syntune));
                      Treeview1.Items.AddChild(InstNode, 'Synthoscillator: ' + Synthoscillatorstring);

                      BytesRead:=Filestream.Read(OscEdit1,1);
                      Treeview1.Items.AddChild(InstNode, 'Osc Edit 1: ' + inttostr(OscEdit1));
                      BytesRead:=Filestream.Read(OscEdit2,1);
                      Treeview1.Items.AddChild(InstNode, 'Osc Edit 2: ' + inttostr(OscEdit2));
                      BytesRead:=Filestream.Read(PitchGlide ,1);
                      Treeview1.Items.AddChild(InstNode, 'Pitch/Glide: ' + inttostr(PitchGlide ));
                      BytesRead:=Filestream.Read(Filtertype ,1);
                      Case Filtertype of
                                0 : FiltertypeString :='LPF';
				1 : FiltertypeString :='HPF';
				2 : FiltertypeString :='BPF';
				3 : FiltertypeString :='BPF+';
                      end;
                      Treeview1.Items.AddChild(InstNode, 'Filtertype: ' + FiltertypeString);
                      BytesRead:=Filestream.Read(Cutoff ,1);
                      Treeview1.Items.AddChild(InstNode, 'Cutoff: ' + inttostr(Cutoff));
                      BytesRead:=Filestream.Read(Resonance  ,1);
                      Treeview1.Items.AddChild(InstNode, 'Resonance: ' + inttostr(Resonance ));
                      BytesRead:=Filestream.Read(EGInt,1);
                      Treeview1.Items.AddChild(InstNode, 'EG Int: ' + inttostr(EGInt));
                      BytesRead:=Filestream.Read(Drive,1);
                      Treeview1.Items.AddChild(InstNode, 'Drive: ' + inttostr(Drive));
                      BytesRead:=Filestream.Read(Level,1);
                      Treeview1.Items.AddChild(InstNode, 'Level: ' + inttostr(Level));
                      BytesRead:=Filestream.Read(Pan,1);
                      Treeview1.Items.AddChild(InstNode, 'Pan: ' + inttostr(Pan));
                      BytesRead:=Filestream.Read(EGTime,1);
                      Treeview1.Items.AddChild(InstNode, 'EG Time ' + inttostr(EGTime));
                      BytesRead:=Filestream.Read(FSSSRA,1);
                      AMPEG :='Square';
                      Roll :='Off';
                      FXSend :='Off';
                      FXSelected := 'FX1';
                      If (FSSSRA > 15) Then
                         begin
                              AMPEG :='Envelope';
                              FSSSRA:=FSSSRA-16;
                         End;
                      If (FSSSRA > 7) Then
                         begin
                              Roll :='On';
                              FSSSRA:=FSSSRA-8;
                         End;
                      If (FSSSRA > 3) Then
                         begin
                              FXSend :='On';
                              FSSSRA:=FSSSRA-4;
                         End;
                       If (FSSSRA = 2) Then
                         begin
                              FXSelected := 'FX3';
                         End;
                       If (FSSSRA = 1) Then
                          begin
                              FXSelected := 'FX2';
                          End;
                      Treeview1.Items.AddChild(InstNode, 'AMP EG: ' + AMPEG);
                      Treeview1.Items.AddChild(InstNode, 'Roll ' + Roll);
                      Treeview1.Items.AddChild(InstNode, 'FX Send ' + FXSend);
                      Treeview1.Items.AddChild(InstNode, 'FX Send to ' + FXSelected);

                      BytesRead:=Filestream.Read(Reserved,1);
                      //Treeview1.Items.AddChild(InstNode, 'Reserved ' + inttostr(Reserved));

                      BytesRead:=Filestream.Read(MTDBS,1);
                      MType :='Saw';
                      MBPMSync :='Off';
                      If (MTDBS > 127) Then
                         begin
                              MBPMSync :='On';
                              MTDBS:=MTDBS-128;
                         End;
                      If (MTDBS > 63) Then
                         begin
                              MType :='Env';
                              MTDBS:=MTDBS-64;
                         End;
                      If (MTDBS > 47) Then
                         begin
                              MType :='Random';
                              MTDBS:=MTDBS-48;
                         End;
                      If (MTDBS > 31) Then
                         begin
                              MType :='Triangle';
                              MTDBS:=MTDBS-32;
                         End;
                      If (MTDBS > 15) Then
                         begin
                              MType :='Square';
                              MTDBS:=MTDBS-16;
                         End;
                      Case MTDBS of
                           0 : MDestination :='Pitch ';
                           1 : MDestination :='Osc Edit 1';
                           2 : MDestination :='Osc Edit 2';
                           3 : MDestination :='Cut Off';
                           4 : MDestination :='Amp';
                           5 : MDestination :='Pan ';
                           otherwise MDestination:='Error';
                      end;
                      Treeview1.Items.AddChild(InstNode, 'Modulation Type: ' + MType);
                      Treeview1.Items.AddChild(InstNode, 'Destination ' + MDestination);
                      Treeview1.Items.AddChild(InstNode, 'BPM Sync ' + MBPMSync);

                      BytesRead:=Filestream.Read(ModulationSpeed,1);
                      Treeview1.Items.AddChild(InstNode, 'Modulation Speed ' + inttostr(ModulationSpeed));
                      BytesRead:=Filestream.Read(ModulationDepth,1);
                      Treeview1.Items.AddChild(InstNode, 'Modulation Depth ' + inttostr(ModulationDepth));

                      BytesRead:=Filestream.Read(MotionSeqS,1);
                      Case MotionSeqS of
                           0 : MotionSeqStr :='Nothing';
                           1 : MotionSeqStr :='Smooth';
                           2 : MotionSeqStr :='Trig Hold';
                           otherwise MotionSeqStr:='Error';
                      end;
                      Treeview1.Items.AddChild(InstNode, 'MotionSeq.: ' + MotionSeqStr);
                      //Synthpattern 128 Bytes

                      //Gatetime 128 Bytes

                      //This is enough for today procedure
                      For i:=1 to 256 do
                          begin
                               BytesRead:=Filestream.Read(uselessToday,1);
                          end;

                      Patternbase := Patternbase + 4806;
                 end;

             end;


             FileStream.Free;
      end;
end;

procedure TMainForm.GlobalSettingsBClick(Sender: TObject);
begin
  close;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin

end;

procedure TMainForm.FileSelectionChange(Sender: TObject);
begin

end;

procedure TMainForm.PatternChange(Sender: TObject);
begin

end;

procedure TMainForm.SaveFileBClick(Sender: TObject);
begin
   ShowMessage('Last time i used Pascal was in school 1998 only on paper. I did this in 2 days. ;)');
end;

procedure TMainForm.Led_ArpChange(Sender: TObject);
begin

end;





end.
