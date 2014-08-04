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
    uELED1: TuELED;
    uELED2: TuELED;
    procedure LoadFileBClick(Sender: TObject);
    procedure PatternChange(Sender: TObject);
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

  end;

var
  MainForm: TMainForm;

implementation

{$R *.lfm}

{ TMainForm }

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
begin
   Patternbase := 512;

   if OpenDialog1.Execute then
        begin
             filename := OpenDialog1.Filename;
             //ShowMessage(filename);
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
             NameNode := Treeview1.Items.AddChild(GSNode, 'Arpcontrol Reverse');
             Treeview1.Items.AddChild(NameNode, Instname);

            

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
                     //Patter4806nsettings
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
                     Patternlength := 1;
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
                      If (RPB > 0) Then
                        begin
                             Patternlength := 2;
                        End;
                      If (RPB > 1) Then
                        begin
                             Patternlength := 3;
                        End;
                      If (RPB > 2) Then
                        begin
                             Patternlength := 4;
                        End;
                      If (RPB > 3) Then
                        begin
                             Patternlength := 5;
                        End;
                      If (RPB > 4) Then
                        begin
                             Patternlength := 6;
                        End;
                      If (RPB > 5) Then
                        begin
                             Patternlength := 7;
                        End;
                      If (RPB > 6) Then
                        begin
                             Patternlength := 8;
                        End;
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

                      Treeview1.Items.AddChild(PSNode, inttostr(ArpCenterNote));
                      // Mute Status
                      BytesRead:=Filestream.Read(MuteStatusP1,1);
                      BytesRead:=Filestream.Read(MuteStatusP2,1);
		      PSNode := Treeview1.Items.AddChild(NameNode, 'Mute Status');
                      
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

                      //Sample 1
                      InstNode := Treeview1.Items.AddChild(NameNode, 'Sample 1');
                      //Samplebanknumber
                      BytesRead:=Filestream.Read(Samplebanknumber,1);
                      Samplebanknumber:=Samplebanknumber+1;
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
                       //Sample 2
                      InstNode := Treeview1.Items.AddChild(NameNode, 'Sample 2');
                      //Samplebanknumber
                      BytesRead:=Filestream.Read(Samplebanknumber,1);
                      Samplebanknumber:=Samplebanknumber+1;
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
                       //Sample 3
                      InstNode := Treeview1.Items.AddChild(NameNode, 'Sample 3');
                      //Samplebanknumber
                      BytesRead:=Filestream.Read(Samplebanknumber,1);
                      Samplebanknumber:=Samplebanknumber+1;
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
                      //Sample 4
                      InstNode := Treeview1.Items.AddChild(NameNode, 'Sample 4');
                      //Samplebanknumber
                      BytesRead:=Filestream.Read(Samplebanknumber,1);
                      Samplebanknumber:=Samplebanknumber+1;
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
                      //Sample 5
                      InstNode := Treeview1.Items.AddChild(NameNode, 'Sample 5');
                      //Samplebanknumber
                      BytesRead:=Filestream.Read(Samplebanknumber,1);
                      Samplebanknumber:=Samplebanknumber+1;
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
                      //Sample 6A
                      InstNode := Treeview1.Items.AddChild(NameNode, 'Sample 6A');
                      //Samplebanknumber
                      BytesRead:=Filestream.Read(Samplebanknumber,1);
                      Samplebanknumber:=Samplebanknumber+1;
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
                      //Sample 6A
                      InstNode := Treeview1.Items.AddChild(NameNode, 'Sample 6A');
                      //Samplebanknumber
                      BytesRead:=Filestream.Read(Samplebanknumber,1);
                      Samplebanknumber:=Samplebanknumber+1;
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
                      //Sample 7A
                      InstNode := Treeview1.Items.AddChild(NameNode, 'Sample 7A');
                      //Samplebanknumber
                      BytesRead:=Filestream.Read(Samplebanknumber,1);
                      Samplebanknumber:=Samplebanknumber+1;
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
                      //Sample 7B
                      InstNode := Treeview1.Items.AddChild(NameNode, 'Sample 7B');
                      //Samplebanknumber
                      BytesRead:=Filestream.Read(Samplebanknumber,1);
                      Samplebanknumber:=Samplebanknumber+1;
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

                      //Gatetime 128 Bytes

                      //This is enough for today procedure
                      For i:=1 to 256 do
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




                      Patternbase := Patternbase + 4806;
                 end;

             end;


             FileStream.Free;
      end;
end;

procedure TMainForm.PatternChange(Sender: TObject);
begin

end;





end.
