unit MainformEMX;

{$mode objfpc}{$H+}{$M+}

interface

uses
  Classes, SysUtils, FileUtil, TAGraph, Forms, Controls, Graphics,
  Dialogs, ExtCtrls, Menus, ComCtrls, StdCtrls, Buttons, Grids,
  EditBtn, ueled, uEKnob, uESelector, strutils,
  EMXFunctions, LedNumber, Patternselection;

type

  { TMainForm }

  TMainForm = class(TForm)
    AmpEGSynth2: TToggleBox;
    AmpEGSynth3: TToggleBox;
    AmpEGSynth4: TToggleBox;
    AmpEGSynth5: TToggleBox;
    Bank: TComboBox;
    BPMSyncSynth2: TToggleBox;
    BPMSyncSynth3: TToggleBox;
    BPMSyncSynth4: TToggleBox;
    BPMSyncSynth5: TToggleBox;
    ArpScaleCombobox: TComboBox;
    ArpCenterNoteCombobox: TComboBox;
    Button3: TButton;
    Test: TButton;
    ComboBox1: TComboBox;
    ComboBox10: TComboBox;
    ComboBox11: TComboBox;
    ComboBox12: TComboBox;
    ComboBox13: TComboBox;
    ComboBox14: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    ComboBox6: TComboBox;
    ComboBox7: TComboBox;
    ComboBox8: TComboBox;
    ComboBox9: TComboBox;
    LaststepFld: TEdit;
    PatternnameFld: TEdit;
    GroupBox20: TGroupBox;
    GroupBox21: TGroupBox;
    GroupBox22: TGroupBox;
    MuteStatus1: TCheckBox;
    CutoffSynth2: TuEKnob;
    CutoffSynth3: TuEKnob;
    CutoffSynth4: TuEKnob;
    CutoffSynth5: TuEKnob;
    CutoffVSynth2: TEdit;
    CutoffVSynth3: TEdit;
    CutoffVSynth4: TEdit;
    CutoffVSynth5: TEdit;
    D1MotionSeq: TRadioGroup;
    D1MotionSeq8: TRadioGroup;
    D1MotionSeq1: TRadioGroup;
    D1MotionSeq2: TRadioGroup;
    D1MotionSeq3: TRadioGroup;
    D1MotionSeq4: TRadioGroup;
    D1MotionSeq5: TRadioGroup;
    D1MotionSeq6: TRadioGroup;
    D1MotionSeq7: TRadioGroup;
    D1S385: TToggleBox;
    DriveSynth2: TuEKnob;
    DriveSynth3: TuEKnob;
    DriveSynth4: TuEKnob;
    DriveSynth5: TuEKnob;
    DriveVSynth2: TEdit;
    DriveVSynth3: TEdit;
    DriveVSynth4: TEdit;
    DriveVSynth5: TEdit;
    EGIntSynth2: TuEKnob;
    EGIntSynth3: TuEKnob;
    EGIntSynth4: TuEKnob;
    EGIntSynth5: TuEKnob;
    EGIntVSynth2: TEdit;
    EGIntVSynth3: TEdit;
    EGIntVSynth4: TEdit;
    EGIntVSynth5: TEdit;
    EGTimeSynth2: TuEKnob;
    EGTimeSynth3: TuEKnob;
    EGTimeSynth4: TuEKnob;
    EGTimeSynth5: TuEKnob;
    EGTimeVSynth2: TEdit;
    EGTimeVSynth3: TEdit;
    EGTimeVSynth4: TEdit;
    EGTimeVSynth5: TEdit;
    EnvLED1_S2: TuELED;
    EnvLED1_S3: TuELED;
    EnvLED1_S4: TuELED;
    EnvLED1_S5: TuELED;
    EnvLED2_S2: TuELED;
    EnvLED2_S3: TuELED;
    EnvLED2_S4: TuELED;
    EnvLED2_S5: TuELED;
    FilterTypeSynth2: TComboBox;
    FilterTypeSynth3: TComboBox;
    FilterTypeSynth4: TComboBox;
    FilterTypeSynth5: TComboBox;
    FXSelectSynth2: TComboBox;
    FXSelectSynth3: TComboBox;
    FXSelectSynth4: TComboBox;
    FXSelectSynth5: TComboBox;
    FXSendSynth2: TToggleBox;
    FXSendSynth3: TToggleBox;
    FXSendSynth4: TToggleBox;
    FXSendSynth5: TToggleBox;
    GlideSynth2: TuEKnob;
    GlideSynth3: TuEKnob;
    GlideSynth4: TuEKnob;
    GlideSynth5: TuEKnob;
    GlideVSynth2: TEdit;
    GlideVSynth3: TEdit;
    GlideVSynth4: TEdit;
    GlideVSynth5: TEdit;
    GroupBox10: TGroupBox;
    GroupBox11: TGroupBox;
    GroupBox12: TGroupBox;
    GroupBox13: TGroupBox;
    GroupBox14: TGroupBox;
    GroupBox15: TGroupBox;
    GroupBox16: TGroupBox;
    GroupBox17: TGroupBox;
    GroupBox18: TGroupBox;
    GroupBox19: TGroupBox;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    GroupBox9: TGroupBox;
    Image1: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Image16: TImage;
    Image17: TImage;
    Image18: TImage;
    Image19: TImage;
    Image2: TImage;
    Image20: TImage;
    Image21: TImage;
    Image22: TImage;
    Image23: TImage;
    Image24: TImage;
    Image25: TImage;
    Image26: TImage;
    Image27: TImage;
    Image28: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Label167: TLabel;
    Label168: TLabel;
    Label169: TLabel;
    Label170: TLabel;
    Label171: TLabel;
    Label172: TLabel;
    Label173: TLabel;
    Label174: TLabel;
    Label175: TLabel;
    Label176: TLabel;
    Label177: TLabel;
    Label178: TLabel;
    Label179: TLabel;
    Label180: TLabel;
    Label181: TLabel;
    Label182: TLabel;
    Label183: TLabel;
    Label184: TLabel;
    Label185: TLabel;
    Label186: TLabel;
    Label187: TLabel;
    Label188: TLabel;
    Label189: TLabel;
    Label190: TLabel;
    Label191: TLabel;
    Label192: TLabel;
    Label193: TLabel;
    Label194: TLabel;
    Label195: TLabel;
    Label196: TLabel;
    Label197: TLabel;
    Label198: TLabel;
    Label199: TLabel;
    Label200: TLabel;
    Label201: TLabel;
    Label202: TLabel;
    Label203: TLabel;
    Label204: TLabel;
    Label205: TLabel;
    Label206: TLabel;
    Label207: TLabel;
    Label208: TLabel;
    Label209: TLabel;
    Label210: TLabel;
    Label211: TLabel;
    Label212: TLabel;
    Label213: TLabel;
    Label214: TLabel;
    Label215: TLabel;
    Label216: TLabel;
    Label217: TLabel;
    Label218: TLabel;
    Label219: TLabel;
    Label220: TLabel;
    LDP: TMenuItem;
    LDS1: TMenuItem;
    EditPattern: TMenuItem;
    LDP1: TMenuItem;
    LDP2: TMenuItem;
    LDP3: TMenuItem;
    LDP4: TMenuItem;
    LDP5: TMenuItem;
    LDP6A: TMenuItem;
    LDP6B: TMenuItem;
    LDP7A: TMenuItem;
    LDP7B: TMenuItem;
    LDS: TMenuItem;
    LDS2: TMenuItem;
    LDS3: TMenuItem;
    LDS4: TMenuItem;
    LDS5: TMenuItem;
    LDS6A: TMenuItem;
    LDS6B: TMenuItem;
    LDS7A: TMenuItem;
    LDS7B: TMenuItem;
    LDSDS: TMenuItem;
    LDSSA: TMenuItem;
    MuteStatus10: TCheckBox;
    MuteStatus11: TCheckBox;
    MuteStatus12: TCheckBox;
    MuteStatus13: TCheckBox;
    MuteStatus14: TCheckBox;
    SwingStatus1: TCheckBox;
    SwingStatus2: TCheckBox;
    SwingStatus3: TCheckBox;
    SwingStatus4: TCheckBox;
    SwingStatus5: TCheckBox;
    MuteStatus2: TCheckBox;
    SwingStatus6: TCheckBox;
    SwingStatus7: TCheckBox;
    SwingStatus8: TCheckBox;
    SwingStatus9: TCheckBox;
    SwingStatus10: TCheckBox;
    SwingStatus11: TCheckBox;
    SwingStatus12: TCheckBox;
    SwingStatus13: TCheckBox;
    SwingStatus14: TCheckBox;
    SwingSWStatus1: TCheckBox;
    MuteStatus3: TCheckBox;
    SwingSWStatus2: TCheckBox;
    SwingSWStatus3: TCheckBox;
    SwingSWStatus4: TCheckBox;
    SwingSWStatus5: TCheckBox;
    SwingSWStatus6: TCheckBox;
    SwingSWStatus7: TCheckBox;
    SwingSWStatus8: TCheckBox;
    SwingSWStatus9: TCheckBox;
    SwingSWStatus10: TCheckBox;
    SwingSWStatus11: TCheckBox;
    MuteStatus4: TCheckBox;
    SwingSWStatus12: TCheckBox;
    SwingSWStatus13: TCheckBox;
    SwingSWStatus14: TCheckBox;
    MuteStatus5: TCheckBox;
    MuteStatus6: TCheckBox;
    MuteStatus7: TCheckBox;
    MuteStatus8: TCheckBox;
    MuteStatus9: TCheckBox;
    RolltypeSel: TuESelector;
    SaveDialog1: TSaveDialog;
    TimeSignatureSel: TuESelector;
    StaticText18: TStaticText;
    StaticText19: TStaticText;
    TempoLED: TLEDNumber;
    StaticText17: TStaticText;
    SwingLED: TLEDNumber;
    LevelSynth2: TuEKnob;
    LevelSynth3: TuEKnob;
    LevelSynth4: TuEKnob;
    LevelSynth5: TuEKnob;
    LevelVSynth2: TEdit;
    LevelVSynth3: TEdit;
    LevelVSynth4: TEdit;
    LevelVSynth5: TEdit;
    LSP: TMenuItem;
    LSP1: TMenuItem;
    LSP2: TMenuItem;
    LSP3: TMenuItem;
    LSP4: TMenuItem;
    LSP5: TMenuItem;
    LSS: TMenuItem;
    LSS1: TMenuItem;
    LSS2: TMenuItem;
    LSS3: TMenuItem;
    LSS4: TMenuItem;
    LSS5: TMenuItem;
    LDPS: TMenuItem;
    LDPS1: TMenuItem;
    LDPS2: TMenuItem;
    LDPS3: TMenuItem;
    LDPS4: TMenuItem;
    LDPS5: TMenuItem;
    LDPS6A: TMenuItem;
    LDPS6B: TMenuItem;
    LDPS7B: TMenuItem;
    LDPS7A: TMenuItem;
    ModDepthSynth2: TuEKnob;
    ModDepthSynth3: TuEKnob;
    ModDepthSynth4: TuEKnob;
    ModDepthSynth5: TuEKnob;
    ModDepthVSynth2: TEdit;
    ModDepthVSynth3: TEdit;
    ModDepthVSynth4: TEdit;
    ModDepthVSynth5: TEdit;
    ModDestSynth2: TComboBox;
    ModDestSynth3: TComboBox;
    ModDestSynth4: TComboBox;
    ModDestSynth5: TComboBox;
    ModSpeedSynth2: TuEKnob;
    ModSpeedSynth3: TuEKnob;
    ModSpeedSynth4: TuEKnob;
    ModSpeedSynth5: TuEKnob;
    ModSpeedVSynth2: TEdit;
    ModSpeedVSynth3: TEdit;
    ModSpeedVSynth4: TEdit;
    ModSpeedVSynth5: TEdit;
    ModTypeSynth2: TComboBox;
    ModTypeSynth3: TComboBox;
    ModTypeSynth4: TComboBox;
    ModTypeSynth5: TComboBox;
    ModulationBoxSynth2: TGroupBox;
    ModulationBoxSynth3: TGroupBox;
    ModulationBoxSynth4: TGroupBox;
    ModulationBoxSynth5: TGroupBox;
    MotionSeqSynth1: TRadioGroup;
    MotionSeqSynth2: TRadioGroup;
    MotionSeqSynth3: TRadioGroup;
    MotionSeqSynth4: TRadioGroup;
    MotionSeqSynth5: TRadioGroup;
    OscEdit1Synth2: TuEKnob;
    OscEdit1Synth3: TuEKnob;
    OscEdit1Synth4: TuEKnob;
    OscEdit1Synth5: TuEKnob;
    OscEdit1VSynth2: TEdit;
    OscEdit1VSynth3: TEdit;
    OscEdit1VSynth4: TEdit;
    OscEdit1VSynth5: TEdit;
    OscEdit2Synth2: TuEKnob;
    OscEdit2Synth3: TuEKnob;
    OscEdit2Synth4: TuEKnob;
    OscEdit2Synth5: TuEKnob;
    OscEdit2VSynth2: TEdit;
    OscEdit2VSynth3: TEdit;
    OscEdit2VSynth4: TEdit;
    OscEdit2VSynth5: TEdit;
    PanSynth2: TuEKnob;
    PanSynth3: TuEKnob;
    PanSynth4: TuEKnob;
    PanSynth5: TuEKnob;
    PanVSynth2: TEdit;
    PanVSynth3: TEdit;
    PanVSynth4: TEdit;
    PanVSynth5: TEdit;
    PopupMenu1: TPopupMenu;
    ResonanceSynth2: TuEKnob;
    ResonanceSynth3: TuEKnob;
    ResonanceSynth4: TuEKnob;
    ResonanceSynth5: TuEKnob;
    ResonanceVSynth2: TEdit;
    ResonanceVSynth3: TEdit;
    ResonanceVSynth4: TEdit;
    ResonanceVSynth5: TEdit;
    RndSoundSynth1: TBitBtn;
    Button1: TButton;
    Button2: TButton;
    Chart1: TChart;
    Chart2: TChart;
    Chart3: TChart;
    Chart4: TChart;
    Chart5: TChart;
    Chart6: TChart;
    Chart7: TChart;
    Chart8: TChart;
    Chart9: TChart;
    FilterTypeSynth1: TComboBox;
    AmpEGSynth1: TToggleBox;
    BPMSyncSynth1: TToggleBox;
    FXSelectSynth1: TComboBox;
    FXSendSynth1: TToggleBox;
    ModDepthSynth1: TuEKnob;
    ModDepthVSynth1: TEdit;
    ModDestSynth1: TComboBox;
    ModSpeedSynth1: TuEKnob;
    ModSpeedVSynth1: TEdit;
    ModTypeSynth1: TComboBox;
    ModulationBoxSynth1: TGroupBox;
    CutoffSynth1: TuEKnob;
    ResonanceSynth1: TuEKnob;
    EGIntSynth1: TuEKnob;
    DriveSynth1: TuEKnob;
    LevelSynth1: TuEKnob;
    PanSynth1: TuEKnob;
    EGTimeSynth1: TuEKnob;
    CutoffVSynth1: TEdit;
    ResonanceVSynth1: TEdit;
    EGIntVSynth1: TEdit;
    DriveVSynth1: TEdit;
    LevelVSynth1: TEdit;
    PanVSynth1: TEdit;
    EGTimeVSynth1: TEdit;
    RndSoundSynth2: TBitBtn;
    RndSoundSynth3: TBitBtn;
    RndSoundSynth4: TBitBtn;
    RndSoundSynth5: TBitBtn;
    RollSynth1: TToggleBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    Label158: TLabel;
    Label159: TLabel;
    Label160: TLabel;
    Label161: TLabel;
    Label162: TLabel;
    Label163: TLabel;
    Label164: TLabel;
    Label165: TLabel;
    Label166: TLabel;
    RollSynth2: TToggleBox;
    RollSynth3: TToggleBox;
    RollSynth4: TToggleBox;
    RollSynth5: TToggleBox;
    StaticText10: TStaticText;
    StaticText11: TStaticText;
    StaticText12: TStaticText;
    StaticText13: TStaticText;
    StaticText14: TStaticText;
    StaticText15: TStaticText;
    StaticText16: TStaticText;
    SynthoscSynth2: TComboBox;
    SynthoscSynth3: TComboBox;
    SynthoscSynth4: TComboBox;
    SynthoscSynth5: TComboBox;
    TuneSynth2: TuEKnob;
    TuneSynth3: TuEKnob;
    TuneSynth4: TuEKnob;
    TuneSynth5: TuEKnob;
    TuneVSynth2: TEdit;
    TuneVSynth3: TEdit;
    TuneVSynth4: TEdit;
    TuneVSynth5: TEdit;
    SwinguEKnob: TuEKnob;
    PatternlengthSel: TuESelector;
    TempouEKnob: TuEKnob;
    WaveformSynth2: TComboBox;
    WaveformSynth3: TComboBox;
    WaveformSynth4: TComboBox;
    WaveformSynth5: TComboBox;
    WaveformSynthC1: TStaticText;
    EnvLED2_S1: TuELED;
    EnvLED1_S1: TuELED;
    WaveformSynth1: TComboBox;
    SynthoscSynth1: TComboBox;
    OscEdit1Synth1: TuEKnob;
    OscEdit2Synth1: TuEKnob;
    GlideSynth1: TuEKnob;
    TuneSynth1: TuEKnob;
    OscEdit1VSynth1: TEdit;
    OscEdit2VSynth1: TEdit;
    GlideVSynth1: TEdit;
    TuneVSynth1: TEdit;
    FXChainCB: TComboBox;
    FX2EffectSelectCB: TComboBox;
    FX3EffectSelectCB: TComboBox;
    FX2TrigHoldB: TToggleBox;
    FX3TrigHoldB: TToggleBox;
    FX2TrigHoldLED: TuELED;
    FX3TrigHoldLED: TuELED;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Label148: TLabel;
    Label149: TLabel;
    Label150: TLabel;
    Label151: TLabel;
    Label152: TLabel;
    Label153: TLabel;
    Label154: TLabel;
    Label155: TLabel;
    Label156: TLabel;
    Label157: TLabel;
    SAccentTrigHoldB: TToggleBox;
    FX1TrigHoldB: TToggleBox;
    SAccentTrigHoldLED: TuELED;
    FX1EffectSelectCB: TComboBox;
    D1AmpEGB1: TToggleBox;
    D1AmpEGB2: TToggleBox;
    D1AmpEGB3: TToggleBox;
    D1AmpEGB4: TToggleBox;
    D1AmpEGB5: TToggleBox;
    D1AmpEGB6: TToggleBox;
    D1AmpEGB7: TToggleBox;
    D1AmpEGB8: TToggleBox;
    D1BPMSync1: TToggleBox;
    D1BPMSync2: TToggleBox;
    D1BPMSync3: TToggleBox;
    D1BPMSync4: TToggleBox;
    D1BPMSync5: TToggleBox;
    D1BPMSync6: TToggleBox;
    D1BPMSync7: TToggleBox;
    D1BPMSync8: TToggleBox;
    D1DrumSequence1: TGroupBox;
    D1DrumSequence10: TGroupBox;
    D1DrumSequence2: TGroupBox;
    D1DrumSequence3: TGroupBox;
    D1DrumSequence4: TGroupBox;
    D1DrumSequence5: TGroupBox;
    D1DrumSequence6: TGroupBox;
    D1DrumSequence7: TGroupBox;
    D1DrumSequence8: TGroupBox;
    D1DrumSequence9: TGroupBox;
    D1EGTime1: TuEKnob;
    D1EGTime2: TuEKnob;
    D1EGTime3: TuEKnob;
    D1EGTime4: TuEKnob;
    D1EGTime5: TuEKnob;
    D1EGTime6: TuEKnob;
    D1EGTime7: TuEKnob;
    D1EGTime8: TuEKnob;
    D1EGTimeV1: TEdit;
    D1EGTimeV2: TEdit;
    D1EGTimeV3: TEdit;
    D1EGTimeV4: TEdit;
    D1EGTimeV5: TEdit;
    D1EGTimeV6: TEdit;
    D1EGTimeV7: TEdit;
    D1EGTimeV8: TEdit;
    D1FXSelect: TComboBox;
    D1BPMSync: TToggleBox;
    D1FXSelect1: TComboBox;
    D1FXSelect2: TComboBox;
    D1FXSelect3: TComboBox;
    D1FXSelect4: TComboBox;
    D1FXSelect5: TComboBox;
    D1FXSelect6: TComboBox;
    D1FXSelect7: TComboBox;
    D1FXSelect8: TComboBox;
    D1FXSend1: TToggleBox;
    D1FXSend2: TToggleBox;
    D1FXSend3: TToggleBox;
    D1FXSend4: TToggleBox;
    D1FXSend5: TToggleBox;
    D1FXSend6: TToggleBox;
    D1FXSend7: TToggleBox;
    D1FXSend8: TToggleBox;
    D1Level1: TuEKnob;
    D1Level5: TuEKnob;
    D1ModDepth5: TuEKnob;
    D1Level6: TuEKnob;
    D1ModDepth6: TuEKnob;
    D1Level7: TuEKnob;
    D1ModDepth7: TuEKnob;
    D1Level8: TuEKnob;
    D1ModDepth8: TuEKnob;
    DALevel: TuEKnob;
    FX1TrigHoldLED: TuELED;
    SALevel: TuEKnob;
    D1ModDepth1: TuEKnob;
    D1Level2: TuEKnob;
    D1ModDepth2: TuEKnob;
    D1Level3: TuEKnob;
    D1ModDepth3: TuEKnob;
    D1Level4: TuEKnob;
    D1ModDepth4: TuEKnob;
    D1LevelV1: TEdit;
    FX1Parameter1: TuEKnob;
    FX1Parameter2: TuEKnob;
    FX2Parameter1: TuEKnob;
    FX2Parameter2: TuEKnob;
    FX3Parameter1: TuEKnob;
    FX3Parameter2: TuEKnob;
    SALevelV: TEdit;
    D1LevelV2: TEdit;
    D1LevelV3: TEdit;
    D1LevelV4: TEdit;
    D1LevelV5: TEdit;
    D1LevelV6: TEdit;
    D1LevelV7: TEdit;
    D1LevelV8: TEdit;
    DALevelV: TEdit;
    D1ModDepthV1: TEdit;
    D1ModDepthV2: TEdit;
    D1ModDepthV3: TEdit;
    D1ModDepthV4: TEdit;
    D1ModDepthV5: TEdit;
    D1ModDepthV6: TEdit;
    D1ModDepthV7: TEdit;
    D1ModDepthV8: TEdit;
    D1ModDest1: TComboBox;
    D1ModDest2: TComboBox;
    D1ModDest3: TComboBox;
    D1ModDest4: TComboBox;
    D1ModDest5: TComboBox;
    D1ModDest6: TComboBox;
    D1ModDest7: TComboBox;
    D1ModDest8: TComboBox;
    D1ModSpeed: TuEKnob;
    D1ModDepth: TuEKnob;
    D1ModSpeed1: TuEKnob;
    D1ModSpeed2: TuEKnob;
    D1ModSpeed3: TuEKnob;
    D1ModSpeed4: TuEKnob;
    D1ModSpeed5: TuEKnob;
    D1ModSpeed6: TuEKnob;
    D1ModSpeed7: TuEKnob;
    D1ModSpeed8: TuEKnob;
    D1ModSpeedV: TEdit;
    D1ModDepthV: TEdit;
    D1ModDest: TComboBox;
    D1ModSpeedV1: TEdit;
    D1ModSpeedV2: TEdit;
    D1ModSpeedV3: TEdit;
    D1ModSpeedV4: TEdit;
    D1ModSpeedV5: TEdit;
    D1ModSpeedV6: TEdit;
    D1ModSpeedV7: TEdit;
    D1ModSpeedV8: TEdit;
    D1ModType: TComboBox;
    D1ModType1: TComboBox;
    D1ModType2: TComboBox;
    D1ModType3: TComboBox;
    D1ModType4: TComboBox;
    D1ModType5: TComboBox;
    D1ModType6: TComboBox;
    D1ModType7: TComboBox;
    D1ModType8: TComboBox;
    D1ModulationBox1: TGroupBox;
    D1ModulationBox2: TGroupBox;
    D1ModulationBox3: TGroupBox;
    D1ModulationBox4: TGroupBox;
    D1ModulationBox5: TGroupBox;
    D1ModulationBox6B: TGroupBox;
    D1ModulationBox7: TGroupBox;
    D1ModulationBox8: TGroupBox;
    D1Pan1: TuEKnob;
    D1Pan2: TuEKnob;
    D1Pan3: TuEKnob;
    D1Pan4: TuEKnob;
    D1Pan5: TuEKnob;
    D1Pan6: TuEKnob;
    D1Pan7: TuEKnob;
    D1Pan8: TuEKnob;
    D1PanV1: TEdit;
    D1PanV2: TEdit;
    D1PanV3: TEdit;
    D1PanV4: TEdit;
    D1PanV5: TEdit;
    D1PanV6: TEdit;
    D1PanV7: TEdit;
    D1PanV8: TEdit;
    D1Pitch1: TuEKnob;
    D1Pitch2: TuEKnob;
    D1Pitch3: TuEKnob;
    D1Pitch4: TuEKnob;
    D1Pitch5: TuEKnob;
    D1Pitch6: TuEKnob;
    D1Pitch7: TuEKnob;
    D1Pitch8: TuEKnob;
    D1PitchV1: TEdit;
    D1PitchV2: TEdit;
    D1PitchV3: TEdit;
    D1PitchV4: TEdit;
    D1PitchV5: TEdit;
    D1PitchV6: TEdit;
    D1PitchV7: TEdit;
    D1PitchV8: TEdit;
    D1RollB1: TToggleBox;
    D1RollB2: TToggleBox;
    D1RollB3: TToggleBox;
    D1RollB4: TToggleBox;
    D1RollB5: TToggleBox;
    D1RollB6: TToggleBox;
    D1RollB7: TToggleBox;
    D1RollB8: TToggleBox;
    D1S1000: TToggleBox;
    D1S1001: TToggleBox;
    D1S1002: TToggleBox;
    D1S1003: TToggleBox;
    D1S1004: TToggleBox;
    D1S1005: TToggleBox;
    D1S1006: TToggleBox;
    D1S1007: TToggleBox;
    D1S1008: TToggleBox;
    D1S1009: TToggleBox;
    D1S1010: TToggleBox;
    D1S1011: TToggleBox;
    D1S1012: TToggleBox;
    D1S1013: TToggleBox;
    D1S1014: TToggleBox;
    D1S1015: TToggleBox;
    D1S1016: TToggleBox;
    D1S1017: TToggleBox;
    D1S1018: TToggleBox;
    D1S1019: TToggleBox;
    D1S1020: TToggleBox;
    D1S1021: TToggleBox;
    D1S1022: TToggleBox;
    D1S1023: TToggleBox;
    D1S1024: TToggleBox;
    D1S1025: TToggleBox;
    D1S1026: TToggleBox;
    D1S1027: TToggleBox;
    D1S1028: TToggleBox;
    D1S1029: TToggleBox;
    D1S1030: TToggleBox;
    D1S1031: TToggleBox;
    D1S1032: TToggleBox;
    D1S1033: TToggleBox;
    D1S1034: TToggleBox;
    D1S1035: TToggleBox;
    D1S1036: TToggleBox;
    D1S1037: TToggleBox;
    D1S1038: TToggleBox;
    D1S1039: TToggleBox;
    D1S1040: TToggleBox;
    D1S1041: TToggleBox;
    D1S1042: TToggleBox;
    D1S1043: TToggleBox;
    D1S1044: TToggleBox;
    D1S1045: TToggleBox;
    D1S1046: TToggleBox;
    D1S1047: TToggleBox;
    D1S1048: TToggleBox;
    D1S1049: TToggleBox;
    D1S1050: TToggleBox;
    D1S1051: TToggleBox;
    D1S1052: TToggleBox;
    D1S1053: TToggleBox;
    D1S1054: TToggleBox;
    D1S1055: TToggleBox;
    D1S1056: TToggleBox;
    D1S1057: TToggleBox;
    D1S1058: TToggleBox;
    D1S1059: TToggleBox;
    D1S1060: TToggleBox;
    D1S1061: TToggleBox;
    D1S1062: TToggleBox;
    D1S1063: TToggleBox;
    D1S1064: TToggleBox;
    D1S1065: TToggleBox;
    D1S1066: TToggleBox;
    D1S1067: TToggleBox;
    D1S1068: TToggleBox;
    D1S1069: TToggleBox;
    D1S1070: TToggleBox;
    D1S1071: TToggleBox;
    D1S1072: TToggleBox;
    D1S1073: TToggleBox;
    D1S1074: TToggleBox;
    D1S1075: TToggleBox;
    D1S1076: TToggleBox;
    D1S1077: TToggleBox;
    D1S1078: TToggleBox;
    D1S1079: TToggleBox;
    D1S1080: TToggleBox;
    D1S1081: TToggleBox;
    D1S1082: TToggleBox;
    D1S1083: TToggleBox;
    D1S1084: TToggleBox;
    D1S1085: TToggleBox;
    D1S1086: TToggleBox;
    D1S1087: TToggleBox;
    D1S1088: TToggleBox;
    D1S1089: TToggleBox;
    D1S1090: TToggleBox;
    D1S1091: TToggleBox;
    D1S1092: TToggleBox;
    D1S1093: TToggleBox;
    D1S1094: TToggleBox;
    D1S1095: TToggleBox;
    D1S1096: TToggleBox;
    D1S1097: TToggleBox;
    D1S1098: TToggleBox;
    D1S1099: TToggleBox;
    D1S1100: TToggleBox;
    D1S1101: TToggleBox;
    D1S1102: TToggleBox;
    D1S1103: TToggleBox;
    D1S1104: TToggleBox;
    D1S1105: TToggleBox;
    D1S1106: TToggleBox;
    D1S1107: TToggleBox;
    D1S1108: TToggleBox;
    D1S1109: TToggleBox;
    D1S1110: TToggleBox;
    D1S1111: TToggleBox;
    D1S1112: TToggleBox;
    D1S1113: TToggleBox;
    D1S1114: TToggleBox;
    D1S1115: TToggleBox;
    D1S1116: TToggleBox;
    D1S1117: TToggleBox;
    D1S1118: TToggleBox;
    D1S1119: TToggleBox;
    D1S1120: TToggleBox;
    D1S1121: TToggleBox;
    D1S1122: TToggleBox;
    D1S1123: TToggleBox;
    D1S1124: TToggleBox;
    D1S1125: TToggleBox;
    D1S1126: TToggleBox;
    D1S1127: TToggleBox;
    D1S1128: TToggleBox;
    D1S1129: TToggleBox;
    D1S1130: TToggleBox;
    D1S1131: TToggleBox;
    D1S1132: TToggleBox;
    D1S1133: TToggleBox;
    D1S1134: TToggleBox;
    D1S1135: TToggleBox;
    D1S1136: TToggleBox;
    D1S1137: TToggleBox;
    D1S1138: TToggleBox;
    D1S1139: TToggleBox;
    D1S1140: TToggleBox;
    D1S1141: TToggleBox;
    D1S1142: TToggleBox;
    D1S1143: TToggleBox;
    D1S1144: TToggleBox;
    D1S1145: TToggleBox;
    D1S1146: TToggleBox;
    D1S1147: TToggleBox;
    D1S1148: TToggleBox;
    D1S1149: TToggleBox;
    D1S1150: TToggleBox;
    D1S1151: TToggleBox;
    D1S1152: TToggleBox;
    D1S1153: TToggleBox;
    D1S1154: TToggleBox;
    D1S1155: TToggleBox;
    D1S1156: TToggleBox;
    D1S1157: TToggleBox;
    D1S1158: TToggleBox;
    D1S1159: TToggleBox;
    D1S1160: TToggleBox;
    D1S1161: TToggleBox;
    D1S1162: TToggleBox;
    D1S1163: TToggleBox;
    D1S1164: TToggleBox;
    D1S1165: TToggleBox;
    D1S1166: TToggleBox;
    D1S1167: TToggleBox;
    D1S1168: TToggleBox;
    D1S1169: TToggleBox;
    D1S1170: TToggleBox;
    D1S1171: TToggleBox;
    D1S1172: TToggleBox;
    D1S1173: TToggleBox;
    D1S1174: TToggleBox;
    D1S1175: TToggleBox;
    D1S1176: TToggleBox;
    D1S1177: TToggleBox;
    D1S1178: TToggleBox;
    D1S1179: TToggleBox;
    D1S1180: TToggleBox;
    D1S1181: TToggleBox;
    D1S1182: TToggleBox;
    D1S1183: TToggleBox;
    D1S1184: TToggleBox;
    D1S1185: TToggleBox;
    D1S1186: TToggleBox;
    D1S1187: TToggleBox;
    D1S1188: TToggleBox;
    D1S1189: TToggleBox;
    D1S1190: TToggleBox;
    D1S1191: TToggleBox;
    D1S1192: TToggleBox;
    D1S1193: TToggleBox;
    D1S1194: TToggleBox;
    D1S1195: TToggleBox;
    D1S1196: TToggleBox;
    D1S1197: TToggleBox;
    D1S1198: TToggleBox;
    D1S1199: TToggleBox;
    D1S1200: TToggleBox;
    D1S1201: TToggleBox;
    D1S1202: TToggleBox;
    D1S1203: TToggleBox;
    D1S1204: TToggleBox;
    D1S1205: TToggleBox;
    D1S1206: TToggleBox;
    D1S1207: TToggleBox;
    D1S1208: TToggleBox;
    D1S1209: TToggleBox;
    D1S1210: TToggleBox;
    D1S1211: TToggleBox;
    D1S1212: TToggleBox;
    D1S1213: TToggleBox;
    D1S1214: TToggleBox;
    D1S1215: TToggleBox;
    D1S1216: TToggleBox;
    D1S1217: TToggleBox;
    D1S1218: TToggleBox;
    D1S1219: TToggleBox;
    D1S1220: TToggleBox;
    D1S1221: TToggleBox;
    D1S1222: TToggleBox;
    D1S1223: TToggleBox;
    D1S1224: TToggleBox;
    D1S1225: TToggleBox;
    D1S1226: TToggleBox;
    D1S1227: TToggleBox;
    D1S1228: TToggleBox;
    D1S1229: TToggleBox;
    D1S1230: TToggleBox;
    D1S1231: TToggleBox;
    D1S1232: TToggleBox;
    D1S1233: TToggleBox;
    D1S1234: TToggleBox;
    D1S1235: TToggleBox;
    D1S1236: TToggleBox;
    D1S1237: TToggleBox;
    D1S1238: TToggleBox;
    D1S1239: TToggleBox;
    D1S1240: TToggleBox;
    D1S1241: TToggleBox;
    D1S1242: TToggleBox;
    D1S1243: TToggleBox;
    D1S1244: TToggleBox;
    D1S1245: TToggleBox;
    D1S1246: TToggleBox;
    D1S1247: TToggleBox;
    D1S1248: TToggleBox;
    D1S1249: TToggleBox;
    D1S1250: TToggleBox;
    D1S1251: TToggleBox;
    D1S1252: TToggleBox;
    D1S1253: TToggleBox;
    D1S1254: TToggleBox;
    D1S1255: TToggleBox;
    D1S1256: TToggleBox;
    D1S1257: TToggleBox;
    D1S1258: TToggleBox;
    D1S1259: TToggleBox;
    D1S1260: TToggleBox;
    D1S1261: TToggleBox;
    D1S1262: TToggleBox;
    D1S1263: TToggleBox;
    D1S1264: TToggleBox;
    D1S1265: TToggleBox;
    D1S1266: TToggleBox;
    D1S1267: TToggleBox;
    D1S1268: TToggleBox;
    D1S1269: TToggleBox;
    D1S1270: TToggleBox;
    D1S1271: TToggleBox;
    D1S1272: TToggleBox;
    D1S1273: TToggleBox;
    D1S1274: TToggleBox;
    D1S1275: TToggleBox;
    D1S1276: TToggleBox;
    D1S1277: TToggleBox;
    D1S1278: TToggleBox;
    D1S1279: TToggleBox;
    D1S1280: TToggleBox;
    D1S1281: TToggleBox;
    D1S1282: TToggleBox;
    D1S1283: TToggleBox;
    D1S1284: TToggleBox;
    D1S1285: TToggleBox;
    D1S1286: TToggleBox;
    D1S1287: TToggleBox;
    D1S1288: TToggleBox;
    D1S1289: TToggleBox;
    D1S129: TToggleBox;
    D1S1290: TToggleBox;
    D1S1291: TToggleBox;
    D1S1292: TToggleBox;
    D1S1293: TToggleBox;
    D1S1294: TToggleBox;
    D1S1295: TToggleBox;
    D1S1296: TToggleBox;
    D1S1297: TToggleBox;
    D1S1298: TToggleBox;
    D1S1299: TToggleBox;
    D1S130: TToggleBox;
    D1S1300: TToggleBox;
    D1S1301: TToggleBox;
    D1S1302: TToggleBox;
    D1S1303: TToggleBox;
    D1S1304: TToggleBox;
    D1S1305: TToggleBox;
    D1S1306: TToggleBox;
    D1S1307: TToggleBox;
    D1S1308: TToggleBox;
    D1S1309: TToggleBox;
    D1S131: TToggleBox;
    D1S1310: TToggleBox;
    D1S1311: TToggleBox;
    D1S1312: TToggleBox;
    D1S1313: TToggleBox;
    D1S1314: TToggleBox;
    D1S1315: TToggleBox;
    D1S1316: TToggleBox;
    D1S1317: TToggleBox;
    D1S1318: TToggleBox;
    D1S1319: TToggleBox;
    D1S132: TToggleBox;
    D1S1320: TToggleBox;
    D1S1321: TToggleBox;
    D1S1322: TToggleBox;
    D1S1323: TToggleBox;
    D1S1324: TToggleBox;
    D1S1325: TToggleBox;
    D1S1326: TToggleBox;
    D1S1327: TToggleBox;
    D1S1328: TToggleBox;
    D1S1329: TToggleBox;
    D1S133: TToggleBox;
    D1S1330: TToggleBox;
    D1S1331: TToggleBox;
    D1S1332: TToggleBox;
    D1S1333: TToggleBox;
    D1S1334: TToggleBox;
    D1S1335: TToggleBox;
    D1S1336: TToggleBox;
    D1S1337: TToggleBox;
    D1S1338: TToggleBox;
    D1S1339: TToggleBox;
    D1S134: TToggleBox;
    D1S1340: TToggleBox;
    D1S1341: TToggleBox;
    D1S1342: TToggleBox;
    D1S1343: TToggleBox;
    D1S1344: TToggleBox;
    D1S1345: TToggleBox;
    D1S1346: TToggleBox;
    D1S1347: TToggleBox;
    D1S1348: TToggleBox;
    D1S1349: TToggleBox;
    D1S135: TToggleBox;
    D1S1350: TToggleBox;
    D1S1351: TToggleBox;
    D1S1352: TToggleBox;
    D1S1353: TToggleBox;
    D1S1354: TToggleBox;
    D1S1355: TToggleBox;
    D1S1356: TToggleBox;
    D1S1357: TToggleBox;
    D1S1358: TToggleBox;
    D1S1359: TToggleBox;
    D1S136: TToggleBox;
    D1S1360: TToggleBox;
    D1S1361: TToggleBox;
    D1S1362: TToggleBox;
    D1S1363: TToggleBox;
    D1S1364: TToggleBox;
    D1S1365: TToggleBox;
    D1S1366: TToggleBox;
    D1S1367: TToggleBox;
    D1S1368: TToggleBox;
    D1S1369: TToggleBox;
    D1S137: TToggleBox;
    D1S1370: TToggleBox;
    D1S1371: TToggleBox;
    D1S1372: TToggleBox;
    D1S1373: TToggleBox;
    D1S1374: TToggleBox;
    D1S1375: TToggleBox;
    D1S1376: TToggleBox;
    D1S1377: TToggleBox;
    D1S1378: TToggleBox;
    D1S1379: TToggleBox;
    D1S138: TToggleBox;
    D1S1380: TToggleBox;
    D1S1381: TToggleBox;
    D1S1382: TToggleBox;
    D1S1383: TToggleBox;
    D1S1384: TToggleBox;
    D1S1385: TToggleBox;
    D1S1386: TToggleBox;
    D1S1387: TToggleBox;
    D1S1388: TToggleBox;
    D1S1389: TToggleBox;
    D1S139: TToggleBox;
    D1S1390: TToggleBox;
    D1S1391: TToggleBox;
    D1S1392: TToggleBox;
    D1S1393: TToggleBox;
    D1S1394: TToggleBox;
    D1S1395: TToggleBox;
    D1S1396: TToggleBox;
    D1S1397: TToggleBox;
    D1S1398: TToggleBox;
    D1S1399: TToggleBox;
    D1S140: TToggleBox;
    D1S1400: TToggleBox;
    D1S1401: TToggleBox;
    D1S1402: TToggleBox;
    D1S1403: TToggleBox;
    D1S1404: TToggleBox;
    D1S1405: TToggleBox;
    D1S1406: TToggleBox;
    D1S1407: TToggleBox;
    D1S1408: TToggleBox;
    D1S141: TToggleBox;
    D1S142: TToggleBox;
    D1S143: TToggleBox;
    D1S144: TToggleBox;
    D1S145: TToggleBox;
    D1S146: TToggleBox;
    D1S147: TToggleBox;
    D1S148: TToggleBox;
    D1S149: TToggleBox;
    D1S150: TToggleBox;
    D1S151: TToggleBox;
    D1S152: TToggleBox;
    D1S153: TToggleBox;
    D1S154: TToggleBox;
    D1S155: TToggleBox;
    D1S156: TToggleBox;
    D1S157: TToggleBox;
    D1S158: TToggleBox;
    D1S159: TToggleBox;
    D1S160: TToggleBox;
    D1S161: TToggleBox;
    D1S162: TToggleBox;
    D1S163: TToggleBox;
    D1S164: TToggleBox;
    D1S165: TToggleBox;
    D1S166: TToggleBox;
    D1S167: TToggleBox;
    D1S168: TToggleBox;
    D1S169: TToggleBox;
    D1S170: TToggleBox;
    D1S171: TToggleBox;
    D1S172: TToggleBox;
    D1S173: TToggleBox;
    D1S174: TToggleBox;
    D1S175: TToggleBox;
    D1S176: TToggleBox;
    D1S177: TToggleBox;
    D1S178: TToggleBox;
    D1S179: TToggleBox;
    D1S180: TToggleBox;
    D1S181: TToggleBox;
    D1S182: TToggleBox;
    D1S183: TToggleBox;
    D1S184: TToggleBox;
    D1S185: TToggleBox;
    D1S186: TToggleBox;
    D1S187: TToggleBox;
    D1S188: TToggleBox;
    D1S189: TToggleBox;
    D1S190: TToggleBox;
    D1S191: TToggleBox;
    D1S192: TToggleBox;
    D1S193: TToggleBox;
    D1S194: TToggleBox;
    D1S195: TToggleBox;
    D1S196: TToggleBox;
    D1S197: TToggleBox;
    D1S198: TToggleBox;
    D1S199: TToggleBox;
    D1S2: TToggleBox;
    D1S200: TToggleBox;
    D1S201: TToggleBox;
    D1S202: TToggleBox;
    D1S203: TToggleBox;
    D1S204: TToggleBox;
    D1S205: TToggleBox;
    D1S206: TToggleBox;
    D1S207: TToggleBox;
    D1S208: TToggleBox;
    D1S209: TToggleBox;
    D1S210: TToggleBox;
    D1S211: TToggleBox;
    D1S212: TToggleBox;
    D1S213: TToggleBox;
    D1S214: TToggleBox;
    D1S215: TToggleBox;
    D1S216: TToggleBox;
    D1S217: TToggleBox;
    D1S218: TToggleBox;
    D1S219: TToggleBox;
    D1S220: TToggleBox;
    D1S221: TToggleBox;
    D1S222: TToggleBox;
    D1S223: TToggleBox;
    D1S224: TToggleBox;
    D1S225: TToggleBox;
    D1S226: TToggleBox;
    D1S227: TToggleBox;
    D1S228: TToggleBox;
    D1S229: TToggleBox;
    D1S230: TToggleBox;
    D1S231: TToggleBox;
    D1S232: TToggleBox;
    D1S233: TToggleBox;
    D1S234: TToggleBox;
    D1S235: TToggleBox;
    D1S236: TToggleBox;
    D1S237: TToggleBox;
    D1S238: TToggleBox;
    D1S239: TToggleBox;
    D1S240: TToggleBox;
    D1S241: TToggleBox;
    D1S242: TToggleBox;
    D1S243: TToggleBox;
    D1S244: TToggleBox;
    D1S245: TToggleBox;
    D1S246: TToggleBox;
    D1S247: TToggleBox;
    D1S248: TToggleBox;
    D1S249: TToggleBox;
    D1S250: TToggleBox;
    D1S251: TToggleBox;
    D1S252: TToggleBox;
    D1S253: TToggleBox;
    D1S254: TToggleBox;
    D1S255: TToggleBox;
    D1S256: TToggleBox;
    D1S257: TToggleBox;
    D1S258: TToggleBox;
    D1S259: TToggleBox;
    D1S260: TToggleBox;
    D1S261: TToggleBox;
    D1S262: TToggleBox;
    D1S263: TToggleBox;
    D1S264: TToggleBox;
    D1S265: TToggleBox;
    D1S266: TToggleBox;
    D1S267: TToggleBox;
    D1S268: TToggleBox;
    D1S269: TToggleBox;
    D1S270: TToggleBox;
    D1S271: TToggleBox;
    D1S272: TToggleBox;
    D1S273: TToggleBox;
    D1S274: TToggleBox;
    D1S275: TToggleBox;
    D1S276: TToggleBox;
    D1S277: TToggleBox;
    D1S278: TToggleBox;
    D1S279: TToggleBox;
    D1S280: TToggleBox;
    D1S281: TToggleBox;
    D1S282: TToggleBox;
    D1S283: TToggleBox;
    D1S284: TToggleBox;
    D1S285: TToggleBox;
    D1S286: TToggleBox;
    D1S287: TToggleBox;
    D1S288: TToggleBox;
    D1S289: TToggleBox;
    D1S290: TToggleBox;
    D1S291: TToggleBox;
    D1S292: TToggleBox;
    D1S293: TToggleBox;
    D1S294: TToggleBox;
    D1S295: TToggleBox;
    D1S296: TToggleBox;
    D1S297: TToggleBox;
    D1S298: TToggleBox;
    D1S299: TToggleBox;
    D1S300: TToggleBox;
    D1S301: TToggleBox;
    D1S302: TToggleBox;
    D1S303: TToggleBox;
    D1S304: TToggleBox;
    D1S305: TToggleBox;
    D1S306: TToggleBox;
    D1S307: TToggleBox;
    D1S308: TToggleBox;
    D1S309: TToggleBox;
    D1S310: TToggleBox;
    D1S311: TToggleBox;
    D1S312: TToggleBox;
    D1S313: TToggleBox;
    D1S314: TToggleBox;
    D1S315: TToggleBox;
    D1S316: TToggleBox;
    D1S317: TToggleBox;
    D1S318: TToggleBox;
    D1S319: TToggleBox;
    D1S320: TToggleBox;
    D1S321: TToggleBox;
    D1S322: TToggleBox;
    D1S323: TToggleBox;
    D1S324: TToggleBox;
    D1S325: TToggleBox;
    D1S326: TToggleBox;
    D1S327: TToggleBox;
    D1S328: TToggleBox;
    D1S329: TToggleBox;
    D1S330: TToggleBox;
    D1S331: TToggleBox;
    D1S332: TToggleBox;
    D1S333: TToggleBox;
    D1S334: TToggleBox;
    D1S335: TToggleBox;
    D1S336: TToggleBox;
    D1S337: TToggleBox;
    D1S338: TToggleBox;
    D1S339: TToggleBox;
    D1S340: TToggleBox;
    D1S341: TToggleBox;
    D1S342: TToggleBox;
    D1S343: TToggleBox;
    D1S344: TToggleBox;
    D1S345: TToggleBox;
    D1S346: TToggleBox;
    D1S347: TToggleBox;
    D1S348: TToggleBox;
    D1S349: TToggleBox;
    D1S350: TToggleBox;
    D1S351: TToggleBox;
    D1S352: TToggleBox;
    D1S353: TToggleBox;
    D1S354: TToggleBox;
    D1S355: TToggleBox;
    D1S356: TToggleBox;
    D1S357: TToggleBox;
    D1S358: TToggleBox;
    D1S359: TToggleBox;
    D1S360: TToggleBox;
    D1S361: TToggleBox;
    D1S362: TToggleBox;
    D1S363: TToggleBox;
    D1S364: TToggleBox;
    D1S365: TToggleBox;
    D1S366: TToggleBox;
    D1S367: TToggleBox;
    D1S368: TToggleBox;
    D1S369: TToggleBox;
    D1S370: TToggleBox;
    D1S371: TToggleBox;
    D1S372: TToggleBox;
    D1S373: TToggleBox;
    D1S374: TToggleBox;
    D1S375: TToggleBox;
    D1S376: TToggleBox;
    D1S377: TToggleBox;
    D1S378: TToggleBox;
    D1S379: TToggleBox;
    D1S380: TToggleBox;
    D1S381: TToggleBox;
    D1S382: TToggleBox;
    D1S383: TToggleBox;
    D1S384: TToggleBox;
    D1S386: TToggleBox;
    D1S387: TToggleBox;
    D1S388: TToggleBox;
    D1S389: TToggleBox;
    D1S390: TToggleBox;
    D1S391: TToggleBox;
    D1S392: TToggleBox;
    D1S393: TToggleBox;
    D1S394: TToggleBox;
    D1S395: TToggleBox;
    D1S396: TToggleBox;
    D1S397: TToggleBox;
    D1S398: TToggleBox;
    D1S399: TToggleBox;
    D1S400: TToggleBox;
    D1S401: TToggleBox;
    D1S402: TToggleBox;
    D1S403: TToggleBox;
    D1S404: TToggleBox;
    D1S405: TToggleBox;
    D1S406: TToggleBox;
    D1S407: TToggleBox;
    D1S408: TToggleBox;
    D1S409: TToggleBox;
    D1S410: TToggleBox;
    D1S411: TToggleBox;
    D1S412: TToggleBox;
    D1S413: TToggleBox;
    D1S414: TToggleBox;
    D1S415: TToggleBox;
    D1S416: TToggleBox;
    D1S417: TToggleBox;
    D1S418: TToggleBox;
    D1S419: TToggleBox;
    D1S420: TToggleBox;
    D1S421: TToggleBox;
    D1S422: TToggleBox;
    D1S423: TToggleBox;
    D1S424: TToggleBox;
    D1S425: TToggleBox;
    D1S426: TToggleBox;
    D1S427: TToggleBox;
    D1S428: TToggleBox;
    D1S429: TToggleBox;
    D1S430: TToggleBox;
    D1S431: TToggleBox;
    D1S432: TToggleBox;
    D1S433: TToggleBox;
    D1S434: TToggleBox;
    D1S435: TToggleBox;
    D1S436: TToggleBox;
    D1S437: TToggleBox;
    D1S438: TToggleBox;
    D1S439: TToggleBox;
    D1S440: TToggleBox;
    D1S441: TToggleBox;
    D1S442: TToggleBox;
    D1S443: TToggleBox;
    D1S444: TToggleBox;
    D1S445: TToggleBox;
    D1S446: TToggleBox;
    D1S447: TToggleBox;
    D1S448: TToggleBox;
    D1S449: TToggleBox;
    D1S450: TToggleBox;
    D1S451: TToggleBox;
    D1S452: TToggleBox;
    D1S453: TToggleBox;
    D1S454: TToggleBox;
    D1S455: TToggleBox;
    D1S456: TToggleBox;
    D1S457: TToggleBox;
    D1S458: TToggleBox;
    D1S459: TToggleBox;
    D1S460: TToggleBox;
    D1S461: TToggleBox;
    D1S462: TToggleBox;
    D1S463: TToggleBox;
    D1S464: TToggleBox;
    D1S465: TToggleBox;
    D1S466: TToggleBox;
    D1S467: TToggleBox;
    D1S468: TToggleBox;
    D1S469: TToggleBox;
    D1S470: TToggleBox;
    D1S471: TToggleBox;
    D1S472: TToggleBox;
    D1S473: TToggleBox;
    D1S474: TToggleBox;
    D1S475: TToggleBox;
    D1S476: TToggleBox;
    D1S477: TToggleBox;
    D1S478: TToggleBox;
    D1S479: TToggleBox;
    D1S480: TToggleBox;
    D1S481: TToggleBox;
    D1S482: TToggleBox;
    D1S483: TToggleBox;
    D1S484: TToggleBox;
    D1S485: TToggleBox;
    D1S486: TToggleBox;
    D1S487: TToggleBox;
    D1S488: TToggleBox;
    D1S489: TToggleBox;
    D1S490: TToggleBox;
    D1S491: TToggleBox;
    D1S492: TToggleBox;
    D1S493: TToggleBox;
    D1S494: TToggleBox;
    D1S495: TToggleBox;
    D1S496: TToggleBox;
    D1S497: TToggleBox;
    D1S498: TToggleBox;
    D1S499: TToggleBox;
    D1S500: TToggleBox;
    D1S501: TToggleBox;
    D1S502: TToggleBox;
    D1S503: TToggleBox;
    D1S504: TToggleBox;
    D1S505: TToggleBox;
    D1S506: TToggleBox;
    D1S507: TToggleBox;
    D1S508: TToggleBox;
    D1S509: TToggleBox;
    D1S510: TToggleBox;
    D1S511: TToggleBox;
    D1S512: TToggleBox;
    D1S513: TToggleBox;
    D1S514: TToggleBox;
    D1S515: TToggleBox;
    D1S516: TToggleBox;
    D1S517: TToggleBox;
    D1S518: TToggleBox;
    D1S519: TToggleBox;
    D1S520: TToggleBox;
    D1S521: TToggleBox;
    D1S522: TToggleBox;
    D1S523: TToggleBox;
    D1S524: TToggleBox;
    D1S525: TToggleBox;
    D1S526: TToggleBox;
    D1S527: TToggleBox;
    D1S528: TToggleBox;
    D1S529: TToggleBox;
    D1S530: TToggleBox;
    D1S531: TToggleBox;
    D1S532: TToggleBox;
    D1S533: TToggleBox;
    D1S534: TToggleBox;
    D1S535: TToggleBox;
    D1S536: TToggleBox;
    D1S537: TToggleBox;
    D1S538: TToggleBox;
    D1S539: TToggleBox;
    D1S540: TToggleBox;
    D1S541: TToggleBox;
    D1S542: TToggleBox;
    D1S543: TToggleBox;
    D1S544: TToggleBox;
    D1S545: TToggleBox;
    D1S546: TToggleBox;
    D1S547: TToggleBox;
    D1S548: TToggleBox;
    D1S549: TToggleBox;
    D1S550: TToggleBox;
    D1S551: TToggleBox;
    D1S552: TToggleBox;
    D1S553: TToggleBox;
    D1S554: TToggleBox;
    D1S555: TToggleBox;
    D1S556: TToggleBox;
    D1S557: TToggleBox;
    D1S558: TToggleBox;
    D1S559: TToggleBox;
    D1S560: TToggleBox;
    D1S561: TToggleBox;
    D1S562: TToggleBox;
    D1S563: TToggleBox;
    D1S564: TToggleBox;
    D1S565: TToggleBox;
    D1S566: TToggleBox;
    D1S567: TToggleBox;
    D1S568: TToggleBox;
    D1S569: TToggleBox;
    D1S570: TToggleBox;
    D1S571: TToggleBox;
    D1S572: TToggleBox;
    D1S573: TToggleBox;
    D1S574: TToggleBox;
    D1S575: TToggleBox;
    D1S576: TToggleBox;
    D1S577: TToggleBox;
    D1S578: TToggleBox;
    D1S579: TToggleBox;
    D1S580: TToggleBox;
    D1S581: TToggleBox;
    D1S582: TToggleBox;
    D1S583: TToggleBox;
    D1S584: TToggleBox;
    D1S585: TToggleBox;
    D1S586: TToggleBox;
    D1S587: TToggleBox;
    D1S588: TToggleBox;
    D1S589: TToggleBox;
    D1S590: TToggleBox;
    D1S591: TToggleBox;
    D1S592: TToggleBox;
    D1S593: TToggleBox;
    D1S594: TToggleBox;
    D1S595: TToggleBox;
    D1S596: TToggleBox;
    D1S597: TToggleBox;
    D1S598: TToggleBox;
    D1S599: TToggleBox;
    D1S600: TToggleBox;
    D1S601: TToggleBox;
    D1S602: TToggleBox;
    D1S603: TToggleBox;
    D1S604: TToggleBox;
    D1S605: TToggleBox;
    D1S606: TToggleBox;
    D1S607: TToggleBox;
    D1S608: TToggleBox;
    D1S609: TToggleBox;
    D1S610: TToggleBox;
    D1S611: TToggleBox;
    D1S612: TToggleBox;
    D1S613: TToggleBox;
    D1S614: TToggleBox;
    D1S615: TToggleBox;
    D1S616: TToggleBox;
    D1S617: TToggleBox;
    D1S618: TToggleBox;
    D1S619: TToggleBox;
    D1S620: TToggleBox;
    D1S621: TToggleBox;
    D1S622: TToggleBox;
    D1S623: TToggleBox;
    D1S624: TToggleBox;
    D1S625: TToggleBox;
    D1S626: TToggleBox;
    D1S627: TToggleBox;
    D1S628: TToggleBox;
    D1S629: TToggleBox;
    D1S630: TToggleBox;
    D1S631: TToggleBox;
    D1S632: TToggleBox;
    D1S633: TToggleBox;
    D1S634: TToggleBox;
    D1S635: TToggleBox;
    D1S636: TToggleBox;
    D1S637: TToggleBox;
    D1S638: TToggleBox;
    D1S639: TToggleBox;
    D1S640: TToggleBox;
    D1S641: TToggleBox;
    D1S642: TToggleBox;
    D1S643: TToggleBox;
    D1S644: TToggleBox;
    D1S645: TToggleBox;
    D1S646: TToggleBox;
    D1S647: TToggleBox;
    D1S648: TToggleBox;
    D1S649: TToggleBox;
    D1S650: TToggleBox;
    D1S651: TToggleBox;
    D1S652: TToggleBox;
    D1S653: TToggleBox;
    D1S654: TToggleBox;
    D1S655: TToggleBox;
    D1S656: TToggleBox;
    D1S657: TToggleBox;
    D1S658: TToggleBox;
    D1S659: TToggleBox;
    D1S660: TToggleBox;
    D1S661: TToggleBox;
    D1S662: TToggleBox;
    D1S663: TToggleBox;
    D1S664: TToggleBox;
    D1S665: TToggleBox;
    D1S666: TToggleBox;
    D1S667: TToggleBox;
    D1S668: TToggleBox;
    D1S669: TToggleBox;
    D1S670: TToggleBox;
    D1S671: TToggleBox;
    D1S672: TToggleBox;
    D1S673: TToggleBox;
    D1S674: TToggleBox;
    D1S675: TToggleBox;
    D1S676: TToggleBox;
    D1S677: TToggleBox;
    D1S678: TToggleBox;
    D1S679: TToggleBox;
    D1S680: TToggleBox;
    D1S681: TToggleBox;
    D1S682: TToggleBox;
    D1S683: TToggleBox;
    D1S684: TToggleBox;
    D1S685: TToggleBox;
    D1S686: TToggleBox;
    D1S687: TToggleBox;
    D1S688: TToggleBox;
    D1S689: TToggleBox;
    D1S690: TToggleBox;
    D1S691: TToggleBox;
    D1S692: TToggleBox;
    D1S693: TToggleBox;
    D1S694: TToggleBox;
    D1S695: TToggleBox;
    D1S696: TToggleBox;
    D1S697: TToggleBox;
    D1S698: TToggleBox;
    D1S699: TToggleBox;
    D1S700: TToggleBox;
    D1S701: TToggleBox;
    D1S702: TToggleBox;
    D1S703: TToggleBox;
    D1S704: TToggleBox;
    D1S705: TToggleBox;
    D1S706: TToggleBox;
    D1S707: TToggleBox;
    D1S708: TToggleBox;
    D1S709: TToggleBox;
    D1S710: TToggleBox;
    D1S711: TToggleBox;
    D1S712: TToggleBox;
    D1S713: TToggleBox;
    D1S714: TToggleBox;
    D1S715: TToggleBox;
    D1S716: TToggleBox;
    D1S717: TToggleBox;
    D1S718: TToggleBox;
    D1S719: TToggleBox;
    D1S720: TToggleBox;
    D1S721: TToggleBox;
    D1S722: TToggleBox;
    D1S723: TToggleBox;
    D1S724: TToggleBox;
    D1S725: TToggleBox;
    D1S726: TToggleBox;
    D1S727: TToggleBox;
    D1S728: TToggleBox;
    D1S729: TToggleBox;
    D1S730: TToggleBox;
    D1S731: TToggleBox;
    D1S732: TToggleBox;
    D1S733: TToggleBox;
    D1S734: TToggleBox;
    D1S735: TToggleBox;
    D1S736: TToggleBox;
    D1S737: TToggleBox;
    D1S738: TToggleBox;
    D1S739: TToggleBox;
    D1S740: TToggleBox;
    D1S741: TToggleBox;
    D1S742: TToggleBox;
    D1S743: TToggleBox;
    D1S744: TToggleBox;
    D1S745: TToggleBox;
    D1S746: TToggleBox;
    D1S747: TToggleBox;
    D1S748: TToggleBox;
    D1S749: TToggleBox;
    D1S750: TToggleBox;
    D1S751: TToggleBox;
    D1S752: TToggleBox;
    D1S753: TToggleBox;
    D1S754: TToggleBox;
    D1S755: TToggleBox;
    D1S756: TToggleBox;
    D1S757: TToggleBox;
    D1S758: TToggleBox;
    D1S759: TToggleBox;
    D1S760: TToggleBox;
    D1S761: TToggleBox;
    D1S762: TToggleBox;
    D1S763: TToggleBox;
    D1S764: TToggleBox;
    D1S765: TToggleBox;
    D1S766: TToggleBox;
    D1S767: TToggleBox;
    D1S768: TToggleBox;
    D1S769: TToggleBox;
    D1S770: TToggleBox;
    D1S771: TToggleBox;
    D1S772: TToggleBox;
    D1S773: TToggleBox;
    D1S774: TToggleBox;
    D1S775: TToggleBox;
    D1S776: TToggleBox;
    D1S777: TToggleBox;
    D1S778: TToggleBox;
    D1S779: TToggleBox;
    D1S780: TToggleBox;
    D1S781: TToggleBox;
    D1S782: TToggleBox;
    D1S783: TToggleBox;
    D1S784: TToggleBox;
    D1S785: TToggleBox;
    D1S786: TToggleBox;
    D1S787: TToggleBox;
    D1S788: TToggleBox;
    D1S789: TToggleBox;
    D1S790: TToggleBox;
    D1S791: TToggleBox;
    D1S792: TToggleBox;
    D1S793: TToggleBox;
    D1S794: TToggleBox;
    D1S795: TToggleBox;
    D1S796: TToggleBox;
    D1S797: TToggleBox;
    D1S798: TToggleBox;
    D1S799: TToggleBox;
    D1S800: TToggleBox;
    D1S801: TToggleBox;
    D1S802: TToggleBox;
    D1S803: TToggleBox;
    D1S804: TToggleBox;
    D1S805: TToggleBox;
    D1S806: TToggleBox;
    D1S807: TToggleBox;
    D1S808: TToggleBox;
    D1S809: TToggleBox;
    D1S810: TToggleBox;
    D1S811: TToggleBox;
    D1S812: TToggleBox;
    D1S813: TToggleBox;
    D1S814: TToggleBox;
    D1S815: TToggleBox;
    D1S816: TToggleBox;
    D1S817: TToggleBox;
    D1S818: TToggleBox;
    D1S819: TToggleBox;
    D1S820: TToggleBox;
    D1S821: TToggleBox;
    D1S822: TToggleBox;
    D1S823: TToggleBox;
    D1S824: TToggleBox;
    D1S825: TToggleBox;
    D1S826: TToggleBox;
    D1S827: TToggleBox;
    D1S828: TToggleBox;
    D1S829: TToggleBox;
    D1S830: TToggleBox;
    D1S831: TToggleBox;
    D1S832: TToggleBox;
    D1S833: TToggleBox;
    D1S834: TToggleBox;
    D1S835: TToggleBox;
    D1S836: TToggleBox;
    D1S837: TToggleBox;
    D1S838: TToggleBox;
    D1S839: TToggleBox;
    D1S840: TToggleBox;
    D1S841: TToggleBox;
    D1S842: TToggleBox;
    D1S843: TToggleBox;
    D1S844: TToggleBox;
    D1S845: TToggleBox;
    D1S846: TToggleBox;
    D1S847: TToggleBox;
    D1S848: TToggleBox;
    D1S849: TToggleBox;
    D1S850: TToggleBox;
    D1S851: TToggleBox;
    D1S852: TToggleBox;
    D1S853: TToggleBox;
    D1S854: TToggleBox;
    D1S855: TToggleBox;
    D1S856: TToggleBox;
    D1S857: TToggleBox;
    D1S858: TToggleBox;
    D1S859: TToggleBox;
    D1S860: TToggleBox;
    D1S861: TToggleBox;
    D1S862: TToggleBox;
    D1S863: TToggleBox;
    D1S864: TToggleBox;
    D1S865: TToggleBox;
    D1S866: TToggleBox;
    D1S867: TToggleBox;
    D1S868: TToggleBox;
    D1S869: TToggleBox;
    D1S870: TToggleBox;
    D1S871: TToggleBox;
    D1S872: TToggleBox;
    D1S873: TToggleBox;
    D1S874: TToggleBox;
    D1S875: TToggleBox;
    D1S876: TToggleBox;
    D1S877: TToggleBox;
    D1S878: TToggleBox;
    D1S879: TToggleBox;
    D1S880: TToggleBox;
    D1S881: TToggleBox;
    D1S882: TToggleBox;
    D1S883: TToggleBox;
    D1S884: TToggleBox;
    D1S885: TToggleBox;
    D1S886: TToggleBox;
    D1S887: TToggleBox;
    D1S888: TToggleBox;
    D1S889: TToggleBox;
    D1S890: TToggleBox;
    D1S891: TToggleBox;
    D1S892: TToggleBox;
    D1S893: TToggleBox;
    D1S894: TToggleBox;
    D1S895: TToggleBox;
    D1S896: TToggleBox;
    D1S897: TToggleBox;
    D1S898: TToggleBox;
    D1S899: TToggleBox;
    D1S900: TToggleBox;
    D1S901: TToggleBox;
    D1S902: TToggleBox;
    D1S903: TToggleBox;
    D1S904: TToggleBox;
    D1S905: TToggleBox;
    D1S906: TToggleBox;
    D1S907: TToggleBox;
    D1S908: TToggleBox;
    D1S909: TToggleBox;
    D1S910: TToggleBox;
    D1S911: TToggleBox;
    D1S912: TToggleBox;
    D1S913: TToggleBox;
    D1S914: TToggleBox;
    D1S915: TToggleBox;
    D1S916: TToggleBox;
    D1S917: TToggleBox;
    D1S918: TToggleBox;
    D1S919: TToggleBox;
    D1S920: TToggleBox;
    D1S921: TToggleBox;
    D1S922: TToggleBox;
    D1S923: TToggleBox;
    D1S924: TToggleBox;
    D1S925: TToggleBox;
    D1S926: TToggleBox;
    D1S927: TToggleBox;
    D1S928: TToggleBox;
    D1S929: TToggleBox;
    D1S930: TToggleBox;
    D1S931: TToggleBox;
    D1S932: TToggleBox;
    D1S933: TToggleBox;
    D1S934: TToggleBox;
    D1S935: TToggleBox;
    D1S936: TToggleBox;
    D1S937: TToggleBox;
    D1S938: TToggleBox;
    D1S939: TToggleBox;
    D1S940: TToggleBox;
    D1S941: TToggleBox;
    D1S942: TToggleBox;
    D1S943: TToggleBox;
    D1S944: TToggleBox;
    D1S945: TToggleBox;
    D1S946: TToggleBox;
    D1S947: TToggleBox;
    D1S948: TToggleBox;
    D1S949: TToggleBox;
    D1S950: TToggleBox;
    D1S951: TToggleBox;
    D1S952: TToggleBox;
    D1S953: TToggleBox;
    D1S954: TToggleBox;
    D1S955: TToggleBox;
    D1S956: TToggleBox;
    D1S957: TToggleBox;
    D1S958: TToggleBox;
    D1S959: TToggleBox;
    D1S960: TToggleBox;
    D1S961: TToggleBox;
    D1S962: TToggleBox;
    D1S963: TToggleBox;
    D1S964: TToggleBox;
    D1S965: TToggleBox;
    D1S966: TToggleBox;
    D1S967: TToggleBox;
    D1S968: TToggleBox;
    D1S969: TToggleBox;
    D1S970: TToggleBox;
    D1S971: TToggleBox;
    D1S972: TToggleBox;
    D1S973: TToggleBox;
    D1S974: TToggleBox;
    D1S975: TToggleBox;
    D1S976: TToggleBox;
    D1S977: TToggleBox;
    D1S978: TToggleBox;
    D1S979: TToggleBox;
    D1S980: TToggleBox;
    D1S981: TToggleBox;
    D1S982: TToggleBox;
    D1S983: TToggleBox;
    D1S984: TToggleBox;
    D1S985: TToggleBox;
    D1S986: TToggleBox;
    D1S987: TToggleBox;
    D1S988: TToggleBox;
    D1S989: TToggleBox;
    D1S990: TToggleBox;
    D1S991: TToggleBox;
    D1S992: TToggleBox;
    D1S993: TToggleBox;
    D1S994: TToggleBox;
    D1S995: TToggleBox;
    D1S996: TToggleBox;
    D1S997: TToggleBox;
    D1S998: TToggleBox;
    D1S999: TToggleBox;
    D1Sample: TComboBox;
    D1ModulationBox: TGroupBox;
    D1DrumSequence: TGroupBox;
    D1Sample1: TComboBox;
    D1Sample2: TComboBox;
    D1Sample3: TComboBox;
    D1Sample4: TComboBox;
    D1Sample5: TComboBox;
    D1Sample6: TComboBox;
    D1Sample7: TComboBox;
    D1Sample8: TComboBox;
    GroupBox1: TGroupBox;
    Label10: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    Label11: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    Label113: TLabel;
    Label114: TLabel;
    Label115: TLabel;
    Label116: TLabel;
    Label117: TLabel;
    Label118: TLabel;
    Label119: TLabel;
    Label12: TLabel;
    Label120: TLabel;
    Label121: TLabel;
    Label122: TLabel;
    Label123: TLabel;
    Label124: TLabel;
    Label125: TLabel;
    Label126: TLabel;
    Label127: TLabel;
    Label128: TLabel;
    Label129: TLabel;
    Label13: TLabel;
    Label130: TLabel;
    Label131: TLabel;
    Label132: TLabel;
    Label133: TLabel;
    Label134: TLabel;
    Label135: TLabel;
    Label136: TLabel;
    Label137: TLabel;
    Label138: TLabel;
    Label139: TLabel;
    Label14: TLabel;
    Label140: TLabel;
    Label141: TLabel;
    Label142: TLabel;
    Label143: TLabel;
    Label144: TLabel;
    Label145: TLabel;
    Label146: TLabel;
    Label147: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label8: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label9: TLabel;
    D1PitchV: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    LoadFileB: TButton;
    OpenDialog1: TOpenDialog;
    D1LevelV: TEdit;
    D1PanV: TEdit;
    D1EGTimeV: TEdit;
    ProgressBar1: TProgressBar;
    FX1VParameter1: TEdit;
    FX1VParameter2: TEdit;
    FX2VParameter1: TEdit;
    FX2VParameter2: TEdit;
    FX3VParameter1: TEdit;
    FX3VParameter2: TEdit;
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
    Drum1: TTabSheet;
    DAccent: TTabSheet;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    Synth1: TTabSheet;
    Synth2: TTabSheet;
    Synth3: TTabSheet;
    Synth4: TTabSheet;
    Synth5: TTabSheet;
    SAccent: TTabSheet;
    Setup: TTabSheet;
    Overview: TTabSheet;
    Drum2: TTabSheet;
    Drum3: TTabSheet;
    Drum4: TTabSheet;
    Drum5: TTabSheet;
    Drum6A: TTabSheet;
    Drum6B: TTabSheet;
    Drum7A: TTabSheet;
    Drum7B: TTabSheet;
    D1FXSend: TToggleBox;
    D1RollB: TToggleBox;
    D1AmpEGB: TToggleBox;
    D1S1: TToggleBox;
    D1S10: TToggleBox;
    D1S100: TToggleBox;
    D1S101: TToggleBox;
    D1S102: TToggleBox;
    D1S103: TToggleBox;
    D1S104: TToggleBox;
    D1S105: TToggleBox;
    D1S106: TToggleBox;
    D1S107: TToggleBox;
    D1S108: TToggleBox;
    D1S109: TToggleBox;
    D1S11: TToggleBox;
    D1S110: TToggleBox;
    D1S111: TToggleBox;
    D1S112: TToggleBox;
    D1S113: TToggleBox;
    D1S114: TToggleBox;
    D1S115: TToggleBox;
    D1S116: TToggleBox;
    D1S117: TToggleBox;
    D1S118: TToggleBox;
    D1S119: TToggleBox;
    D1S12: TToggleBox;
    D1S120: TToggleBox;
    D1S121: TToggleBox;
    D1S122: TToggleBox;
    D1S123: TToggleBox;
    D1S124: TToggleBox;
    D1S125: TToggleBox;
    D1S126: TToggleBox;
    D1S127: TToggleBox;
    D1S128: TToggleBox;
    D1S13: TToggleBox;
    D1S14: TToggleBox;
    D1S15: TToggleBox;
    D1S16: TToggleBox;
    D1S17: TToggleBox;
    D1S18: TToggleBox;
    D1S19: TToggleBox;
    B1_2: TToggleBox;
    D1S20: TToggleBox;
    D1S21: TToggleBox;
    D1S22: TToggleBox;
    D1S23: TToggleBox;
    D1S24: TToggleBox;
    D1S25: TToggleBox;
    D1S26: TToggleBox;
    D1S27: TToggleBox;
    D1S28: TToggleBox;
    D1S29: TToggleBox;
    D1S3: TToggleBox;
    D1S30: TToggleBox;
    D1S31: TToggleBox;
    D1S32: TToggleBox;
    D1S33: TToggleBox;
    D1S34: TToggleBox;
    D1S35: TToggleBox;
    D1S36: TToggleBox;
    D1S37: TToggleBox;
    D1S38: TToggleBox;
    D1S39: TToggleBox;
    D1S4: TToggleBox;
    D1S40: TToggleBox;
    D1S41: TToggleBox;
    D1S42: TToggleBox;
    D1S43: TToggleBox;
    D1S44: TToggleBox;
    D1S45: TToggleBox;
    D1S46: TToggleBox;
    D1S47: TToggleBox;
    D1S48: TToggleBox;
    D1S49: TToggleBox;
    D1S5: TToggleBox;
    D1S50: TToggleBox;
    D1S51: TToggleBox;
    D1S52: TToggleBox;
    D1S53: TToggleBox;
    D1S54: TToggleBox;
    D1S55: TToggleBox;
    D1S56: TToggleBox;
    D1S57: TToggleBox;
    D1S58: TToggleBox;
    D1S59: TToggleBox;
    D1S6: TToggleBox;
    D1S60: TToggleBox;
    D1S61: TToggleBox;
    D1S62: TToggleBox;
    D1S63: TToggleBox;
    D1S64: TToggleBox;
    D1S65: TToggleBox;
    D1S66: TToggleBox;
    D1S67: TToggleBox;
    D1S68: TToggleBox;
    D1S69: TToggleBox;
    D1S7: TToggleBox;
    D1S70: TToggleBox;
    D1S71: TToggleBox;
    D1S72: TToggleBox;
    D1S73: TToggleBox;
    D1S74: TToggleBox;
    D1S75: TToggleBox;
    D1S76: TToggleBox;
    D1S77: TToggleBox;
    D1S78: TToggleBox;
    D1S79: TToggleBox;
    D1S8: TToggleBox;
    D1S80: TToggleBox;
    D1S81: TToggleBox;
    D1S82: TToggleBox;
    D1S83: TToggleBox;
    D1S84: TToggleBox;
    D1S85: TToggleBox;
    D1S86: TToggleBox;
    D1S87: TToggleBox;
    D1S88: TToggleBox;
    D1S89: TToggleBox;
    D1S9: TToggleBox;
    D1S90: TToggleBox;
    D1S91: TToggleBox;
    D1S92: TToggleBox;
    D1S93: TToggleBox;
    D1S94: TToggleBox;
    D1S95: TToggleBox;
    D1S96: TToggleBox;
    D1S97: TToggleBox;
    D1S98: TToggleBox;
    D1S99: TToggleBox;
    DAccentTrigHoldB: TToggleBox;
    TreeView1: TTreeView;
    uEKnob1: TuEKnob;
    Led_Arp: TuELED;
    LED_Protect: TuELED;
    D1Pitch: TuEKnob;
    D1Level: TuEKnob;
    D1Pan: TuEKnob;
    D1EGTime: TuEKnob;
    EnvLED1_1: TuELED;
    EnvLED2_5: TuELED;
    EnvLED1_6: TuELED;
    EnvLED2_6: TuELED;
    EnvLED1_7: TuELED;
    EnvLED2_7: TuELED;
    EnvLED1_8: TuELED;
    EnvLED2_8: TuELED;
    EnvLED1_9: TuELED;
    EnvLED2_9: TuELED;
    DAccentTrigHoldLED: TuELED;
    EnvLED2_1: TuELED;
    EnvLED1_2: TuELED;
    EnvLED2_2: TuELED;
    EnvLED1_3: TuELED;
    EnvLED2_3: TuELED;
    EnvLED1_4: TuELED;
    EnvLED2_4: TuELED;
    EnvLED1_5: TuELED;
    WaveformSynthC2: TStaticText;
    WaveformSynthC3: TStaticText;
    WaveformSynthC4: TStaticText;
    WaveformSynthC5: TStaticText;
    procedure AmpEGSynth1Change(Sender: TObject);
    procedure AmpEGSynth2Change(Sender: TObject);
    procedure AmpEGSynth3Change(Sender: TObject);
    procedure AmpEGSynth4Change(Sender: TObject);
    procedure AmpEGSynth5Change(Sender: TObject);
    procedure BPMSyncSynth1Change(Sender: TObject);
    procedure BPMSyncSynth2Change(Sender: TObject);
    procedure BPMSyncSynth3Change(Sender: TObject);
    procedure BPMSyncSynth4Change(Sender: TObject);
    procedure BPMSyncSynth5Change(Sender: TObject);
    procedure CutoffSynth1Change(Sender: TObject);
    procedure CutoffSynth2Change(Sender: TObject);
    procedure CutoffSynth3Change(Sender: TObject);
    procedure CutoffSynth4Change(Sender: TObject);
    procedure CutoffSynth5Change(Sender: TObject);
    procedure D1AmpEGB1Change(Sender: TObject);
    procedure D1AmpEGB2Change(Sender: TObject);
    procedure D1AmpEGB3Change(Sender: TObject);
    procedure D1AmpEGB4Change(Sender: TObject);
    procedure D1AmpEGB5Change(Sender: TObject);
    procedure D1AmpEGB6Change(Sender: TObject);
    procedure D1AmpEGB7Change(Sender: TObject);
    procedure D1AmpEGB8Change(Sender: TObject);
    procedure D1AmpEGBChange(Sender: TObject);
    procedure D1FXSend1Change(Sender: TObject);
    procedure D1FXSend2Change(Sender: TObject);
    procedure D1FXSend3Change(Sender: TObject);
    procedure D1FXSend4Change(Sender: TObject);
    procedure D1FXSend5Change(Sender: TObject);
    procedure D1FXSend6Change(Sender: TObject);
    procedure D1FXSend7Change(Sender: TObject);
    procedure D1FXSend8Change(Sender: TObject);
    procedure D1FXSendChange(Sender: TObject);
    procedure D1RollB1Change(Sender: TObject);
    procedure D1RollB2Change(Sender: TObject);
    procedure D1RollB3Change(Sender: TObject);
    procedure D1RollB4Change(Sender: TObject);
    procedure D1RollB5Change(Sender: TObject);
    procedure D1RollB6Change(Sender: TObject);
    procedure D1RollB7Change(Sender: TObject);
    procedure D1RollB8Change(Sender: TObject);
    procedure D1RollBChange(Sender: TObject);
    procedure DAccentTrigHoldBChange(Sender: TObject);
    procedure DriveSynth1Change(Sender: TObject);
    procedure DriveSynth2Change(Sender: TObject);
    procedure DriveSynth3Change(Sender: TObject);
    procedure DriveSynth4Change(Sender: TObject);
    procedure DriveSynth5Change(Sender: TObject);
    procedure EditPatternClick(Sender: TObject);
    procedure EGIntSynth1Change(Sender: TObject);
    procedure EGIntSynth2Change(Sender: TObject);
    procedure EGIntSynth3Change(Sender: TObject);
    procedure EGIntSynth4Change(Sender: TObject);
    procedure EGIntSynth5Change(Sender: TObject);
    procedure EGTimeSynth1Change(Sender: TObject);
    procedure EGTimeSynth2Change(Sender: TObject);
    procedure EGTimeSynth3Change(Sender: TObject);
    procedure EGTimeSynth4Change(Sender: TObject);
    procedure EGTimeSynth5Change(Sender: TObject);
    procedure FX1Parameter1Change(Sender: TObject);
    procedure FX1Parameter2Change(Sender: TObject);
    procedure FX1TrigHoldBChange(Sender: TObject);
    procedure FX2Parameter1Change(Sender: TObject);
    procedure FX2Parameter2Change(Sender: TObject);
    procedure FX2TrigHoldBChange(Sender: TObject);
    procedure FX3Parameter1Change(Sender: TObject);
    procedure FX3Parameter2Change(Sender: TObject);
    procedure FX3TrigHoldBChange(Sender: TObject);
    procedure FXSendSynth1Change(Sender: TObject);
    procedure FXSendSynth2Change(Sender: TObject);
    procedure FXSendSynth3Change(Sender: TObject);
    procedure FXSendSynth4Change(Sender: TObject);
    procedure FXSendSynth5Change(Sender: TObject);
    procedure GlideSynth1Change(Sender: TObject);
    procedure GlideSynth2Change(Sender: TObject);
    procedure GlideSynth3Change(Sender: TObject);
    procedure GlideSynth4Change(Sender: TObject);
    procedure GlideSynth5Change(Sender: TObject);
    procedure LDP1Click(Sender: TObject);
    procedure LDP2Click(Sender: TObject);
    procedure LDP3Click(Sender: TObject);
    procedure LDP4Click(Sender: TObject);
    procedure LDP5Click(Sender: TObject);
    procedure LDP6AClick(Sender: TObject);
    procedure LDP6BClick(Sender: TObject);
    procedure LDP7AClick(Sender: TObject);
    procedure LDP7BClick(Sender: TObject);
    procedure LDPS1Click(Sender: TObject);
    procedure LDPS2Click(Sender: TObject);
    procedure LDPS3Click(Sender: TObject);
    procedure LDPS4Click(Sender: TObject);
    procedure LDPS5Click(Sender: TObject);
    procedure LDPS6AClick(Sender: TObject);
    procedure LDPS6BClick(Sender: TObject);
    procedure LDPS7AClick(Sender: TObject);
    procedure LDPS7BClick(Sender: TObject);
    procedure LDS1Click(Sender: TObject);
    procedure LDS2Click(Sender: TObject);
    procedure LDS3Click(Sender: TObject);
    procedure LDS4Click(Sender: TObject);
    procedure LDS5Click(Sender: TObject);
    procedure LDS6AClick(Sender: TObject);
    procedure LDS6BClick(Sender: TObject);
    procedure LDS7AClick(Sender: TObject);
    procedure LDS7BClick(Sender: TObject);
    procedure LDSDSClick(Sender: TObject);
    procedure LDSSAClick(Sender: TObject);
    procedure LevelSynth1Change(Sender: TObject);
    procedure LevelSynth2Change(Sender: TObject);
    procedure LevelSynth3Change(Sender: TObject);
    procedure LevelSynth4Change(Sender: TObject);
    procedure LevelSynth5Change(Sender: TObject);
    procedure LSP1Click(Sender: TObject);
    procedure LSP2Click(Sender: TObject);
    procedure LSP3Click(Sender: TObject);
    procedure LSP4Click(Sender: TObject);
    procedure LSP5Click(Sender: TObject);
    procedure ModDepthSynth1Change(Sender: TObject);
    procedure ModDepthSynth2Change(Sender: TObject);
    procedure ModDepthSynth3Change(Sender: TObject);
    procedure ModDepthSynth4Change(Sender: TObject);
    procedure ModDepthSynth5Change(Sender: TObject);
    procedure ModSpeedSynth1Change(Sender: TObject);
    procedure ModSpeedSynth2Change(Sender: TObject);
    procedure ModSpeedSynth3Change(Sender: TObject);
    procedure ModSpeedSynth4Change(Sender: TObject);
    procedure ModSpeedSynth5Change(Sender: TObject);
    procedure OscEdit1Synth1Change(Sender: TObject);
    procedure OscEdit1Synth2Change(Sender: TObject);
    procedure OscEdit1Synth3Change(Sender: TObject);
    procedure OscEdit1Synth4Change(Sender: TObject);
    procedure OscEdit1Synth5Change(Sender: TObject);
    procedure OscEdit2Synth1Change(Sender: TObject);
    procedure OscEdit2Synth2Change(Sender: TObject);
    procedure OscEdit2Synth3Change(Sender: TObject);
    procedure OscEdit2Synth4Change(Sender: TObject);
    procedure OscEdit2Synth5Change(Sender: TObject);
    procedure PanSynth1Change(Sender: TObject);
    procedure PanSynth2Change(Sender: TObject);
    procedure PanSynth3Change(Sender: TObject);
    procedure PanSynth4Change(Sender: TObject);
    procedure PanSynth5Change(Sender: TObject);
    procedure PatternnameFldChange(Sender: TObject);
    procedure PatternnameFldEditingDone(Sender: TObject);
    procedure ResonanceSynth1Change(Sender: TObject);
    procedure ResonanceSynth2Change(Sender: TObject);
    procedure ResonanceSynth3Change(Sender: TObject);
    procedure ResonanceSynth4Change(Sender: TObject);
    procedure ResonanceSynth5Change(Sender: TObject);
    procedure RndSoundSynth2Click(Sender: TObject);
    procedure RndSoundSynth3Click(Sender: TObject);
    procedure RndSoundSynth4Click(Sender: TObject);
    procedure RndSoundSynth5Click(Sender: TObject);
    procedure RndSoundClick1(Sender: TObject);
    procedure RollSynth1Change(Sender: TObject);
    procedure RollSynth2Change(Sender: TObject);
    procedure RollSynth3Change(Sender: TObject);
    procedure RollSynth4Change(Sender: TObject);
    procedure RollSynth5Change(Sender: TObject);
    procedure SAccentTrigHoldBChange(Sender: TObject);
    //procedure SetupContextPopup(Sender: TObject; MousePos: TPoint;
    //  var Handled: Boolean);
    procedure SwinguEKnobChange(Sender: TObject);
    procedure SynthoscSynth1Change(Sender: TObject);
    procedure SynthoscSynth2Change(Sender: TObject);
    procedure SynthoscSynth3Change(Sender: TObject);
    procedure SynthoscSynth4Change(Sender: TObject);
    procedure SynthoscSynth5Change(Sender: TObject);
    procedure TempouEKnobChange(Sender: TObject);
    procedure TestClick(Sender: TObject);
    procedure TimeSignatureSelChange(Sender: TObject);
    procedure TreeView1SelectionChanged(Sender: TObject);
    procedure TuneSynth1Change(Sender: TObject);
    procedure D1EGTime4Change(Sender: TObject);
    procedure D1EGTime5Change(Sender: TObject);
    procedure D1EGTime6Change(Sender: TObject);
    procedure D1EGTime7Change(Sender: TObject);
    procedure D1EGTime8Change(Sender: TObject);
    procedure DALevelChange(Sender: TObject);
    procedure D1Level5Change(Sender: TObject);
    procedure D1Level6Change(Sender: TObject);
    procedure D1Level8Change(Sender: TObject);
    procedure D1Level7Change(Sender: TObject);
    procedure D1ModDepth3Change(Sender: TObject);
    procedure D1EGTime1Change(Sender: TObject);
    procedure D1EGTime2Change(Sender: TObject);
    procedure D1EGTime3Change(Sender: TObject);
    procedure D1EGTimeChange(Sender: TObject);
    procedure D1Level1Change(Sender: TObject);
    procedure D1Level2Change(Sender: TObject);
    procedure D1Level3Change(Sender: TObject);
    procedure D1Level4Change(Sender: TObject);
    procedure D1ModDepth1Change(Sender: TObject);
    procedure D1ModDepth2Change(Sender: TObject);
    procedure D1ModDepth4Change(Sender: TObject);
    procedure D1ModDepth5Change(Sender: TObject);
    procedure D1ModDepth6Change(Sender: TObject);
    procedure D1ModDepth7Change(Sender: TObject);
    procedure D1ModDepth8Change(Sender: TObject);
    procedure D1ModDepthChange(Sender: TObject);
    procedure D1LevelChange(Sender: TObject);
    procedure D1ModSpeed1Change(Sender: TObject);
    procedure D1ModSpeed2Change(Sender: TObject);
    procedure D1ModSpeed3Change(Sender: TObject);
    procedure D1ModSpeed4Change(Sender: TObject);
    procedure D1ModSpeed5Change(Sender: TObject);
    procedure D1ModSpeed6Change(Sender: TObject);
    procedure D1ModSpeed7Change(Sender: TObject);
    procedure D1ModSpeed8Change(Sender: TObject);
    procedure D1ModSpeedChange(Sender: TObject);
    procedure D1Pan1Change(Sender: TObject);
    procedure D1Pan2Change(Sender: TObject);
    procedure D1Pan3Change(Sender: TObject);
    procedure D1Pan4Change(Sender: TObject);
    procedure D1Pan5Change(Sender: TObject);
    procedure D1Pan6Change(Sender: TObject);
    procedure D1Pan7Change(Sender: TObject);
    procedure D1Pan8Change(Sender: TObject);
    procedure D1PanChange(Sender: TObject);
    procedure D1Pitch1Change(Sender: TObject);
    procedure D1Pitch2Change(Sender: TObject);
    procedure D1Pitch3Change(Sender: TObject);
    procedure D1Pitch4Change(Sender: TObject);
    procedure D1Pitch5Change(Sender: TObject);
    procedure D1Pitch6Change(Sender: TObject);
    procedure D1Pitch7Change(Sender: TObject);
    procedure D1Pitch8Change(Sender: TObject);
    procedure D1PitchChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure GlobalSettingsBClick(Sender: TObject);
    procedure LoadFileBClick(Sender: TObject);
    procedure MenuItem15Click(Sender: TObject);
    procedure MenuItem21Click(Sender: TObject);
    procedure SALevelChange(Sender: TObject);
    procedure SaveFileBClick(Sender: TObject);
    procedure TuneSynth2Change(Sender: TObject);
    procedure TuneSynth3Change(Sender: TObject);
    procedure TuneSynth4Change(Sender: TObject);
    procedure TuneSynth5Change(Sender: TObject);
    procedure WaveformSynth1Update();
    procedure WaveformSynth2Update();
    procedure WaveformSynth3Update();
    procedure WaveformSynth4Update();
    procedure WaveformSynth5Update();

    procedure LoadDrum1Parameter(Drumname: String; Patternname: String; Bankname: String; Filename: String);
    procedure LoadDrum2Parameter(Drumname: String;Patternname: String;Bankname: String;Filename: String);
    procedure LoadDrum3Parameter(Drumname: String;Patternname: String;Bankname: String;Filename: String);
    procedure LoadDrum4Parameter(Drumname: String;Patternname: String;Bankname: String;Filename: String);
    procedure LoadDrum5Parameter(Drumname: String;Patternname: String;Bankname: String;Filename: String);
    procedure LoadDrum6AParameter(Drumname: String;Patternname: String;Bankname: String;Filename: String);
    procedure LoadDrum6BParameter(Drumname: String;Patternname: String;Bankname: String;Filename: String);
    procedure LoadDrum7AParameter(Drumname: String;Patternname: String;Bankname: String;Filename: String);
    procedure LoadDrum7BParameter(Drumname: String;Patternname: String;Bankname: String;Filename: String);
    procedure LoadDrum1Sequence(Drumname: String;Patternname: String;Bankname: String;Filename: String);
    procedure LoadDrum2Sequence(Drumname: String;Patternname: String;Bankname: String;Filename: String);
    procedure LoadDrum3Sequence(Drumname: String;Patternname: String;Bankname: String;Filename: String);
    procedure LoadDrum4Sequence(Drumname: String;Patternname: String;Bankname: String;Filename: String);
    procedure LoadDrum5Sequence(Drumname: String;Patternname: String;Bankname: String;Filename: String);
    procedure LoadDrum6ASequence(Drumname: String;Patternname: String;Bankname: String;Filename: String);
    procedure LoadDrum6BSequence(Drumname: String;Patternname: String;Bankname: String;Filename: String);
    procedure LoadDrum7ASequence(Drumname: String;Patternname: String;Bankname: String;Filename: String);
    procedure LoadDrum7BSequence(Drumname: String;Patternname: String;Bankname: String;Filename: String);
    procedure LoadDrumAccentSequence(Drumname: String;Patternname: String;Bankname: String;Filename: String);
    procedure LoadSynthAccentSequence(Drumname: String;Patternname: String;Bankname: String;Filename: String);
    procedure LoadSynth1Parameter(Synthname : String;Patternname : String;Bankname : String;Filename : String);
    procedure LoadSynth2Parameter(Synthname : String;Patternname : String;Bankname : String;Filename : String);
    procedure LoadSynth3Parameter(Synthname : String;Patternname : String;Bankname : String;Filename : String);
    procedure LoadSynth4Parameter(Synthname : String;Patternname : String;Bankname : String;Filename : String);
    procedure LoadSynth5Parameter(Synthname : String;Patternname : String;Bankname : String;Filename : String);
    //procedure LoadSynthSequence(Synthname : String;Patternname : String;Bankname : String;Filename : String);
    //procedure LoadSynth2Sequence();
    //procedure LoadSynth3Sequence();
    //procedure LoadSynth4Sequence();
    //procedure LoadSynth5Sequence();
    procedure LoadPatternSettings(Patternname : String;Bankname : String;Filename : String);

    procedure SaveDrum1Parameter(patternbase : Integer);
    procedure SaveDrum2Parameter(patternbase : Integer);
    procedure SaveDrum3Parameter(patternbase : Integer);
    procedure SaveDrum4Parameter(patternbase : Integer);
    procedure SaveDrum5Parameter(patternbase : Integer);
    procedure SaveDrum6AParameter(patternbase : Integer);
    procedure SaveDrum6BParameter(patternbase : Integer);
    procedure SaveDrum7AParameter(patternbase : Integer);
    procedure SaveDrum7BParameter(patternbase : Integer);
    procedure SaveDrum1Sequence(patternbase : Integer);
    procedure SaveDrum2Sequence(patternbase : Integer);
    procedure SaveDrum3Sequence(patternbase : Integer);
    procedure SaveDrum4Sequence(patternbase : Integer);
    procedure SaveDrum5Sequence(patternbase : Integer);
    procedure SaveDrum6ASequence(patternbase : Integer);
    procedure SaveDrum6BSequence(patternbase : Integer);
    procedure SaveDrum7ASequence(patternbase : Integer);
    procedure SaveDrum7BSequence(patternbase : Integer);
    procedure SaveDrumAccentSequence(patternbase : Integer);
    procedure SaveSynthAccentSequence(patternbase : Integer);
    procedure SaveSynth1Parameter(patternbase : Integer);
    procedure SaveSynth2Parameter(patternbase : Integer);
    procedure SaveSynth3Parameter(patternbase : Integer);
    procedure SaveSynth4Parameter(patternbase : Integer);
    procedure SaveSynth5Parameter(patternbase : Integer);
    //procedure SaveSynthSequence(patternbase : Integer);
    //procedure SaveSynth2Sequence();
    //procedure SaveSynth3Sequence();
    //procedure SaveSynth4Sequence();
    //procedure SaveSynth5Sequence();
    procedure SavePatternSettings(patternbase : Integer);

    procedure CheckDrum1Parameter(patternbase : Integer);
    procedure CheckDrum2Parameter(patternbase : Integer);
    procedure CheckDrum3Parameter(patternbase : Integer);
    procedure CheckDrum4Parameter(patternbase : Integer);
    procedure CheckDrum5Parameter(patternbase : Integer);
    procedure CheckDrum6AParameter(patternbase : Integer);
    procedure CheckDrum6BParameter(patternbase : Integer);
    procedure CheckDrum7AParameter(patternbase : Integer);
    procedure CheckDrum7BParameter(patternbase : Integer);
    procedure CheckDrum1Sequence(patternbase : Integer);
    procedure CheckDrum2Sequence(patternbase : Integer);
    procedure CheckDrum3Sequence(patternbase : Integer);
    procedure CheckDrum4Sequence(patternbase : Integer);
    procedure CheckDrum5Sequence(patternbase : Integer);
    procedure CheckDrum6ASequence(patternbase : Integer);
    procedure CheckDrum6BSequence(patternbase : Integer);
    procedure CheckDrum7ASequence(patternbase : Integer);
    procedure CheckDrum7BSequence(patternbase : Integer);
    procedure CheckDrumAccentSequence(patternbase : Integer);
    procedure CheckSynthAccentSequence(patternbase : Integer);
    procedure CheckSynth1Parameter(patternbase : Integer);
    procedure CheckSynth2Parameter(patternbase : Integer);
    procedure CheckSynth3Parameter(patternbase : Integer);
    procedure CheckSynth4Parameter(patternbase : Integer);
    procedure CheckSynth5Parameter(patternbase : Integer);
    //procedure CheckSynthSequence(patternbase : Integer);
    //procedure CheckSynth2Sequence();
    //procedure CheckSynth3Sequence();
    //procedure CheckSynth4Sequence();
    //procedure CheckSynth5Sequence();
    procedure CheckPatternSettings(patternbase : Integer);

    procedure LoadEMX();

  private
    { private declarations }
  public
    { public declarations }
  Var
     filename : string;
     Protect: Integer;
     Mastertune: Integer;
     Arpcontrol: Integer;
     Errorcode: String;
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
     DLevel : Integer;
     DPan : Integer;
     DEGTime : Integer;
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
     PatternpartSynthString : string;
     GateTimeB : Integer;
     Gatetime : Real;
     EGTime : Integer;
     Bit0 : Boolean;
     Bit1 : Boolean;
     Bit2 : Boolean;
     Bit3 : Boolean;
     Bit4 : Boolean;
     Bit5 : Boolean;
     Bit6 : Boolean;
     Bit7 : Boolean;
     SelectedFX : Integer;
     FXParameter1 : Integer;
     FXParameter2 : Integer;
     FX1MotionSeq : Integer;
     OperationNo : Word;
     MotionSequenceB : Integer;
     MotionSequence : string;
     Songbase : integer;
     TempoLock: Integer;
     Songlength: Integer;
     MuteHold: Integer;
     NextSong: Integer;
     Eventnumbers: Word;
     PatternNumber: Integer;
     PatternString: String;
     NoteOffset: Integer;
     Getbit: Boolean;
     NoteD:Integer;
     NtlngD:Integer;
  end;

var
  MainForm: TMainForm;

implementation

{$R *.lfm}

{ TMainForm }





function HEXFN (decimal : word) : string;
const hexDigit : array [0..15] of char = '0123456789ABCDEF';
  begin
    hexfn := hexDigit[(decimal shr 12)]
          + hexDigit[(decimal shr 8) and $0F]
          + hexDigit[(decimal shr 4) and $0F]
          + hexDigit[(decimal and $0F)];
  end;  (* hexfn *)
function BoolToInt( b: Boolean): Integer;
begin
    if b then result := 1 else result := 0;
end;

function right(txt:String; len:integer): String;
begin
  right := Copy(txt,Length(txt)-len+1,len)
end;




procedure TMainForm.LoadFileBClick(Sender: TObject);
begin
  LoadEMX();
end;

procedure TMainForm.MenuItem15Click(Sender: TObject);
begin
  LoadEMX();
end;

procedure TMainForm.MenuItem21Click(Sender: TObject);
begin
  close;
end;



procedure TMainForm.GlobalSettingsBClick(Sender: TObject);
begin
  close;
end;

procedure TMainForm.FormCreate(Sender: TObject);
Var
i:Integer;

begin
For i:=1 to 207 do begin
    D1Sample.AddItem(Samplename(i),Nil);
end;
D1Sample1.Items := D1Sample.Items;
D1Sample2.Items := D1Sample.Items;
D1Sample3.Items := D1Sample.Items;
D1Sample4.Items := D1Sample.Items;
D1Sample5.Items := D1Sample.Items;
D1Sample6.Items := D1Sample.Items;
D1Sample7.Items := D1Sample.Items;
D1Sample8.Items := D1Sample.Items;
D1Sample.ItemIndex:=1;
D1Sample1.ItemIndex:=1;
D1Sample2.ItemIndex:=1;
D1Sample3.ItemIndex:=1;
D1Sample4.ItemIndex:=1;
D1Sample5.ItemIndex:=1;
D1Sample6.ItemIndex:=1;
D1Sample7.ItemIndex:=1;
D1Sample8.ItemIndex:=1;
For i:=0 to 127 do begin
    ArpCenterNoteCombobox.AddItem(Notestring(i),Nil);
end;
ArpCenterNoteCombobox.ItemIndex:=81;
EditPattern.Enabled:=false;
LDPS.Enabled:=false;
LDP.Enabled:=false;
LDS.Enabled:=false;
LSP.Enabled:=false;
LSS.enabled:=false;
EditPattern.Visible:=false;
LDPS.Visible:=false;
LDP.Visible:=false;
LDS.Visible:=false;
LSP.Visible:=false;
LSS.Visible:=false;
PatternlengthSel.Index :=7;
if not (FileExists('clean.EMX')) then ShowMessage('Please copy the File: clean.EMX in the same directory of EMX.exe');

end;


procedure TMainForm.D1LevelChange(Sender: TObject);
begin
   D1LevelV.text := FloatToStr(round(D1Level.Position));
end;

procedure TMainForm.D1ModSpeed1Change(Sender: TObject);
begin
  D1ModSpeedV1.text := FloatToStr(round(D1ModSpeed1.Position));
end;

procedure TMainForm.D1ModSpeed2Change(Sender: TObject);
begin
  D1ModSpeedV2.text := FloatToStr(round(D1ModSpeed2.Position));
end;

procedure TMainForm.D1ModSpeed3Change(Sender: TObject);
begin
  D1ModSpeedV3.text := FloatToStr(round(D1ModSpeed3.Position));
end;

procedure TMainForm.D1ModSpeed4Change(Sender: TObject);
begin
  D1ModSpeedV4.text := FloatToStr(round(D1ModSpeed4.Position));
end;

procedure TMainForm.D1ModSpeed5Change(Sender: TObject);
begin
  D1ModSpeedV5.text := FloatToStr(round(D1ModSpeed5.Position));
end;

procedure TMainForm.D1ModSpeed6Change(Sender: TObject);
begin
  D1ModSpeedV6.text := FloatToStr(round(D1ModSpeed6.Position));
end;

procedure TMainForm.D1ModSpeed7Change(Sender: TObject);
begin
  D1ModSpeedV7.text := FloatToStr(round(D1ModSpeed7.Position));
end;

procedure TMainForm.D1ModSpeed8Change(Sender: TObject);
begin
  D1ModSpeedV8.text := FloatToStr(round(D1ModSpeed8.Position));
end;

procedure TMainForm.D1ModSpeedChange(Sender: TObject);
begin
  D1ModSpeedV.text := FloatToStr(round(D1ModSpeed.Position));
end;

procedure TMainForm.D1Pan1Change(Sender: TObject);
begin
   D1PanV1.text := FloatToStr(round(D1Pan1.Position));
end;

procedure TMainForm.D1Pan2Change(Sender: TObject);
begin
   D1PanV2.text := FloatToStr(round(D1Pan2.Position));
end;

procedure TMainForm.D1Pan3Change(Sender: TObject);
begin
   D1PanV3.text := FloatToStr(round(D1Pan3.Position));
end;

procedure TMainForm.D1Pan4Change(Sender: TObject);
begin
  D1PanV4.text := FloatToStr(round(D1Pan4.Position));
end;

procedure TMainForm.D1Pan5Change(Sender: TObject);
begin
  D1PanV5.text := FloatToStr(round(D1Pan5.Position));
end;

procedure TMainForm.D1Pan6Change(Sender: TObject);
begin
  D1PanV6.text := FloatToStr(round(D1Pan6.Position));
end;

procedure TMainForm.D1Pan7Change(Sender: TObject);
begin
  D1PanV7.text := FloatToStr(round(D1Pan7.Position));
end;

procedure TMainForm.D1Pan8Change(Sender: TObject);
begin
  D1PanV8.text := FloatToStr(round(D1Pan8.Position));
end;

procedure TMainForm.D1EGTimeChange(Sender: TObject);
begin
   D1EGTimeV.text := FloatToStr(round(D1EGTime.Position));
end;

procedure TMainForm.D1EGTime1Change(Sender: TObject);
begin
   D1EGTimeV1.text := FloatToStr(round(D1EGTime1.Position));
end;

procedure TMainForm.D1ModDepth3Change(Sender: TObject);
begin
   D1ModDepthV3.text := FloatToStr(round(D1ModDepth3.Position));
end;

procedure TMainForm.D1EGTime4Change(Sender: TObject);
begin
  D1EGTimeV4.text := FloatToStr(round(D1EGTime4.Position));
end;

procedure TMainForm.LevelSynth1Change(Sender: TObject);
begin
 LevelVSynth1.text := FloatToStr(round(LevelSynth1.Position));
end;

procedure TMainForm.LevelSynth2Change(Sender: TObject);
begin
LevelVSynth2.text := FloatToStr(round(LevelSynth2.Position));
end;

procedure TMainForm.LevelSynth3Change(Sender: TObject);
begin
  LevelVSynth3.text := FloatToStr(round(LevelSynth3.Position));
end;

procedure TMainForm.LevelSynth4Change(Sender: TObject);
begin
  LevelVSynth4.text := FloatToStr(round(LevelSynth4.Position));
end;

procedure TMainForm.LevelSynth5Change(Sender: TObject);
begin
  LevelVSynth5.text := FloatToStr(round(LevelSynth5.Position));
end;

procedure TMainForm.LSP1Click(Sender: TObject);
var
  node:TTreeNode;
  node2:ttreeNode;
  node3:ttreeNode;
  Synthname:String;
  Bankname:string;
begin
  Node := TreeView1.Selected; //Which Synth ?
  Synthname := node.Text;
  node := node.Parent; //Patternname
  node2:= node.Parent; //Bank
  node3:= node2.Parent; //Filename
  Patternname := node.text;
  Bankname := Node2.text;
  filename := Node3.text;
  LoadSynth1Parameter(Synthname,Patternname,Bankname,Filename);
end;

procedure TMainForm.LSP2Click(Sender: TObject);
var
  node:TTreeNode;
  node2:ttreeNode;
  node3:ttreeNode;
  Synthname:String;
  Bankname:string;
begin
  Node := TreeView1.Selected; //Which Synth ?
  Synthname := node.Text;
  node := node.Parent; //Patternname
  node2:= node.Parent; //Bank
  node3:= node2.Parent; //Filename
  Patternname := node.text;
  Bankname := Node2.text;
  filename := Node3.text;
  LoadSynth2Parameter(Synthname,Patternname,Bankname,Filename);
end;

procedure TMainForm.LSP3Click(Sender: TObject);
var
  node:TTreeNode;
  node2:ttreeNode;
  node3:ttreeNode;
  Synthname:String;
  Bankname:string;
begin
  Node := TreeView1.Selected; //Which Synth ?
  Synthname := node.Text;
  node := node.Parent; //Patternname
  node2:= node.Parent; //Bank
  node3:= node2.Parent; //Filename
  Patternname := node.text;
  Bankname := Node2.text;
  filename := Node3.text;
  LoadSynth3Parameter(Synthname,Patternname,Bankname,Filename);
end;

procedure TMainForm.LSP4Click(Sender: TObject);
var
  node:TTreeNode;
  node2:ttreeNode;
  node3:ttreeNode;
  Synthname:String;
  Bankname:string;
begin
  Node := TreeView1.Selected; //Which Synth ?
  Synthname := node.Text;
  node := node.Parent; //Patternname
  node2:= node.Parent; //Bank
  node3:= node2.Parent; //Filename
  Patternname := node.text;
  Bankname := Node2.text;
  filename := Node3.text;
  LoadSynth4Parameter(Synthname,Patternname,Bankname,Filename);
end;

procedure TMainForm.LSP5Click(Sender: TObject);
var
  node:TTreeNode;
  node2:ttreeNode;
  node3:ttreeNode;
  Synthname:String;
  Bankname:string;
begin
  Node := TreeView1.Selected; //Which Synth ?
  Synthname := node.Text;
  node := node.Parent; //Patternname
  node2:= node.Parent; //Bank
  node3:= node2.Parent; //Filename
  Patternname := node.text;
  Bankname := Node2.text;
  filename := Node3.text;
  LoadSynth5Parameter(Synthname,Patternname,Bankname,Filename);
end;

procedure TMainForm.ModDepthSynth1Change(Sender: TObject);
begin
  ModDepthVSynth1.text := FloatToStr(round(ModDepthSynth1.Position));
end;

procedure TMainForm.ModDepthSynth2Change(Sender: TObject);
begin
  ModDepthVSynth2.text := FloatToStr(round(ModDepthSynth2.Position));
end;

procedure TMainForm.ModDepthSynth3Change(Sender: TObject);
begin
  ModDepthVSynth3.text := FloatToStr(round(ModDepthSynth3.Position));
end;

procedure TMainForm.ModDepthSynth4Change(Sender: TObject);
begin
  ModDepthVSynth4.text := FloatToStr(round(ModDepthSynth4.Position));
end;

procedure TMainForm.ModDepthSynth5Change(Sender: TObject);
begin
  ModDepthVSynth5.text := FloatToStr(round(ModDepthSynth5.Position));
end;

procedure TMainForm.ModSpeedSynth1Change(Sender: TObject);
begin
  ModSpeedVSynth1.text := FloatToStr(round(ModSpeedSynth1.Position));
end;

procedure TMainForm.ModSpeedSynth2Change(Sender: TObject);
begin
  ModSpeedVSynth2.text := FloatToStr(round(ModSpeedSynth2.Position));
end;

procedure TMainForm.ModSpeedSynth3Change(Sender: TObject);
begin
  ModSpeedVSynth3.text := FloatToStr(round(ModSpeedSynth3.Position));
end;

procedure TMainForm.ModSpeedSynth4Change(Sender: TObject);
begin
  ModSpeedVSynth4.text := FloatToStr(round(ModSpeedSynth4.Position));
end;

procedure TMainForm.ModSpeedSynth5Change(Sender: TObject);
begin
  ModSpeedVSynth5.text := FloatToStr(round(ModSpeedSynth5.Position));
end;

procedure TMainForm.OscEdit1Synth1Change(Sender: TObject);
begin
  OscEdit1VSynth1.text := FloatToStr(round(OscEdit1Synth1.Position));
end;

procedure TMainForm.OscEdit1Synth2Change(Sender: TObject);
begin
  OscEdit1VSynth2.text := FloatToStr(round(OscEdit1Synth2.Position));
end;

procedure TMainForm.OscEdit1Synth3Change(Sender: TObject);
begin
  OscEdit1VSynth3.text := FloatToStr(round(OscEdit1Synth3.Position));
end;

procedure TMainForm.OscEdit1Synth4Change(Sender: TObject);
begin
  OscEdit1VSynth4.text := FloatToStr(round(OscEdit1Synth4.Position));
end;

procedure TMainForm.OscEdit1Synth5Change(Sender: TObject);
begin
  OscEdit1VSynth5.text := FloatToStr(round(OscEdit1Synth5.Position));
end;

procedure TMainForm.OscEdit2Synth1Change(Sender: TObject);
begin
  OscEdit2VSynth1.text := FloatToStr(round(OscEdit2Synth1.Position));
end;

procedure TMainForm.OscEdit2Synth2Change(Sender: TObject);
begin
  OscEdit2VSynth2.text := FloatToStr(round(OscEdit2Synth2.Position));
end;

procedure TMainForm.OscEdit2Synth3Change(Sender: TObject);
begin
  OscEdit2VSynth3.text := FloatToStr(round(OscEdit2Synth3.Position));
end;

procedure TMainForm.OscEdit2Synth4Change(Sender: TObject);
begin
  OscEdit2VSynth4.text := FloatToStr(round(OscEdit2Synth4.Position));
end;

procedure TMainForm.OscEdit2Synth5Change(Sender: TObject);
begin
  OscEdit2VSynth5.text := FloatToStr(round(OscEdit2Synth5.Position));
end;

procedure TMainForm.EGTimeSynth1Change(Sender: TObject);
begin
  EGTimeVSynth1.text := FloatToStr(round(EGTimeSynth1.Position));
end;

procedure TMainForm.EGTimeSynth2Change(Sender: TObject);
begin
  EGTimeVSynth2.text := FloatToStr(round(EGTimeSynth2.Position));
end;

procedure TMainForm.EGTimeSynth3Change(Sender: TObject);
begin
  EGTimeVSynth3.text := FloatToStr(round(EGTimeSynth3.Position));
end;

procedure TMainForm.EGTimeSynth4Change(Sender: TObject);
begin
  EGTimeVSynth4.text := FloatToStr(round(EGTimeSynth4.Position));
end;

procedure TMainForm.EGTimeSynth5Change(Sender: TObject);
begin
  EGTimeVSynth5.text := FloatToStr(round(EGTimeSynth5.Position));
end;

procedure TMainForm.FX1Parameter1Change(Sender: TObject);
begin
  FX1VParameter1.text := FloatToStr(round(FX1Parameter1.Position));
end;

procedure TMainForm.FX1Parameter2Change(Sender: TObject);
begin
  FX1VParameter2.text := FloatToStr(round(FX1Parameter2.Position));
end;

procedure TMainForm.FX1TrigHoldBChange(Sender: TObject);
begin
  If (FX1TrigHoldB.State=cbUnchecked) then
     FX1TrigHoldLED.Color:=clsilver
  Else
     FX1TrigHoldLED.Color:=$004080FF;
end;

procedure TMainForm.FX2Parameter1Change(Sender: TObject);
begin
  FX2VParameter1.text := FloatToStr(round(FX2Parameter1.Position));
end;

procedure TMainForm.FX2Parameter2Change(Sender: TObject);
begin
  FX2VParameter2.text := FloatToStr(round(FX2Parameter2.Position));
end;

procedure TMainForm.FX2TrigHoldBChange(Sender: TObject);
begin
  If (FX2TrigHoldB.State=cbUnchecked) then
     FX2TrigHoldLED.Color:=clsilver
  Else
     FX2TrigHoldLED.Color:=$004080FF;
end;

procedure TMainForm.FX3Parameter1Change(Sender: TObject);
begin
  FX3VParameter1.text := FloatToStr(round(FX3Parameter1.Position));
end;

procedure TMainForm.FX3Parameter2Change(Sender: TObject);
begin
  FX3VParameter2.text := FloatToStr(round(FX3Parameter2.Position));
end;

procedure TMainForm.FX3TrigHoldBChange(Sender: TObject);
begin
  If (FX3TrigHoldB.State=cbUnchecked) then
     FX3TrigHoldLED.Color:=clsilver
  Else
     FX3TrigHoldLED.Color:=$004080FF;
end;


procedure TMainForm.FXSendSynth1Change(Sender: TObject);
begin
If (FXSendSynth1.state=cbUnchecked) then begin
     FXSendSynth1.Caption:='FX Send Off';
  end
  Else begin
      FXSendSynth1.Caption:='FX Send On';
  end;
end;

procedure TMainForm.FXSendSynth2Change(Sender: TObject);
begin
    If (FXSendSynth2.state=cbUnchecked) then begin
     FXSendSynth2.Caption:='FX Send Off';
  end
  Else begin
      FXSendSynth2.Caption:='FX Send On';
  end;
end;

procedure TMainForm.FXSendSynth3Change(Sender: TObject);
begin
If (FXSendSynth3.state=cbUnchecked) then begin
     FXSendSynth3.Caption:='FX Send Off';
  end
  Else begin
      FXSendSynth3.Caption:='FX Send On';
  end;
end;

procedure TMainForm.FXSendSynth4Change(Sender: TObject);
begin
If (FXSendSynth4.state=cbUnchecked) then begin
     FXSendSynth4.Caption:='FX Send Off';
  end
  Else begin
      FXSendSynth4.Caption:='FX Send On';
  end;
end;

procedure TMainForm.FXSendSynth5Change(Sender: TObject);
begin
If (FXSendSynth5.state=cbUnchecked) then begin
     FXSendSynth5.Caption:='FX Send Off';
  end
  Else begin
      FXSendSynth5.Caption:='FX Send On';
  end;
end;

procedure TMainForm.CutoffSynth1Change(Sender: TObject);
begin
  CutoffVSynth1.text := FloatToStr(round(CutoffSynth1.Position));
end;

procedure TMainForm.CutoffSynth2Change(Sender: TObject);
begin
  CutoffVSynth2.text := FloatToStr(round(CutoffSynth2.Position));
end;

procedure TMainForm.CutoffSynth3Change(Sender: TObject);
begin
  CutoffVSynth3.text := FloatToStr(round(CutoffSynth3.Position));
end;

procedure TMainForm.CutoffSynth4Change(Sender: TObject);
begin
  CutoffVSynth4.text := FloatToStr(round(CutoffSynth4.Position));
end;

procedure TMainForm.CutoffSynth5Change(Sender: TObject);
begin
  CutoffVSynth5.text := FloatToStr(round(CutoffSynth5.Position));
end;

procedure TMainForm.AmpEGSynth1Change(Sender: TObject);
begin
  If (AmpEGSynth1.state=cbUnchecked) then begin
     EnvLED2_S1.Color := $004080FF;
     EnvLED1_S1.Color := clSilver;
  end
  Else begin
      EnvLED2_S1.Color := clSilver;
      EnvLED1_S1.Color := $004080FF;
  end;
end;

procedure TMainForm.AmpEGSynth2Change(Sender: TObject);
begin
    If (AmpEGSynth2.state=cbUnchecked) then begin
     EnvLED2_S2.Color := $004080FF;
     EnvLED1_S2.Color := clSilver;
  end
  Else begin
      EnvLED2_S2.Color := clSilver;
      EnvLED1_S2.Color := $004080FF;
  end;
end;

procedure TMainForm.AmpEGSynth3Change(Sender: TObject);
begin
  If (AmpEGSynth3.state=cbUnchecked) then begin
     EnvLED2_S3.Color := $004080FF;
     EnvLED1_S3.Color := clSilver;
  end
  Else begin
      EnvLED2_S3.Color := clSilver;
      EnvLED1_S3.Color := $004080FF;
  end;
end;

procedure TMainForm.AmpEGSynth4Change(Sender: TObject);
begin
  If (AmpEGSynth4.state=cbUnchecked) then begin
     EnvLED2_S4.Color := $004080FF;
     EnvLED1_S4.Color := clSilver;
  end
  Else begin
      EnvLED2_S4.Color := clSilver;
      EnvLED1_S4.Color := $004080FF;
  end;
end;

procedure TMainForm.AmpEGSynth5Change(Sender: TObject);
begin
  If (AmpEGSynth5.state=cbUnchecked) then begin
     EnvLED2_S5.Color := $004080FF;
     EnvLED1_S5.Color := clSilver;
  end
  Else begin
      EnvLED2_S5.Color := clSilver;
      EnvLED1_S5.Color := $004080FF;
  end;
end;



procedure TMainForm.BPMSyncSynth1Change(Sender: TObject);
begin
  If (BPMSyncSynth1.state=cbUnchecked) then begin
     BPMSyncSynth1.Caption:='BPM Sync Off';
  end
  Else begin
      BPMSyncSynth1.Caption:='BPM Sync On';
  end;
end;

procedure TMainForm.BPMSyncSynth2Change(Sender: TObject);
begin
  If (BPMSyncSynth2.state=cbUnchecked) then begin
     BPMSyncSynth2.Caption:='BPM Sync Off';
  end
  Else begin
      BPMSyncSynth2.Caption:='BPM Sync On';
  end;
end;

procedure TMainForm.BPMSyncSynth3Change(Sender: TObject);
begin
  If (BPMSyncSynth3.state=cbUnchecked) then begin
     BPMSyncSynth3.Caption:='BPM Sync Off';
  end
  Else begin
      BPMSyncSynth3.Caption:='BPM Sync On';
  end;
end;

procedure TMainForm.BPMSyncSynth4Change(Sender: TObject);
begin
  If (BPMSyncSynth4.state=cbUnchecked) then begin
     BPMSyncSynth4.Caption:='BPM Sync Off';
  end
  Else begin
      BPMSyncSynth4.Caption:='BPM Sync On';
  end;
end;

procedure TMainForm.BPMSyncSynth5Change(Sender: TObject);
begin
  If (BPMSyncSynth5.state=cbUnchecked) then begin
     BPMSyncSynth5.Caption:='BPM Sync Off';
  end
  Else begin
      BPMSyncSynth5.Caption:='BPM Sync On';
  end;
end;


procedure TMainForm.D1AmpEGB1Change(Sender: TObject);
begin
  If (D1AmpEGB1.state=cbUnchecked) then begin
     EnvLED2_2.Color := $004080FF;
     EnvLED1_2.Color := clSilver;
  end
  Else begin
      EnvLED2_2.Color := clSilver;
      EnvLED1_2.Color := $004080FF;
  end;
end;

procedure TMainForm.D1AmpEGB2Change(Sender: TObject);
begin
  If (D1AmpEGB2.state=cbUnchecked) then begin
     EnvLED2_3.Color := $004080FF;
     EnvLED1_3.Color := clSilver;
  end
  Else begin
      EnvLED2_3.Color := clSilver;
      EnvLED1_3.Color := $004080FF;
  end;
end;

procedure TMainForm.D1AmpEGB3Change(Sender: TObject);
begin
  If (D1AmpEGB3.state=cbUnchecked) then begin
     EnvLED2_4.Color := $004080FF;
     EnvLED1_4.Color := clSilver;
  end
  Else begin
      EnvLED2_4.Color := clSilver;
      EnvLED1_4.Color := $004080FF;
  end;
end;

procedure TMainForm.D1AmpEGB4Change(Sender: TObject);
begin
  If (D1AmpEGB4.state=cbUnchecked) then begin
     EnvLED2_5.Color := $004080FF;
     EnvLED1_5.Color := clSilver;
  end
  Else begin
      EnvLED2_5.Color := clSilver;
      EnvLED1_5.Color := $004080FF;
  end;
end;

procedure TMainForm.D1AmpEGB5Change(Sender: TObject);
begin
  If (D1AmpEGB5.state=cbUnchecked) then begin
     EnvLED2_6.Color := $004080FF;
     EnvLED1_6.Color := clSilver;
  end
  Else begin
      EnvLED2_6.Color := clSilver;
      EnvLED1_6.Color := $004080FF;
  end;
end;

procedure TMainForm.D1AmpEGB6Change(Sender: TObject);
begin
  If (D1AmpEGB6.state=cbUnchecked) then begin
     EnvLED2_7.Color := $004080FF;
     EnvLED1_7.Color := clSilver;
  end
  Else begin
      EnvLED2_7.Color := clSilver;
      EnvLED1_7.Color := $004080FF;
  end;
end;

procedure TMainForm.D1AmpEGB7Change(Sender: TObject);
begin
  If (D1AmpEGB7.state=cbUnchecked) then begin
     EnvLED2_8.Color := $004080FF;
     EnvLED1_8.Color := clSilver;
  end
  Else begin
      EnvLED2_8.Color := clSilver;
      EnvLED1_8.Color := $004080FF;
  end;
end;

procedure TMainForm.D1AmpEGB8Change(Sender: TObject);
begin
  If (D1AmpEGB8.state=cbUnchecked) then begin
     EnvLED2_9.Color := $004080FF;
     EnvLED1_9.Color := clSilver;
  end
  Else begin
      EnvLED2_9.Color := clSilver;
      EnvLED1_9.Color := $004080FF;
  end;
end;

procedure TMainForm.D1AmpEGBChange(Sender: TObject);
begin
  If (D1AmpEGB.state=cbUnchecked) then begin
     EnvLED2_1.Color := $004080FF;
     EnvLED1_1.Color := clSilver;
  end
  Else begin
      EnvLED2_1.Color := clSilver;
      EnvLED1_1.Color := $004080FF;
  end;
end;

procedure TMainForm.D1FXSend1Change(Sender: TObject);
begin
  If (D1FXSend1.state=cbUnchecked) then begin
     D1FXSend1.Caption:='FX Send Off';
  end
  Else begin
      D1FXSend1.Caption:='FX Send On';
  end;
end;

procedure TMainForm.D1FXSend2Change(Sender: TObject);
begin
  If (D1FXSend2.state=cbUnchecked) then begin
     D1FXSend2.Caption:='FX Send Off';
  end
  Else begin
      D1FXSend2.Caption:='FX Send On';
  end;
end;

procedure TMainForm.D1FXSend3Change(Sender: TObject);
begin
  If (D1FXSend3.state=cbUnchecked) then begin
     D1FXSend3.Caption:='FX Send Off';
  end
  Else begin
      D1FXSend3.Caption:='FX Send On';
  end;
end;

procedure TMainForm.D1FXSend4Change(Sender: TObject);
begin
  If (D1FXSend4.state=cbUnchecked) then begin
     D1FXSend4.Caption:='FX Send Off';
  end
  Else begin
      D1FXSend4.Caption:='FX Send On';
  end;
end;

procedure TMainForm.D1FXSend5Change(Sender: TObject);
begin
  If (D1FXSend5.state=cbUnchecked) then begin
     D1FXSend5.Caption:='FX Send Off';
  end
  Else begin
      D1FXSend5.Caption:='FX Send On';
  end;
end;

procedure TMainForm.D1FXSend6Change(Sender: TObject);
begin
  If (D1FXSend6.state=cbUnchecked) then begin
     D1FXSend6.Caption:='FX Send Off';
  end
  Else begin
      D1FXSend6.Caption:='FX Send On';
  end;
end;

procedure TMainForm.D1FXSend7Change(Sender: TObject);
begin
  If (D1FXSend7.state=cbUnchecked) then begin
     D1FXSend7.Caption:='FX Send Off';
  end
  Else begin
      D1FXSend7.Caption:='FX Send On';
  end;
end;

procedure TMainForm.D1FXSend8Change(Sender: TObject);
begin
  If (D1FXSend8.state=cbUnchecked) then begin
     D1FXSend8.Caption:='FX Send Off';
  end
  Else begin
      D1FXSend8.Caption:='FX Send On';
  end;
end;

procedure TMainForm.D1FXSendChange(Sender: TObject);
begin
  If (D1FXSend.state=cbUnchecked) then begin
     D1FXSend.Caption:='FX Send Off';
  end
  Else begin
      D1FXSend.Caption:='FX Send On';
  end;
end;

procedure TMainForm.D1RollB1Change(Sender: TObject);
begin
    If (D1RollB1.state=cbUnchecked) then begin
     D1RollB1.Caption:='Roll Off';
  end
  Else begin
      D1RollB1.Caption:='Roll On';
  end;
end;

procedure TMainForm.D1RollB2Change(Sender: TObject);
begin
    If (D1RollB2.state=cbUnchecked) then begin
     D1RollB2.Caption:='Roll Off';
  end
  Else begin
      D1RollB2.Caption:='Roll On';
  end;
end;

procedure TMainForm.D1RollB3Change(Sender: TObject);
begin
    If (D1RollB3.state=cbUnchecked) then begin
       D1RollB3.Caption:='Roll Off';
    end
    Else begin
        D1RollB3.Caption:='Roll On';
    end;
end;

procedure TMainForm.D1RollB4Change(Sender: TObject);
begin
    If (D1RollB4.state=cbUnchecked) then begin
       D1RollB4.Caption:='Roll Off';
    end
    Else begin
        D1RollB4.Caption:='Roll On';
    end;
end;

procedure TMainForm.D1RollB5Change(Sender: TObject);
begin
    If (D1RollB5.state=cbUnchecked) then begin
       D1RollB5.Caption:='Roll Off';
    end
    Else begin
        D1RollB5.Caption:='Roll On';
    end;
end;

procedure TMainForm.D1RollB6Change(Sender: TObject);
begin
    If (D1RollB6.state=cbUnchecked) then begin
       D1RollB6.Caption:='Roll Off';
    end
    Else begin
        D1RollB6.Caption:='Roll On';
    end;
end;

procedure TMainForm.D1RollB7Change(Sender: TObject);
begin
    If (D1RollB7.state=cbUnchecked) then begin
       D1RollB7.Caption:='Roll Off';
    end
    Else begin
        D1RollB7.Caption:='Roll On';
    end;
end;

procedure TMainForm.D1RollB8Change(Sender: TObject);
begin
    If (D1RollB8.state=cbUnchecked) then begin
       D1RollB8.Caption:='Roll Off';
    end
    Else begin
        D1RollB8.Caption:='Roll On';
    end;
end;

procedure TMainForm.D1RollBChange(Sender: TObject);
begin
  If (D1RollB.state=cbUnchecked) then begin
     D1RollB.Caption:='Roll Off';
  end
  Else begin
      D1RollB.Caption:='Roll On';
  end;
end;

procedure TMainForm.DAccentTrigHoldBChange(Sender: TObject);
begin
  If (DAccentTrigHoldB.state=cbUnchecked) then begin
     DAccentTrigHoldLED.Color := clSilver;
  end
  Else begin
     DAccentTrigHoldLED.Color := $004080FF;
  end;
end;

procedure TMainForm.DriveSynth1Change(Sender: TObject);
begin
  DriveVSynth1.text := FloatToStr(round(DriveSynth1.Position));
end;

procedure TMainForm.DriveSynth2Change(Sender: TObject);
begin
  DriveVSynth2.text := FloatToStr(round(DriveSynth2.Position));
end;

procedure TMainForm.DriveSynth3Change(Sender: TObject);
begin
  DriveVSynth3.text := FloatToStr(round(DriveSynth3.Position));
end;

procedure TMainForm.DriveSynth4Change(Sender: TObject);
begin
  DriveVSynth4.text := FloatToStr(round(DriveSynth4.Position));
end;

procedure TMainForm.DriveSynth5Change(Sender: TObject);
begin
  DriveVSynth5.text := FloatToStr(round(DriveSynth5.Position));
end;

procedure TMainForm.EditPatternClick(Sender: TObject);
Var
node:TTreeNode;
node2:ttreeNode;
node3:ttreeNode;
Bankname:string;
begin
node := TreeView1.Selected; //Patternname
node2:= node.Parent; //Bank
node3:= node2.Parent; //Filename
Patternname := node.text;
Bankname := Node2.text;
Filename := Node3.text;
LoadDrum1Parameter('Drum 1',Patternname,Bankname,Filename);
LoadDrum1Sequence('Drum 1',Patternname,Bankname,Filename);
LoadDrum2Parameter('Drum 2',Patternname,Bankname,Filename);
LoadDrum2Sequence('Drum 2',Patternname,Bankname,Filename);
LoadDrum3Parameter('Drum 3',Patternname,Bankname,Filename);
LoadDrum3Sequence('Drum 3',Patternname,Bankname,Filename);
LoadDrum4Parameter('Drum 4',Patternname,Bankname,Filename);
LoadDrum4Sequence('Drum 4',Patternname,Bankname,Filename);
LoadDrum5Parameter('Drum 5',Patternname,Bankname,Filename);
LoadDrum5Sequence('Drum 5',Patternname,Bankname,Filename);
LoadDrum6AParameter('Drum 6A',Patternname,Bankname,Filename);
LoadDrum6ASequence('Drum 6A',Patternname,Bankname,Filename);
LoadDrum6BParameter('Drum 6B',Patternname,Bankname,Filename);
LoadDrum6BSequence('Drum 6B',Patternname,Bankname,Filename);
LoadDrum7AParameter('Drum 7A',Patternname,Bankname,Filename);
LoadDrum7ASequence('Drum 7A',Patternname,Bankname,Filename);
LoadDrum7BParameter('Drum 7B',Patternname,Bankname,Filename);
LoadDrum7BSequence('Drum 7B',Patternname,Bankname,Filename);
LoadDrumAccentSequence('Drum Accent Sequence',Patternname,Bankname,Filename);
LoadSynthAccentSequence('Synth Accent Sequence',Patternname,Bankname,Filename);
LoadSynth1Parameter('Synth 1',Patternname,Bankname,Filename);
LoadSynth2Parameter('Synth 2',Patternname,Bankname,Filename);
LoadSynth3Parameter('Synth 3',Patternname,Bankname,Filename);
LoadSynth4Parameter('Synth 4',Patternname,Bankname,Filename);
LoadSynth5Parameter('Synth 5',Patternname,Bankname,Filename);
LoadPatternSettings(Patternname,Bankname,Filename);
//LoadSynthSequence('Synth 1',Patternname,Bankname,Filename);
end;

procedure TMainForm.EGIntSynth1Change(Sender: TObject);
begin
  EGIntVSynth1.text := FloatToStr(round(EGIntSynth1.Position));
end;

procedure TMainForm.EGIntSynth2Change(Sender: TObject);
begin
  EGIntVSynth2.text := FloatToStr(round(EGIntSynth2.Position));
end;

procedure TMainForm.EGIntSynth3Change(Sender: TObject);
begin
  EGIntVSynth3.text := FloatToStr(round(EGIntSynth3.Position));
end;

procedure TMainForm.EGIntSynth4Change(Sender: TObject);
begin
  EGIntVSynth4.text := FloatToStr(round(EGIntSynth4.Position));
end;

procedure TMainForm.EGIntSynth5Change(Sender: TObject);
begin
  EGIntVSynth5.text := FloatToStr(round(EGIntSynth5.Position));
end;

procedure TMainForm.GlideSynth1Change(Sender: TObject);
begin
  GlideVSynth1.text := FloatToStr(round(GlideSynth1.Position));
end;

procedure TMainForm.GlideSynth2Change(Sender: TObject);
begin
  GlideVSynth2.text := FloatToStr(round(GlideSynth2.Position));
end;

procedure TMainForm.GlideSynth3Change(Sender: TObject);
begin
  GlideVSynth3.text := FloatToStr(round(GlideSynth3.Position));
end;

procedure TMainForm.GlideSynth4Change(Sender: TObject);
begin
  GlideVSynth4.text := FloatToStr(round(GlideSynth4.Position));
end;

procedure TMainForm.GlideSynth5Change(Sender: TObject);
begin
  GlideVSynth5.text := FloatToStr(round(GlideSynth5.Position));
end;




procedure TMainForm.LDP1Click(Sender: TObject);
Var
node:TTreeNode;
node2:ttreeNode;
node3:ttreeNode;
Bankname:string;
Drumname:string;
begin
node := TreeView1.Selected; //Which Drum ?
Drumname := node.Text;
node := node.Parent; //Patternname
node2:= node.Parent; //Bank
node3:= node2.Parent; //Filename
Patternname := node.text;
Bankname := Node2.text;
Filename := Node3.text;
LoadDrum1Parameter(Drumname,Patternname,Bankname,Filename);
end;

procedure TMainForm.LDP2Click(Sender: TObject);
Var
node:TTreeNode;
node2:ttreeNode;
node3:ttreeNode;
Bankname:string;
Drumname:string;
begin
node := TreeView1.Selected; //Which Drum ?
Drumname := node.Text;
node := node.Parent; //Patternname
node2:= node.Parent; //Bank
node3:= node2.Parent; //Filename
Patternname := node.text;
Bankname := Node2.text;
Filename := Node3.text;
LoadDrum2Parameter(Drumname,Patternname,Bankname,Filename);
end;

procedure TMainForm.LDP3Click(Sender: TObject);
Var
node:TTreeNode;
node2:ttreeNode;
node3:ttreeNode;
Bankname:string;
Drumname:string;
begin
node := TreeView1.Selected; //Which Drum ?
Drumname := node.Text;
node := node.Parent; //Patternname
node2:= node.Parent; //Bank
node3:= node2.Parent; //Filename
Patternname := node.text;
Bankname := Node2.text;
Filename := Node3.text;
  LoadDrum3Parameter(Drumname,Patternname,Bankname,Filename);
end;

procedure TMainForm.LDP4Click(Sender: TObject);
Var
node:TTreeNode;
node2:ttreeNode;
node3:ttreeNode;
Bankname:string;
Drumname:string;
begin
node := TreeView1.Selected; //Which Drum ?
Drumname := node.Text;
node := node.Parent; //Patternname
node2:= node.Parent; //Bank
node3:= node2.Parent; //Filename
Patternname := node.text;
Bankname := Node2.text;
Filename := Node3.text;
  LoadDrum4Parameter(Drumname,Patternname,Bankname,Filename);
end;

procedure TMainForm.LDP5Click(Sender: TObject);
Var
node:TTreeNode;
node2:ttreeNode;
node3:ttreeNode;
Bankname:string;
Drumname:string;
begin
node := TreeView1.Selected; //Which Drum ?
Drumname := node.Text;
node := node.Parent; //Patternname
node2:= node.Parent; //Bank
node3:= node2.Parent; //Filename
Patternname := node.text;
Bankname := Node2.text;
Filename := Node3.text;
  LoadDrum5Parameter(Drumname,Patternname,Bankname,Filename);
end;

procedure TMainForm.LDP6AClick(Sender: TObject);
Var
node:TTreeNode;
node2:ttreeNode;
node3:ttreeNode;
Bankname:string;
Drumname:string;
begin
node := TreeView1.Selected; //Which Drum ?
Drumname := node.Text;
node := node.Parent; //Patternname
node2:= node.Parent; //Bank
node3:= node2.Parent; //Filename
Patternname := node.text;
Bankname := Node2.text;
Filename := Node3.text;
 LoadDrum6AParameter(Drumname,Patternname,Bankname,Filename);
end;

procedure TMainForm.LDP6BClick(Sender: TObject);
Var
node:TTreeNode;
node2:ttreeNode;
node3:ttreeNode;
Bankname:string;
Drumname:string;
begin
node := TreeView1.Selected; //Which Drum ?
Drumname := node.Text;
node := node.Parent; //Patternname
node2:= node.Parent; //Bank
node3:= node2.Parent; //Filename
Patternname := node.text;
Bankname := Node2.text;
Filename := Node3.text;
 LoadDrum6BParameter(Drumname,Patternname,Bankname,Filename);
end;

procedure TMainForm.LDP7AClick(Sender: TObject);
Var
node:TTreeNode;
node2:ttreeNode;
node3:ttreeNode;
Bankname:string;
Drumname:string;
begin
node := TreeView1.Selected; //Which Drum ?
Drumname := node.Text;
node := node.Parent; //Patternname
node2:= node.Parent; //Bank
node3:= node2.Parent; //Filename
Patternname := node.text;
Bankname := Node2.text;
Filename := Node3.text;
 LoadDrum7AParameter(Drumname,Patternname,Bankname,Filename);
end;

procedure TMainForm.LDP7BClick(Sender: TObject);
Var
node:TTreeNode;
node2:ttreeNode;
node3:ttreeNode;
Bankname:string;
Drumname:string;
begin
node := TreeView1.Selected; //Which Drum ?
Drumname := node.Text;
node := node.Parent; //Patternname
node2:= node.Parent; //Bank
node3:= node2.Parent; //Filename
Patternname := node.text;
Bankname := Node2.text;
Filename := Node3.text;
 LoadDrum7BParameter(Drumname,Patternname,Bankname,Filename);
end;

procedure TMainForm.LDPS1Click(Sender: TObject);
Var
node:TTreeNode;
node2:ttreeNode;
node3:ttreeNode;
Bankname:string;
Drumname:string;
begin
node := TreeView1.Selected; //Which Drum ?
Drumname := node.Text;
node := node.Parent; //Patternname
node2:= node.Parent; //Bank
node3:= node2.Parent; //Filename
Patternname := node.text;
Bankname := Node2.text;
Filename := Node3.text;
LoadDrum1Parameter(Drumname,Patternname,Bankname,Filename);
LoadDrum1Sequence(Drumname,Patternname,Bankname,Filename);
end;

procedure TMainForm.LDPS2Click(Sender: TObject);
Var
node:TTreeNode;
node2:ttreeNode;
node3:ttreeNode;
Bankname:string;
Drumname:string;
begin
node := TreeView1.Selected; //Which Drum ?
Drumname := node.Text;
node := node.Parent; //Patternname
node2:= node.Parent; //Bank
node3:= node2.Parent; //Filename
Patternname := node.text;
Bankname := Node2.text;
Filename := Node3.text;
LoadDrum2Parameter(Drumname,Patternname,Bankname,Filename);
LoadDrum2Sequence(Drumname,Patternname,Bankname,Filename);
end;

procedure TMainForm.LDPS3Click(Sender: TObject);
Var
node:TTreeNode;
node2:ttreeNode;
node3:ttreeNode;
Bankname:string;
Drumname:string;
begin
node := TreeView1.Selected; //Which Drum ?
Drumname := node.Text;
node := node.Parent; //Patternname
node2:= node.Parent; //Bank
node3:= node2.Parent; //Filename
Patternname := node.text;
Bankname := Node2.text;
Filename := Node3.text;
LoadDrum3Parameter(Drumname,Patternname,Bankname,Filename);
LoadDrum3Sequence(Drumname,Patternname,Bankname,Filename);
end;

procedure TMainForm.LDPS4Click(Sender: TObject);
Var
node:TTreeNode;
node2:ttreeNode;
node3:ttreeNode;
Bankname:string;
Drumname:string;
begin
node := TreeView1.Selected; //Which Drum ?
Drumname := node.Text;
node := node.Parent; //Patternname
node2:= node.Parent; //Bank
node3:= node2.Parent; //Filename
Patternname := node.text;
Bankname := Node2.text;
Filename := Node3.text;
LoadDrum4Parameter(Drumname,Patternname,Bankname,Filename);
LoadDrum4Sequence(Drumname,Patternname,Bankname,Filename);
end;

procedure TMainForm.LDPS5Click(Sender: TObject);
Var
node:TTreeNode;
node2:ttreeNode;
node3:ttreeNode;
Bankname:string;
Drumname:string;
begin
node := TreeView1.Selected; //Which Drum ?
Drumname := node.Text;
node := node.Parent; //Patternname
node2:= node.Parent; //Bank
node3:= node2.Parent; //Filename
Patternname := node.text;
Bankname := Node2.text;
Filename := Node3.text;
LoadDrum5Parameter(Drumname,Patternname,Bankname,Filename);
LoadDrum5Sequence(Drumname,Patternname,Bankname,Filename);
end;

procedure TMainForm.LDPS6AClick(Sender: TObject);
Var
node:TTreeNode;
node2:ttreeNode;
node3:ttreeNode;
Bankname:string;
Drumname:string;
begin
node := TreeView1.Selected; //Which Drum ?
Drumname := node.Text;
node := node.Parent; //Patternname
node2:= node.Parent; //Bank
node3:= node2.Parent; //Filename
Patternname := node.text;
Bankname := Node2.text;
Filename := Node3.text;
LoadDrum6BParameter(Drumname,Patternname,Bankname,Filename);
LoadDrum6BSequence(Drumname,Patternname,Bankname,Filename);
end;

procedure TMainForm.LDPS6BClick(Sender: TObject);
Var
node:TTreeNode;
node2:ttreeNode;
node3:ttreeNode;
Bankname:string;
Drumname:string;
begin
node := TreeView1.Selected; //Which Drum ?
Drumname := node.Text;
node := node.Parent; //Patternname
node2:= node.Parent; //Bank
node3:= node2.Parent; //Filename
Patternname := node.text;
Bankname := Node2.text;
Filename := Node3.text;
LoadDrum6BParameter(Drumname,Patternname,Bankname,Filename);
LoadDrum6BSequence(Drumname,Patternname,Bankname,Filename);
end;

procedure TMainForm.LDPS7AClick(Sender: TObject);
Var
node:TTreeNode;
node2:ttreeNode;
node3:ttreeNode;
Bankname:string;
Drumname:string;
begin
node := TreeView1.Selected; //Which Drum ?
Drumname := node.Text;
node := node.Parent; //Patternname
node2:= node.Parent; //Bank
node3:= node2.Parent; //Filename
Patternname := node.text;
Bankname := Node2.text;
Filename := Node3.text;
LoadDrum7AParameter(Drumname,Patternname,Bankname,Filename);
LoadDrum7ASequence(Drumname,Patternname,Bankname,Filename);
end;

procedure TMainForm.LDPS7BClick(Sender: TObject);
Var
node:TTreeNode;
node2:ttreeNode;
node3:ttreeNode;
Bankname:string;
Drumname:string;
begin
node := TreeView1.Selected; //Which Drum ?
Drumname := node.Text;
node := node.Parent; //Patternname
node2:= node.Parent; //Bank
node3:= node2.Parent; //Filename
Patternname := node.text;
Bankname := Node2.text;
Filename := Node3.text;
LoadDrum7BParameter(Drumname,Patternname,Bankname,Filename);
LoadDrum7BSequence(Drumname,Patternname,Bankname,Filename);
end;

procedure TMainForm.LDS1Click(Sender: TObject);
Var
node:TTreeNode;
node2:ttreeNode;
node3:ttreeNode;
Bankname:string;
Drumname:string;
begin
node := TreeView1.Selected; //Which Drum ?
node := node.Parent; //Drum
Drumname := node.Text;
node := node.Parent; //Patternname
node2:= node.Parent; //Bank
node3:= node2.Parent; //Filename
Patternname := node.text;
Bankname := Node2.text;
Filename := Node3.text;
 LoadDrum1Sequence(Drumname,Patternname,Bankname,Filename);
end;

procedure TMainForm.LDS2Click(Sender: TObject);
Var
node:TTreeNode;
node2:ttreeNode;
node3:ttreeNode;
Bankname:string;
Drumname:string;
begin
node := TreeView1.Selected; //Which Drum ?
node := node.Parent; //Drum
Drumname := node.Text;
node := node.Parent; //Patternname
node2:= node.Parent; //Bank
node3:= node2.Parent; //Filename
Patternname := node.text;
Bankname := Node2.text;
Filename := Node3.text;
 LoadDrum2Sequence(Drumname,Patternname,Bankname,Filename);
end;

procedure TMainForm.LDS3Click(Sender: TObject);
Var
node:TTreeNode;
node2:ttreeNode;
node3:ttreeNode;
Bankname:string;
Drumname:string;
begin
node := TreeView1.Selected; //Which Drum ?
node := node.Parent; //Drum
Drumname := node.Text;
node := node.Parent; //Patternname
node2:= node.Parent; //Bank
node3:= node2.Parent; //Filename
Patternname := node.text;
Bankname := Node2.text;
Filename := Node3.text;
 LoadDrum3Sequence(Drumname,Patternname,Bankname,Filename);
end;

procedure TMainForm.LDS4Click(Sender: TObject);
Var
node:TTreeNode;
node2:ttreeNode;
node3:ttreeNode;
Bankname:string;
Drumname:string;
begin
node := TreeView1.Selected; //Which Drum ?
node := node.Parent; //Drum
Drumname := node.Text;
node := node.Parent; //Patternname
node2:= node.Parent; //Bank
node3:= node2.Parent; //Filename
Patternname := node.text;
Bankname := Node2.text;
Filename := Node3.text;
 LoadDrum4Sequence(Drumname,Patternname,Bankname,Filename);
end;

procedure TMainForm.LDS5Click(Sender: TObject);
Var
node:TTreeNode;
node2:ttreeNode;
node3:ttreeNode;
Bankname:string;
Drumname:string;
begin
node := TreeView1.Selected; //Which Drum ?
node := node.Parent; //Drum
Drumname := node.Text;
node := node.Parent; //Patternname
node2:= node.Parent; //Bank
node3:= node2.Parent; //Filename
Patternname := node.text;
Bankname := Node2.text;
Filename := Node3.text;
 LoadDrum5Sequence(Drumname,Patternname,Bankname,Filename);
end;

procedure TMainForm.LDS6AClick(Sender: TObject);
Var
node:TTreeNode;
node2:ttreeNode;
node3:ttreeNode;
Bankname:string;
Drumname:string;
begin
node := TreeView1.Selected; //Which Drum ?
node := node.Parent; //Drum
Drumname := node.Text;
node := node.Parent; //Patternname
node2:= node.Parent; //Bank
node3:= node2.Parent; //Filename
Patternname := node.text;
Bankname := Node2.text;
Filename := Node3.text;
  LoadDrum6ASequence(Drumname,Patternname,Bankname,Filename);
end;

procedure TMainForm.LDS6BClick(Sender: TObject);
Var
node:TTreeNode;
node2:ttreeNode;
node3:ttreeNode;
Bankname:string;
Drumname:string;
begin
node := TreeView1.Selected; //Which Drum ?
node := node.Parent; //Drum
Drumname := node.Text;
node := node.Parent; //Patternname
node2:= node.Parent; //Bank
node3:= node2.Parent; //Filename
Patternname := node.text;
Bankname := Node2.text;
Filename := Node3.text;
 LoadDrum6BSequence(Drumname,Patternname,Bankname,Filename);
end;

procedure TMainForm.LDS7AClick(Sender: TObject);
Var
node:TTreeNode;
node2:ttreeNode;
node3:ttreeNode;
Bankname:string;
Drumname:string;
begin
node := TreeView1.Selected; //Which Drum ?
node := node.Parent; //Drum
Drumname := node.Text;
node := node.Parent; //Patternname
node2:= node.Parent; //Bank
node3:= node2.Parent; //Filename
Patternname := node.text;
Bankname := Node2.text;
Filename := Node3.text;
  LoadDrum7ASequence(Drumname,Patternname,Bankname,Filename);
end;

procedure TMainForm.LDS7BClick(Sender: TObject);
Var
node:TTreeNode;
node2:ttreeNode;
node3:ttreeNode;
Bankname:string;
Drumname:string;
begin
node := TreeView1.Selected; //Which Drum ?
node := node.Parent; //Drum
Drumname := node.Text;
node := node.Parent; //Patternname
node2:= node.Parent; //Bank
node3:= node2.Parent; //Filename
Patternname := node.text;
Bankname := Node2.text;
Filename := Node3.text;
  LoadDrum7BSequence(Drumname,Patternname,Bankname,Filename);
end;

procedure TMainForm.LDSDSClick(Sender: TObject);
Var
node:TTreeNode;
node2:ttreeNode;
node3:ttreeNode;
Bankname:string;
Drumname:string;
begin
node := TreeView1.Selected; //Which Drum ?
node := node.Parent; //Drum
Drumname := node.Text;
node := node.Parent; //Patternname
node2:= node.Parent; //Bank
node3:= node2.Parent; //Filename
Patternname := node.text;
Bankname := Node2.text;
Filename := Node3.text;
 LoadDrumAccentSequence(Drumname,Patternname,Bankname,Filename);
end;

procedure TMainForm.LDSSAClick(Sender: TObject);
Var
node:TTreeNode;
node2:ttreeNode;
node3:ttreeNode;
Bankname:string;
Drumname:string;
begin
node := TreeView1.Selected; //Which Drum ?
node := node.Parent; //Drum
Drumname := node.Text;
node := node.Parent; //Patternname
node2:= node.Parent; //Bank
node3:= node2.Parent; //Filename
Patternname := node.text;
Bankname := Node2.text;
Filename := Node3.text;
 LoadSynthAccentSequence(Drumname,Patternname,Bankname,Filename);
end;

procedure TMainForm.PanSynth1Change(Sender: TObject);
begin
  PanVSynth1.text := FloatToStr(round(PanSynth1.Position));
end;

procedure TMainForm.PanSynth2Change(Sender: TObject);
begin
    PanVSynth2.text := FloatToStr(round(PanSynth2.Position));
end;

procedure TMainForm.PanSynth3Change(Sender: TObject);
begin
  PanVSynth3.text := FloatToStr(round(PanSynth3.Position));
end;

procedure TMainForm.PanSynth4Change(Sender: TObject);
begin
  PanVSynth4.text := FloatToStr(round(PanSynth4.Position));
end;

procedure TMainForm.PanSynth5Change(Sender: TObject);
begin
  PanVSynth5.text := FloatToStr(round(PanSynth5.Position));
end;

procedure TMainForm.PatternnameFldChange(Sender: TObject);
begin

end;

procedure TMainForm.PatternnameFldEditingDone(Sender: TObject);
Var
i:Integer;
begin
Patternname := PatternnameFld.text;
If Length(Patternname) < 8 then
begin
     For i:= Length(Patternname) to 8 do
         Begin
            Patternname := Patternname + ' ';
         end;
end;
PatternnameFld.text := Patternname;
end;

procedure TMainForm.ResonanceSynth1Change(Sender: TObject);
begin
  ResonanceVSynth1.text := FloatToStr(round(ResonanceSynth1.Position));
end;

procedure TMainForm.ResonanceSynth2Change(Sender: TObject);
begin
  ResonanceVSynth2.text := FloatToStr(round(ResonanceSynth2.Position));
end;

procedure TMainForm.ResonanceSynth3Change(Sender: TObject);
begin
  ResonanceVSynth3.text := FloatToStr(round(ResonanceSynth3.Position));
end;

procedure TMainForm.ResonanceSynth4Change(Sender: TObject);
begin
  ResonanceVSynth4.text := FloatToStr(round(ResonanceSynth4.Position));
end;

procedure TMainForm.ResonanceSynth5Change(Sender: TObject);
begin
  ResonanceVSynth5.text := FloatToStr(round(ResonanceSynth5.Position));
end;

procedure TMainForm.RndSoundClick1(Sender: TObject);
begin
  SynthoscSynth1.ItemIndex:=Random(16);
  WaveformSynth1Update();
  WaveformSynth1.ItemIndex:=0;
  EGTimeSynth1.Position:=Random(128);
  //TuneSynth1.Position:=Random(101)-50;
  OscEdit1Synth1.Position:=Random(128);
  OscEdit2Synth1.Position:=Random(128);
  GlideSynth1.Position:=Random(128);
  FilterTypeSynth1.ItemIndex:=Random(5);
  CutoffSynth1.Position:=Random(128);
  ResonanceSynth1.Position:=Random(128);
  DriveSynth1.Position:=Random(128);
  ModSpeedSynth1.Position:=Random(128);
  ModDepthSynth1.Position:=Random(128)-64;
  ModTypeSynth1.ItemIndex:=Random(6);
  ModDestSynth1.ItemIndex:=Random(7);
  EGIntSynth1.Position:=Random(128)-64;
  MotionSeqSynth1.ItemIndex:=Random(3);
  WaveformSynth1.ItemIndex:=Random(StrToInt(WaveformSynthC1.Caption));

end;

procedure TMainForm.RndSoundSynth2Click(Sender: TObject);
begin
  SynthoscSynth2.ItemIndex:=Random(16);
  WaveformSynth2Update();
  WaveformSynth2.ItemIndex:=0;
  EGTimeSynth2.Position:=Random(128);
  //TuneSynth2.Position:=Random(101)-50;
  OscEdit1Synth2.Position:=Random(128);
  OscEdit2Synth2.Position:=Random(128);
  GlideSynth2.Position:=Random(64);
  FilterTypeSynth2.ItemIndex:=Random(5);
  CutoffSynth2.Position:=Random(128);
  ResonanceSynth2.Position:=Random(128);
  DriveSynth2.Position:=Random(128);
  ModSpeedSynth2.Position:=Random(128);
  ModDepthSynth2.Position:=Random(128)-64;
  ModTypeSynth2.ItemIndex:=Random(6);
  ModDestSynth2.ItemIndex:=Random(7);
  EGIntSynth2.Position:=Random(128)-64;
  MotionSeqSynth2.ItemIndex:=Random(3);
  WaveformSynth2.ItemIndex:=Random(StrToInt(WaveformSynthC2.Caption));

end;

procedure TMainForm.RndSoundSynth3Click(Sender: TObject);
begin
  SynthoscSynth3.ItemIndex:=Random(16);
  WaveformSynth3Update();
  WaveformSynth3.ItemIndex:=0;
  EGTimeSynth3.Position:=Random(128);
  //TuneSynth3.Position:=Random(101)-50;
  OscEdit1Synth3.Position:=Random(128);
  OscEdit2Synth3.Position:=Random(128);
  GlideSynth3.Position:=Random(64);
  FilterTypeSynth3.ItemIndex:=Random(5);
  CutoffSynth3.Position:=Random(128);
  ResonanceSynth3.Position:=Random(128);
  DriveSynth3.Position:=Random(128);
  ModSpeedSynth3.Position:=Random(128);
  ModDepthSynth3.Position:=Random(128)-64;
  ModTypeSynth3.ItemIndex:=Random(6);
  ModDestSynth3.ItemIndex:=Random(7);
  EGIntSynth3.Position:=Random(128)-64;
  MotionSeqSynth3.ItemIndex:=Random(3);
  WaveformSynth3.ItemIndex:=Random(StrToInt(WaveformSynthC3.Caption));
end;

procedure TMainForm.RndSoundSynth4Click(Sender: TObject);
  begin
    SynthoscSynth4.ItemIndex:=Random(16);
    WaveformSynth4Update();
    WaveformSynth4.ItemIndex:=0;
    EGTimeSynth4.Position:=Random(128);
    //TuneSynth4.Position:=Random(101)-50;
    OscEdit1Synth4.Position:=Random(128);
    OscEdit2Synth4.Position:=Random(128);
    GlideSynth4.Position:=Random(64);
    FilterTypeSynth4.ItemIndex:=Random(5);
    CutoffSynth4.Position:=Random(128);
    ResonanceSynth4.Position:=Random(128);
    DriveSynth4.Position:=Random(128);
    ModSpeedSynth4.Position:=Random(128);
    ModDepthSynth4.Position:=Random(128)-64;
    ModTypeSynth4.ItemIndex:=Random(6);
    ModDestSynth4.ItemIndex:=Random(7);
    EGIntSynth4.Position:=Random(128)-64;
    MotionSeqSynth4.ItemIndex:=Random(3);
    WaveformSynth4.ItemIndex:=Random(StrToInt(WaveformSynthC4.Caption));
end;

procedure TMainForm.RndSoundSynth5Click(Sender: TObject);
  begin
    SynthoscSynth5.ItemIndex:=Random(16);
    WaveformSynth5Update();
    WaveformSynth5.ItemIndex:=0;
    EGTimeSynth5.Position:=Random(128);
    //TuneSynth5.Position:=Random(101)-50;
    OscEdit1Synth5.Position:=Random(128);
    OscEdit2Synth5.Position:=Random(128);
    GlideSynth5.Position:=Random(64);
    FilterTypeSynth5.ItemIndex:=Random(5);
    CutoffSynth5.Position:=Random(128);
    ResonanceSynth5.Position:=Random(128);
    DriveSynth5.Position:=Random(128);
    ModSpeedSynth5.Position:=Random(128);
    ModDepthSynth5.Position:=Random(128)-64;
    ModTypeSynth5.ItemIndex:=Random(6);
    ModDestSynth5.ItemIndex:=Random(7);
    EGIntSynth5.Position:=Random(128)-64;
    MotionSeqSynth5.ItemIndex:=Random(3);
    WaveformSynth5.ItemIndex:=Random(StrToInt(WaveformSynthC5.Caption));
end;

procedure TMainForm.RollSynth1Change(Sender: TObject);
begin
    If (RollSynth1.state=cbUnchecked) then begin
       RollSynth1.Caption:='Roll Off';
    end
    Else begin
        RollSynth1.Caption:='Roll On';
    end;
end;

procedure TMainForm.RollSynth2Change(Sender: TObject);
begin
      If (RollSynth2.state=cbUnchecked) then begin
       RollSynth2.Caption:='Roll Off';
    end
    Else begin
        RollSynth2.Caption:='Roll On';
    end;
end;

procedure TMainForm.RollSynth3Change(Sender: TObject);
begin
    If (RollSynth3.state=cbUnchecked) then begin
       RollSynth3.Caption:='Roll Off';
    end
    Else begin
        RollSynth3.Caption:='Roll On';
    end;
end;

procedure TMainForm.RollSynth4Change(Sender: TObject);
begin
    If (RollSynth4.state=cbUnchecked) then begin
       RollSynth4.Caption:='Roll Off';
    end
    Else begin
        RollSynth4.Caption:='Roll On';
    end;
end;

procedure TMainForm.RollSynth5Change(Sender: TObject);
begin
    If (RollSynth5.state=cbUnchecked) then begin
       RollSynth5.Caption:='Roll Off';
    end
    Else begin
        RollSynth5.Caption:='Roll On';
    end;
end;

procedure TMainForm.SAccentTrigHoldBChange(Sender: TObject);
begin
  If (SAccentTrigHoldB.state=cbUnchecked) then begin
     SAccentTrigHoldLED.Color := clSilver;
  end
  Else begin
     SAccentTrigHoldLED.Color := $004080FF;
  end;
end;

procedure TMainForm.SwinguEKnobChange(Sender: TObject);
begin
  SwingLED.caption := FloatToStr(round(SwinguEKnob.Position));
end;

procedure TMainForm.SynthoscSynth1Change(Sender: TObject);
begin
  WaveformSynth1Update();
end;

procedure TMainForm.SynthoscSynth2Change(Sender: TObject);
begin
    WaveformSynth2Update();
end;

procedure TMainForm.SynthoscSynth3Change(Sender: TObject);
begin
    WaveformSynth3Update();
end;

procedure TMainForm.SynthoscSynth4Change(Sender: TObject);
begin
    WaveformSynth4Update();
end;

procedure TMainForm.SynthoscSynth5Change(Sender: TObject);
begin
     WaveformSynth5Update();
end;

procedure TMainForm.TempouEKnobChange(Sender: TObject);
begin
  TempoLED.caption := FloatToStr(round(TempouEKnob.Position));
end;

procedure TMainForm.TestClick(Sender: TObject);
var
  Status: Integer;
begin
  Status :=0;
  Status := Status + BoolToInt(MuteStatus1.checked)*1;
  Status := Status + BoolToInt(MuteStatus2.checked)*2;
  Status := Status + BoolToInt(MuteStatus3.checked)*4;
  Status := Status + BoolToInt(MuteStatus4.checked)*8;
  Status := Status + BoolToInt(MuteStatus5.checked)*16;
  Status := Status + BoolToInt(MuteStatus6.checked)*32;
  Status := Status + BoolToInt(MuteStatus7.checked)*64;
  Status := Status + BoolToInt(MuteStatus8.checked)*128;

  // Ausagbe der Werte
  ShowMessage(inttostr(Status));
  //ShowMessage(Bits.ToString);


end;

procedure TMainForm.TimeSignatureSelChange(Sender: TObject);
begin
 LaststepFld.text :='16';
 If (TimeSignatureSel.Index>1) then LaststepFld.text :='12';
end;



procedure TMainForm.TreeView1SelectionChanged(Sender: TObject);
var
  node:TTreeNode;
  node2:TTreeNode;
  MenuDead:Boolean;

begin
  node := TreeView1.Selected;
  MenuDead := True;
  if not (node=nil) then begin
       //Showmessage(node.text);
        node2 := node.Parent;
       if not (node2=nil) then begin
          IF (node2.text='Bank A') OR (node2.text='Bank B') OR (node2.text='Bank C') OR (node2.text='Bank D') then begin
             EditPattern.Enabled:=True;
             EditPattern.Visible:=True;
             LDP.Enabled:=false;
             LDPS.Enabled:=false;
             LDS.Enabled:=false;
             LSP.enabled:=false;
             LSS.enabled:=false;
             LDP.Visible:=false;
             LDPS.Visible:=false;
             LDS.Visible:=false;
             LSP.Visible:=false;
             LSS.Visible:=false;
             MenuDead := False;
             end;
          end;

        If (node.text='Drum 1') then begin
             EditPattern.Enabled:=false;
             EditPattern.Visible:=false;
             LDP.Enabled:=true;
             LDPS.Enabled:=true;
             LDS.Enabled:=false;
             LSP.enabled:=false;
             LSS.enabled:=false;
             LDP.Visible:=true;
             LDPS.Visible:=true;
             LDS.Visible:=false;
             LSP.Visible:=false;
             LSS.Visible:=false;
             MenuDead := False;
        end;
        If (node.text='Drum 2') then begin
             EditPattern.Enabled:=false;
             EditPattern.Visible:=false;
             LDP.Enabled:=true;
             LDPS.Enabled:=true;
             LDS.Enabled:=false;
             LSP.enabled:=false;
             LSS.enabled:=false;
             LDP.Visible:=true;
             LDPS.Visible:=true;
             LDS.Visible:=false;
             LSP.Visible:=false;
             LSS.Visible:=false;
             MenuDead := False;
        end;
        If (node.text='Drum 3') then begin
             EditPattern.Enabled:=false;
             EditPattern.Visible:=false;
             LDP.Enabled:=true;
             LDPS.Enabled:=true;
             LDS.Enabled:=false;
             LSP.enabled:=false;
             LSS.enabled:=false;
             LDP.Visible:=true;
             LDPS.Visible:=true;
             LDS.Visible:=false;
             LSP.Visible:=false;
             LSS.Visible:=false;
             MenuDead := False;
        end;
        If (node.text='Drum 4') then begin
             EditPattern.Enabled:=false;
             EditPattern.Visible:=false;
             LDP.Enabled:=true;
             LDPS.Enabled:=true;
             LDS.Enabled:=false;
             LSP.enabled:=false;
             LSS.enabled:=false;
             LDP.Visible:=true;
             LDPS.Visible:=true;
             LDS.Visible:=false;
             LSP.Visible:=false;
             LSS.Visible:=false;
             MenuDead := False;
        end;
        If (node.text='Drum 5') then begin
             EditPattern.Enabled:=false;
             EditPattern.Visible:=false;
             LDP.Enabled:=true;
             LDPS.Enabled:=true;
             LDS.Enabled:=false;
             LSP.enabled:=false;
             LSS.enabled:=false;
             LDP.Visible:=true;
             LDPS.Visible:=true;
             LDS.Visible:=false;
             LSP.Visible:=false;
             LSS.Visible:=false;
             MenuDead := False;
        end;
        If (node.text='Drum 6A') then begin
             EditPattern.Enabled:=false;
             EditPattern.Visible:=false;
             LDP.Enabled:=true;
             LDPS.Enabled:=true;
             LDS.Enabled:=false;
             LSP.enabled:=false;
             LSS.enabled:=false;
             LDP.Visible:=true;
             LDPS.Visible:=true;
             LDS.Visible:=false;
             LSP.Visible:=false;
             LSS.Visible:=false;
             MenuDead := False;
        end;
        If (node.text='Drum 6B') then begin
             EditPattern.Enabled:=false;
             EditPattern.Visible:=false;
             LDP.Enabled:=true;
             LDPS.Enabled:=true;
             LDS.Enabled:=false;
             LSP.enabled:=false;
             LSS.enabled:=false;
             LDP.Visible:=true;
             LDPS.Visible:=true;
             LDS.Visible:=false;
             LSP.Visible:=false;
             LSS.Visible:=false;
             MenuDead := False;
        end;
        If (node.text='Drum 7A') then begin
             EditPattern.Enabled:=false;
             EditPattern.Visible:=false;
             LDP.Enabled:=true;
             LDPS.Enabled:=true;
             LDS.Enabled:=false;
             LSP.enabled:=false;
             LSS.enabled:=false;
             LDP.Visible:=true;
             LDPS.Visible:=true;
             LDS.Visible:=false;
             LSP.Visible:=false;
             LSS.Visible:=false;
             MenuDead := False;
        end;
        If (node.text='Drum 7B') then begin
             EditPattern.Enabled:=false;
             EditPattern.Visible:=false;
             LDP.Enabled:=true;
             LDPS.Enabled:=true;
             LDS.Enabled:=false;
             LSP.enabled:=false;
             LSS.enabled:=false;
             LDP.Visible:=true;
             LDPS.Visible:=true;
             LDS.Visible:=false;
             LSP.Visible:=false;
             LSS.Visible:=false;
             MenuDead := False;
        end;
        If (node.text='Synth 1') then begin
             EditPattern.Enabled:=false;
             LDP.Enabled:=false;
             LDS.Enabled:=false;
             LSP.Enabled:=true;
             LSS.enabled:=false;
             EditPattern.Visible:=false;
             LDP.Visible:=false;
             LDS.Visible:=false;
             LSP.Visible:=true;
             LSS.Visible:=false;
             MenuDead := False;
        end;
        If (node.text='Synth 2') then begin
             EditPattern.Enabled:=false;
             LDP.Enabled:=false;
             LDS.Enabled:=false;
             LSP.Enabled:=true;
             LSS.enabled:=false;
             EditPattern.Visible:=false;
             LDP.Visible:=false;
             LDS.Visible:=false;
             LSP.Visible:=true;
             LSS.Visible:=false;
             MenuDead := False;
        end;
        If (node.text='Synth 3') then begin
             EditPattern.Enabled:=false;
             LDP.Enabled:=false;
             LDS.Enabled:=false;
             LSP.Enabled:=true;
             LSS.enabled:=false;
             EditPattern.Visible:=false;
             LDP.Visible:=false;
             LDS.Visible:=false;
             LSP.Visible:=true;
             LSS.Visible:=false;
             MenuDead := False;
        end;
        If (node.text='Synth 4') then begin
             EditPattern.Enabled:=false;
             LDP.Enabled:=false;
             LDS.Enabled:=false;
             LSP.Enabled:=true;
             LSS.enabled:=false;
             EditPattern.Visible:=false;
             LDP.Visible:=false;
             LDS.Visible:=false;
             LSP.Visible:=true;
             LSS.Visible:=false;
             MenuDead := False;
        end;
        If (node.text='Synth 5') then begin
             EditPattern.Enabled:=false;
             LDP.Enabled:=false;
             LDS.Enabled:=false;
             LSP.Enabled:=true;
             LSS.enabled:=false;
             EditPattern.Visible:=false;
             LDP.Visible:=false;
             LDS.Visible:=false;
             LSP.Visible:=true;
             LSS.Visible:=false;
             MenuDead := False;
        end;
        If (node.text='Sequence') then begin
             EditPattern.Enabled:=false;
             LDP.Enabled:=false;
             LDS.Enabled:=true;
             LSP.Enabled:=false;
             LSS.enabled:=false;
             EditPattern.Visible:=false;
             LDP.Visible:=false;
             LDS.Visible:=true;
             LSP.Visible:=false;
             LSS.Visible:=false;
             MenuDead := False;
        end;
        If (node.text='Drum Accent Sequence') then begin
             EditPattern.Enabled:=false;
             LDP.Enabled:=false;
             LDS.Enabled:=true;
             LSP.Enabled:=false;
             LSS.enabled:=false;
             EditPattern.Visible:=false;
             LDP.Visible:=false;
             LDS.Visible:=true;
             LSP.Visible:=false;
             LSS.Visible:=false;
             MenuDead := False;
        end;
        If (node.text='Synth Accent Sequence') then begin
             EditPattern.Enabled:=false;
             LDP.Enabled:=false;
             LDS.Enabled:=true;
             LSP.Enabled:=false;
             LSS.enabled:=false;
             EditPattern.Visible:=false;
             LDP.Visible:=false;
             LDS.Visible:=true;
             LSP.Visible:=false;
             LSS.Visible:=false;
             MenuDead := False;
        end;
        //If (node.text='Notes&Gates') then begin
        //     EditPattern.Enabled:=false;
        //     LDP.Enabled:=false;
        //     LDS.Enabled:=false;
        //     LSP.Enabled:=false;
        //     LSS.enabled:=true;
        //     MenuDead := False;
        //end;

        If (MenuDead=true) then begin
             EditPattern.Enabled:=false;
             LDP.Enabled:=false;
             LDS.Enabled:=false;
             LSP.Enabled:=false;
             LSS.enabled:=false;
             EditPattern.Visible:=false;
             LDP.Visible:=false;
             LDS.Visible:=false;
             LSP.Visible:=false;
             LSS.Visible:=false;
        end;

  end;
end;

procedure TMainForm.TuneSynth1Change(Sender: TObject);
begin
  TuneVSynth1.text := FloatToStr(round(TuneSynth1.Position));
end;

procedure TMainForm.D1EGTime5Change(Sender: TObject);
begin
  D1EGTimeV5.text := FloatToStr(round(D1EGTime5.Position));
end;

procedure TMainForm.D1EGTime6Change(Sender: TObject);
begin
  D1EGTimeV6.text := FloatToStr(round(D1EGTime6.Position));
end;

procedure TMainForm.D1EGTime7Change(Sender: TObject);
begin
  D1EGTimeV7.text := FloatToStr(round(D1EGTime7.Position));
end;

procedure TMainForm.D1EGTime8Change(Sender: TObject);
begin
  D1EGTimeV8.text := FloatToStr(round(D1EGTime8.Position));
end;

procedure TMainForm.DALevelChange(Sender: TObject);
begin
  DALevelV.text :=  FloatToStr(round(DALevel.Position));
end;

procedure TMainForm.D1Level5Change(Sender: TObject);
begin
  D1LevelV5.text := FloatToStr(round(D1Level5.Position));
end;

procedure TMainForm.D1Level6Change(Sender: TObject);
begin
  D1LevelV6.text := FloatToStr(round(D1Level6.Position));
end;

procedure TMainForm.D1Level8Change(Sender: TObject);
begin
  D1LevelV8.text := FloatToStr(round(D1Level8.Position));
end;

procedure TMainForm.D1Level7Change(Sender: TObject);
begin
  D1LevelV7.text := FloatToStr(round(D1Level7.Position));
end;

procedure TMainForm.D1EGTime2Change(Sender: TObject);
begin
   D1EGTimeV2.text := FloatToStr(round(D1EGTime2.Position));
end;

procedure TMainForm.D1EGTime3Change(Sender: TObject);
begin
  D1EGTimeV3.text := FloatToStr(round(D1EGTime3.Position));
end;

procedure TMainForm.D1Level1Change(Sender: TObject);
begin
   D1LevelV1.text := FloatToStr(round(D1Level1.Position));
end;

procedure TMainForm.D1Level2Change(Sender: TObject);
begin
   D1LevelV2.text := FloatToStr(round(D1Level2.Position));
end;

procedure TMainForm.D1Level3Change(Sender: TObject);
begin
   D1LevelV3.text := FloatToStr(round(D1Level3.Position));
end;

procedure TMainForm.D1Level4Change(Sender: TObject);
begin
   D1LevelV4.text := FloatToStr(round(D1Level4.Position));
end;

procedure TMainForm.D1ModDepth1Change(Sender: TObject);
begin
  D1ModDepthV1.text := FloatToStr(round(D1ModDepth1.Position));
end;

procedure TMainForm.D1ModDepth2Change(Sender: TObject);
begin
   D1ModDepthV2.text := FloatToStr(round(D1ModDepth2.Position));
end;

procedure TMainForm.D1ModDepth4Change(Sender: TObject);
begin
  D1ModDepthV4.text := FloatToStr(round(D1ModDepth4.Position));
end;

procedure TMainForm.D1ModDepth5Change(Sender: TObject);
begin
  D1ModDepthV5.text := FloatToStr(round(D1ModDepth5.Position));
end;

procedure TMainForm.D1ModDepth6Change(Sender: TObject);
begin
  D1ModDepthV6.text := FloatToStr(round(D1ModDepth6.Position));
end;

procedure TMainForm.D1ModDepth7Change(Sender: TObject);
begin
  D1ModDepthV7.text := FloatToStr(round(D1ModDepth7.Position));
end;

procedure TMainForm.D1ModDepth8Change(Sender: TObject);
begin
  D1ModDepthV8.text := FloatToStr(round(D1ModDepth8.Position));
end;

procedure TMainForm.D1ModDepthChange(Sender: TObject);
begin
  D1ModDepthV.text := FloatToStr(round(D1ModDepth.Position));
end;

procedure TMainForm.D1PanChange(Sender: TObject);
begin
   D1PanV.text := FloatToStr(round(D1Pan.Position));
end;

procedure TMainForm.D1Pitch1Change(Sender: TObject);
begin
   D1PitchV1.text := FloatToStr(round(D1Pitch1.Position));
end;

procedure TMainForm.D1Pitch2Change(Sender: TObject);
begin
   D1PitchV2.text := FloatToStr(round(D1Pitch2.Position));
end;

procedure TMainForm.D1Pitch3Change(Sender: TObject);
begin
  D1PitchV3.text := FloatToStr(round(D1Pitch3.Position));
end;

procedure TMainForm.D1Pitch4Change(Sender: TObject);
begin
  D1PitchV4.text := FloatToStr(round(D1Pitch4.Position));
end;

procedure TMainForm.D1Pitch5Change(Sender: TObject);
begin
  D1PitchV5.text := FloatToStr(round(D1Pitch5.Position));
end;

procedure TMainForm.D1Pitch6Change(Sender: TObject);
begin
  D1PitchV6.text := FloatToStr(round(D1Pitch6.Position));
end;

procedure TMainForm.D1Pitch7Change(Sender: TObject);
begin
  D1PitchV7.text := FloatToStr(round(D1Pitch7.Position));
end;

procedure TMainForm.D1Pitch8Change(Sender: TObject);
begin
  D1PitchV8.text := FloatToStr(round(D1Pitch8.Position));
end;

procedure TMainForm.D1PitchChange(Sender: TObject);
begin
D1PitchV.text := FloatToStr(round(D1Pitch.Position));
end;

procedure TMainForm.SALevelChange(Sender: TObject);
begin
  SALevelV.text :=  FloatToStr(round(SALevel.Position));
end;

procedure TMainForm.SaveFileBClick(Sender: TObject);
var patternbase : Integer;
begin
  if SaveDialog1.Execute then
        begin
        filename := SaveDialog1.Filename;
        if (FileExists(filename)) then
        begin
          Patternfrm.filenametxtbox.text := filename;
          Patternfrm.ReadBankA.ReadPatternNamesBankA;
          Patternfrm.ShowModal;
          patternbase:= 512+Patternfrm.Bankbox.ItemIndex*64*4806+Patternfrm.Patternbox.ItemIndex*4806;
        end
        Else
        begin
          CopyFile('clean.emx',filename);
          patternbase:= 512;
          patternfrm.canceled.Text:='0';
        end;
        while patternfrm.canceled.Text='0' do
            begin
              Errorcode:='';
              SavePatternSettings(patternbase);

              SaveDrum1Parameter(patternbase);
              SaveDrum1Sequence(patternbase);
              SaveDrum2Parameter(patternbase);
              SaveDrum2Sequence(patternbase);
              SaveDrum3Parameter(patternbase);
              SaveDrum3Sequence(patternbase);
              SaveDrum4Parameter(patternbase);
              SaveDrum4Sequence(patternbase);
              SaveDrum5Parameter(patternbase);
              SaveDrum5Sequence(patternbase);

              SaveDrum6AParameter(patternbase);
              SaveDrum6ASequence(patternbase);
              SaveDrum6BParameter(patternbase);
              SaveDrum6BSequence(patternbase);

              SaveDrum7AParameter(patternbase);
              SaveDrum7ASequence(patternbase);
              SaveDrum7BParameter(patternbase);
              SaveDrum7BSequence(patternbase);

              SaveSynth1Parameter(patternbase);
              SaveSynth2Parameter(patternbase);
              SaveSynth3Parameter(patternbase);
              SaveSynth4Parameter(patternbase);
              SaveSynth5Parameter(patternbase);

              SaveDrumAccentSequence(patternbase);
              SaveSynthAccentSequence(patternbase);
              While Errorcode='' do
                  begin
                      CheckPatternSettings(patternbase);
                      CheckDrum1Parameter(patternbase);
                      CheckDrum1Sequence(patternbase);
                      CheckDrum2Parameter(patternbase);
                      CheckDrum2Sequence(patternbase);
                      CheckDrum3Parameter(patternbase);
                      CheckDrum3Sequence(patternbase);
                      CheckDrum4Parameter(patternbase);
                      CheckDrum4Sequence(patternbase);
                      CheckDrum5Parameter(patternbase);
                      CheckDrum5Sequence(patternbase);

                      CheckDrum6AParameter(patternbase);
                      CheckDrum6ASequence(patternbase);
                      CheckDrum6BParameter(patternbase);
                      CheckDrum6BSequence(patternbase);

                      CheckDrum7AParameter(patternbase);
                      CheckDrum7ASequence(patternbase);
                      CheckDrum7BParameter(patternbase);
                      CheckDrum7BSequence(patternbase);

                      CheckSynth1Parameter(patternbase);
                      CheckSynth2Parameter(patternbase);
                      CheckSynth3Parameter(patternbase);
                      CheckSynth4Parameter(patternbase);
                      CheckSynth5Parameter(patternbase);

                      CheckDrumAccentSequence(patternbase);
                      CheckSynthAccentSequence(patternbase);
                      Errorcode:='0';
                  end;
              If not(Errorcode='0') Then
              begin
                Showmessage('EMX File is corrupted. It will be renamed.' + Chr(13) + 'Errorcode: ' + Errorcode);
                RenameFile(filename,filename+'.corrupt');
              end
              Else ShowMessage('Pattern saved');
              // Control Save
              patternfrm.canceled.Text:='1';
            end;
  end;
end;

procedure TMainForm.TuneSynth2Change(Sender: TObject);
begin
    TuneVSynth2.text := FloatToStr(round(TuneSynth2.Position));
end;

procedure TMainForm.TuneSynth3Change(Sender: TObject);
begin
  TuneVSynth3.text := FloatToStr(round(TuneSynth3.Position));
end;

procedure TMainForm.TuneSynth4Change(Sender: TObject);
begin
  TuneVSynth4.text := FloatToStr(round(TuneSynth4.Position));
end;

procedure TMainForm.TuneSynth5Change(Sender: TObject);
begin
  TuneVSynth5.text := FloatToStr(round(TuneSynth5.Position));
end;




procedure TMainForm.WaveformSynth1Update();
Var
   i:integer;
begin
WaveformSynth1.Items.clear;
 If (SynthoscSynth1.ItemIndex=0) or (SynthoscSynth1.ItemIndex=7) or (SynthoscSynth1.ItemIndex=9) then
 	begin

 		WaveformSynth1.AddItem('Saw',NIL);
 		WaveformSynth1.AddItem('Pulse',NIL);
 		WaveformSynth1.AddItem('Tri',NIL);
 		WaveformSynth1.AddItem('Sin',NIL);
                WaveformSynthC1.Caption:='4';
 end;
 If (SynthoscSynth1.ItemIndex=1) or (SynthoscSynth1.ItemIndex=4) or (SynthoscSynth1.ItemIndex=6) then
 	begin

 		WaveformSynth1.AddItem('SawSaw',NIL);
 		WaveformSynth1.AddItem('SawSqu',NIL);
 		WaveformSynth1.AddItem('SawTri',NIL);
 		WaveformSynth1.AddItem('SawSin',NIL);
 		WaveformSynth1.AddItem('SawNs',NIL);
 		WaveformSynth1.AddItem('SquSaw',NIL);
 		WaveformSynth1.AddItem('SquSqu',NIL);
 		WaveformSynth1.AddItem('SquTri',NIL);
 		WaveformSynth1.AddItem('SquSin',NIL);
 		WaveformSynth1.AddItem('SquNs',NIL);
 		WaveformSynth1.AddItem('TriSaw',NIL);
 		WaveformSynth1.AddItem('TriSqu',NIL);
 		WaveformSynth1.AddItem('TriTri',NIL);
 		WaveformSynth1.AddItem('TriSin',NIL);
 		WaveformSynth1.AddItem('TriNs',NIL);
 		WaveformSynth1.AddItem('SinSaw',NIL);
 		WaveformSynth1.AddItem('SinSqu',NIL);
 		WaveformSynth1.AddItem('SinTri',NIL);
 		WaveformSynth1.AddItem('SinSin',NIL);
 		WaveformSynth1.AddItem('SinNs',NIL);
                WaveformSynthC1.Caption:='20';
 	end;
 If (SynthoscSynth1.ItemIndex=2) or (SynthoscSynth1.ItemIndex=5) then
 begin

 		WaveformSynth1.AddItem('Saw',NIL);
 		WaveformSynth1.AddItem('Sin',NIL);
                WaveformSynthC1.Caption:='2';
 end;
 If (SynthoscSynth1.ItemIndex=3) then
 	begin

 		WaveformSynth1.AddItem('3Saw',NIL);
 		WaveformSynth1.AddItem('4Saw',NIL);
 		WaveformSynth1.AddItem('5Saw',NIL);
 		WaveformSynth1.AddItem('6Saw',NIL);
 		WaveformSynth1.AddItem('3Squ',NIL);
 		WaveformSynth1.AddItem('4Squ',NIL);
 		WaveformSynth1.AddItem('5Squ',NIL);
 		WaveformSynth1.AddItem('6Squ',NIL);
 		WaveformSynth1.AddItem('3Tri',NIL);
 		WaveformSynth1.AddItem('4Tri',NIL);
 		WaveformSynth1.AddItem('5Tri',NIL);
 		WaveformSynth1.AddItem('6Tri',NIL);
 		WaveformSynth1.AddItem('3Sin',NIL);
 		WaveformSynth1.AddItem('4Sin',NIL);
 		WaveformSynth1.AddItem('5Sin',NIL);
 		WaveformSynth1.AddItem('6Sin',NIL);
                WaveformSynthC1.Caption:='16';
 end;
 If (SynthoscSynth1.ItemIndex=8) then
 	begin

 		WaveformSynth1.AddItem('Type 1',NIL);
 		WaveformSynth1.AddItem('Type 2',NIL);
                WaveformSynthC1.Caption:='20';
 end;
 If (SynthoscSynth1.ItemIndex=10) then
 	begin

 		WaveformSynth1.AddItem('Saw',NIL);
 		WaveformSynth1.AddItem('Pulse',NIL);
 		WaveformSynth1.AddItem('Tri',NIL);
 		WaveformSynth1.AddItem('Sin',NIL);
 		WaveformSynth1.AddItem('Noise',NIL);
                WaveformSynthC1.Caption:='5';
 end;
 If (SynthoscSynth1.ItemIndex=11) or (SynthoscSynth1.ItemIndex=12) or (SynthoscSynth1.ItemIndex=15) then
      Begin
            WaveformSynth1.AddItem('------',NIL);
            WaveformSynthC1.Caption:='1';
      end;


 If (SynthoscSynth1.ItemIndex=13) or (SynthoscSynth1.ItemIndex=14) then begin
                For i:=1 to 76 do begin
                    WaveformSynth1.AddItem(GetPCMSynthName(i),Nil);
                    end;
                //WaveformSynth1.AddItem('PCM '+ inttostr(Waveform),NIL);
                WaveformSynthC1.Caption:='76';
 end;
 WaveformSynth1.ItemIndex:=0;

end;



procedure TMainForm.WaveformSynth3Update();
Var
   i:integer;
begin
WaveformSynth3.Items.clear;
 If (SynthoscSynth3.ItemIndex=0) or (SynthoscSynth3.ItemIndex=7) or (SynthoscSynth3.ItemIndex=9) then
 	begin

 		WaveformSynth3.AddItem('Saw',NIL);
 		WaveformSynth3.AddItem('Pulse',NIL);
 		WaveformSynth3.AddItem('Tri',NIL);
 		WaveformSynth3.AddItem('Sin',NIL);
        WaveformSynthC3.Caption:='4';
 end;
 If (SynthoscSynth3.ItemIndex=1) or (SynthoscSynth3.ItemIndex=4) or (SynthoscSynth3.ItemIndex=6) then
 	begin

 		WaveformSynth3.AddItem('SawSaw',NIL);
 		WaveformSynth3.AddItem('SawSqu',NIL);
 		WaveformSynth3.AddItem('SawTri',NIL);
 		WaveformSynth3.AddItem('SawSin',NIL);
 		WaveformSynth3.AddItem('SawNs',NIL);
 		WaveformSynth3.AddItem('SquSaw',NIL);
 		WaveformSynth3.AddItem('SquSqu',NIL);
 		WaveformSynth3.AddItem('SquTri',NIL);
 		WaveformSynth3.AddItem('SquSin',NIL);
 		WaveformSynth3.AddItem('SquNs',NIL);
 		WaveformSynth3.AddItem('TriSaw',NIL);
 		WaveformSynth3.AddItem('TriSqu',NIL);
 		WaveformSynth3.AddItem('TriTri',NIL);
 		WaveformSynth3.AddItem('TriSin',NIL);
 		WaveformSynth3.AddItem('TriNs',NIL);
 		WaveformSynth3.AddItem('SinSaw',NIL);
 		WaveformSynth3.AddItem('SinSqu',NIL);
 		WaveformSynth3.AddItem('SinTri',NIL);
 		WaveformSynth3.AddItem('SinSin',NIL);
 		WaveformSynth3.AddItem('SinNs',NIL);
        WaveformSynthC3.Caption:='20';
 	end;
 If (SynthoscSynth3.ItemIndex=2) or (SynthoscSynth3.ItemIndex=5) then
 begin

 		WaveformSynth3.AddItem('Saw',NIL);
 		WaveformSynth3.AddItem('Sin',NIL);
        WaveformSynthC3.Caption:='2';
 end;
 If (SynthoscSynth3.ItemIndex=3) then
 	begin

 		WaveformSynth3.AddItem('3Saw',NIL);
 		WaveformSynth3.AddItem('4Saw',NIL);
 		WaveformSynth3.AddItem('5Saw',NIL);
 		WaveformSynth3.AddItem('6Saw',NIL);
 		WaveformSynth3.AddItem('3Squ',NIL);
 		WaveformSynth3.AddItem('4Squ',NIL);
 		WaveformSynth3.AddItem('5Squ',NIL);
 		WaveformSynth3.AddItem('6Squ',NIL);
 		WaveformSynth3.AddItem('3Tri',NIL);
 		WaveformSynth3.AddItem('4Tri',NIL);
 		WaveformSynth3.AddItem('5Tri',NIL);
 		WaveformSynth3.AddItem('6Tri',NIL);
 		WaveformSynth3.AddItem('3Sin',NIL);
 		WaveformSynth3.AddItem('4Sin',NIL);
 		WaveformSynth3.AddItem('5Sin',NIL);
 		WaveformSynth3.AddItem('6Sin',NIL);
        WaveformSynthC3.Caption:='16';
 end;
 If (SynthoscSynth3.ItemIndex=8) then
 	begin

 		WaveformSynth3.AddItem('Type 1',NIL);
 		WaveformSynth3.AddItem('Type 2',NIL);
        WaveformSynthC3.Caption:='20';
 end;
 If (SynthoscSynth3.ItemIndex=10) then
 	begin

 		WaveformSynth3.AddItem('Saw',NIL);
 		WaveformSynth3.AddItem('Pulse',NIL);
 		WaveformSynth3.AddItem('Tri',NIL);
 		WaveformSynth3.AddItem('Sin',NIL);
 		WaveformSynth3.AddItem('Noise',NIL);
        WaveformSynthC3.Caption:='5';
 end;
 If (SynthoscSynth3.ItemIndex=11) or (SynthoscSynth3.ItemIndex=12) or (SynthoscSynth3.ItemIndex=15) then
      Begin
            WaveformSynth3.AddItem('------',NIL);
            WaveformSynthC3.Caption:='1';
      end;


 If (SynthoscSynth3.ItemIndex=13) or (SynthoscSynth3.ItemIndex=14) then begin
		For i:=1 to 76 do begin
			WaveformSynth3.AddItem(GetPCMSynthName(i),Nil);
			end;
		//WaveformSynth3.AddItem('PCM '+ inttostr(Waveform),NIL);
		WaveformSynthC3.Caption:='76';
 end;
 WaveformSynth3.ItemIndex:=0;

end;

procedure TMainForm.WaveformSynth4Update();
Var
   i:integer;
begin
WaveformSynth4.Items.clear;
 If (SynthoscSynth4.ItemIndex=0) or (SynthoscSynth4.ItemIndex=7) or (SynthoscSynth4.ItemIndex=9) then
 	begin

 		WaveformSynth4.AddItem('Saw',NIL);
 		WaveformSynth4.AddItem('Pulse',NIL);
 		WaveformSynth4.AddItem('Tri',NIL);
 		WaveformSynth4.AddItem('Sin',NIL);
        WaveformSynthC4.Caption:='4';
 end;
 If (SynthoscSynth4.ItemIndex=1) or (SynthoscSynth4.ItemIndex=4) or (SynthoscSynth4.ItemIndex=6) then
 	begin

 		WaveformSynth4.AddItem('SawSaw',NIL);
 		WaveformSynth4.AddItem('SawSqu',NIL);
 		WaveformSynth4.AddItem('SawTri',NIL);
 		WaveformSynth4.AddItem('SawSin',NIL);
 		WaveformSynth4.AddItem('SawNs',NIL);
 		WaveformSynth4.AddItem('SquSaw',NIL);
 		WaveformSynth4.AddItem('SquSqu',NIL);
 		WaveformSynth4.AddItem('SquTri',NIL);
 		WaveformSynth4.AddItem('SquSin',NIL);
 		WaveformSynth4.AddItem('SquNs',NIL);
 		WaveformSynth4.AddItem('TriSaw',NIL);
 		WaveformSynth4.AddItem('TriSqu',NIL);
 		WaveformSynth4.AddItem('TriTri',NIL);
 		WaveformSynth4.AddItem('TriSin',NIL);
 		WaveformSynth4.AddItem('TriNs',NIL);
 		WaveformSynth4.AddItem('SinSaw',NIL);
 		WaveformSynth4.AddItem('SinSqu',NIL);
 		WaveformSynth4.AddItem('SinTri',NIL);
 		WaveformSynth4.AddItem('SinSin',NIL);
 		WaveformSynth4.AddItem('SinNs',NIL);
        WaveformSynthC4.Caption:='20';
 	end;
 If (SynthoscSynth4.ItemIndex=2) or (SynthoscSynth4.ItemIndex=5) then
 begin

 		WaveformSynth4.AddItem('Saw',NIL);
 		WaveformSynth4.AddItem('Sin',NIL);
        WaveformSynthC4.Caption:='2';
 end;
 If (SynthoscSynth4.ItemIndex=3) then
 	begin

 		WaveformSynth4.AddItem('3Saw',NIL);
 		WaveformSynth4.AddItem('4Saw',NIL);
 		WaveformSynth4.AddItem('5Saw',NIL);
 		WaveformSynth4.AddItem('6Saw',NIL);
 		WaveformSynth4.AddItem('3Squ',NIL);
 		WaveformSynth4.AddItem('4Squ',NIL);
 		WaveformSynth4.AddItem('5Squ',NIL);
 		WaveformSynth4.AddItem('6Squ',NIL);
 		WaveformSynth4.AddItem('3Tri',NIL);
 		WaveformSynth4.AddItem('4Tri',NIL);
 		WaveformSynth4.AddItem('5Tri',NIL);
 		WaveformSynth4.AddItem('6Tri',NIL);
 		WaveformSynth4.AddItem('3Sin',NIL);
 		WaveformSynth4.AddItem('4Sin',NIL);
 		WaveformSynth4.AddItem('5Sin',NIL);
 		WaveformSynth4.AddItem('6Sin',NIL);
        WaveformSynthC4.Caption:='16';
 end;
 If (SynthoscSynth4.ItemIndex=8) then
 	begin

 		WaveformSynth4.AddItem('Type 1',NIL);
 		WaveformSynth4.AddItem('Type 2',NIL);
        WaveformSynthC4.Caption:='20';
 end;
 If (SynthoscSynth4.ItemIndex=10) then
 	begin

 		WaveformSynth4.AddItem('Saw',NIL);
 		WaveformSynth4.AddItem('Pulse',NIL);
 		WaveformSynth4.AddItem('Tri',NIL);
 		WaveformSynth4.AddItem('Sin',NIL);
 		WaveformSynth4.AddItem('Noise',NIL);
        WaveformSynthC4.Caption:='5';
 end;
 If (SynthoscSynth4.ItemIndex=11) or (SynthoscSynth4.ItemIndex=12) or (SynthoscSynth4.ItemIndex=15) then
      Begin
            WaveformSynth4.AddItem('------',NIL);
            WaveformSynthC4.Caption:='1';
      end;


 If (SynthoscSynth4.ItemIndex=13) or (SynthoscSynth4.ItemIndex=14) then begin
		For i:=1 to 76 do begin
			WaveformSynth4.AddItem(GetPCMSynthName(i),Nil);
			end;
		//WaveformSynth4.AddItem('PCM '+ inttostr(Waveform),NIL);
		WaveformSynthC4.Caption:='76';
 end;
 WaveformSynth4.ItemIndex:=0;

end;

procedure TMainForm.WaveformSynth5Update();
Var
   i:integer;
begin
WaveformSynth5.Items.clear;
 If (SynthoscSynth5.ItemIndex=0) or (SynthoscSynth5.ItemIndex=7) or (SynthoscSynth5.ItemIndex=9) then
 	begin

 		WaveformSynth5.AddItem('Saw',NIL);
 		WaveformSynth5.AddItem('Pulse',NIL);
 		WaveformSynth5.AddItem('Tri',NIL);
 		WaveformSynth5.AddItem('Sin',NIL);
        WaveformSynthC5.Caption:='4';
 end;
 If (SynthoscSynth5.ItemIndex=1) or (SynthoscSynth5.ItemIndex=4) or (SynthoscSynth5.ItemIndex=6) then
 	begin

 		WaveformSynth5.AddItem('SawSaw',NIL);
 		WaveformSynth5.AddItem('SawSqu',NIL);
 		WaveformSynth5.AddItem('SawTri',NIL);
 		WaveformSynth5.AddItem('SawSin',NIL);
 		WaveformSynth5.AddItem('SawNs',NIL);
 		WaveformSynth5.AddItem('SquSaw',NIL);
 		WaveformSynth5.AddItem('SquSqu',NIL);
 		WaveformSynth5.AddItem('SquTri',NIL);
 		WaveformSynth5.AddItem('SquSin',NIL);
 		WaveformSynth5.AddItem('SquNs',NIL);
 		WaveformSynth5.AddItem('TriSaw',NIL);
 		WaveformSynth5.AddItem('TriSqu',NIL);
 		WaveformSynth5.AddItem('TriTri',NIL);
 		WaveformSynth5.AddItem('TriSin',NIL);
 		WaveformSynth5.AddItem('TriNs',NIL);
 		WaveformSynth5.AddItem('SinSaw',NIL);
 		WaveformSynth5.AddItem('SinSqu',NIL);
 		WaveformSynth5.AddItem('SinTri',NIL);
 		WaveformSynth5.AddItem('SinSin',NIL);
 		WaveformSynth5.AddItem('SinNs',NIL);
        WaveformSynthC5.Caption:='20';
 	end;
 If (SynthoscSynth5.ItemIndex=2) or (SynthoscSynth5.ItemIndex=5) then
 begin

 		WaveformSynth5.AddItem('Saw',NIL);
 		WaveformSynth5.AddItem('Sin',NIL);
        WaveformSynthC5.Caption:='2';
 end;
 If (SynthoscSynth5.ItemIndex=3) then
 	begin

 		WaveformSynth5.AddItem('3Saw',NIL);
 		WaveformSynth5.AddItem('4Saw',NIL);
 		WaveformSynth5.AddItem('5Saw',NIL);
 		WaveformSynth5.AddItem('6Saw',NIL);
 		WaveformSynth5.AddItem('3Squ',NIL);
 		WaveformSynth5.AddItem('4Squ',NIL);
 		WaveformSynth5.AddItem('5Squ',NIL);
 		WaveformSynth5.AddItem('6Squ',NIL);
 		WaveformSynth5.AddItem('3Tri',NIL);
 		WaveformSynth5.AddItem('4Tri',NIL);
 		WaveformSynth5.AddItem('5Tri',NIL);
 		WaveformSynth5.AddItem('6Tri',NIL);
 		WaveformSynth5.AddItem('3Sin',NIL);
 		WaveformSynth5.AddItem('4Sin',NIL);
 		WaveformSynth5.AddItem('5Sin',NIL);
 		WaveformSynth5.AddItem('6Sin',NIL);
        WaveformSynthC5.Caption:='16';
 end;
 If (SynthoscSynth5.ItemIndex=8) then
 	begin

 		WaveformSynth5.AddItem('Type 1',NIL);
 		WaveformSynth5.AddItem('Type 2',NIL);
        WaveformSynthC5.Caption:='20';
 end;
 If (SynthoscSynth5.ItemIndex=10) then
 	begin

 		WaveformSynth5.AddItem('Saw',NIL);
 		WaveformSynth5.AddItem('Pulse',NIL);
 		WaveformSynth5.AddItem('Tri',NIL);
 		WaveformSynth5.AddItem('Sin',NIL);
 		WaveformSynth5.AddItem('Noise',NIL);
        WaveformSynthC5.Caption:='5';
 end;
 If (SynthoscSynth5.ItemIndex=11) or (SynthoscSynth5.ItemIndex=12) or (SynthoscSynth5.ItemIndex=15) then
      Begin
            WaveformSynth5.AddItem('------',NIL);
            WaveformSynthC5.Caption:='1';
      end;


 If (SynthoscSynth5.ItemIndex=13) or (SynthoscSynth5.ItemIndex=14) then begin
		For i:=1 to 76 do begin
			WaveformSynth5.AddItem(GetPCMSynthName(i),Nil);
			end;
		//WaveformSynth5.AddItem('PCM '+ inttostr(Waveform),NIL);
		WaveformSynthC5.Caption:='76';
 end;
 WaveformSynth5.ItemIndex:=0;

end;


procedure TMainForm.LoadEMX();
Var
   BytesRead : Integer;
   Buffer : array [0..8] of byte;
   FileStream : TFileStream;
   Patternbase: Integer;
   Banki: Integer;
   Songi: Integer;
   Patterni: Integer;
   Tempo: Integer;
   TempoK: Integer;
   TempoR: Real;
   //NodeCounter : Integer;
   PatternCounter: Integer;
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
   SongNode: TTreeNode;
   ProgressPos : Integer;
   Pttno : String;
begin
Patternbase := 512;

if OpenDialog1.Execute then
     begin
          ProgressBar1.visible := True;
          ProgressBar1.Style:=pbstMarquee;
          filename := OpenDialog1.Filename;
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


          NameNode := Treeview1.Items.AddChild(GSNode, 'Protect: ' + Instname);

          BytesRead:=Filestream.Read(Mastertune,1);
          Mastertune := Mastertune - 50;
          NameNode := Treeview1.Items.AddChild(GSNode, 'Mastertune: ' + inttostr(Mastertune));

          BytesRead:=Filestream.Read(Arpcontrol,1);
          If (Arpcontrol= 0) then
             Instname := 'No'
          Else
              Instname := 'Yes';

          If (Arpcontrol= 0) then
             LED_Arp.Color:=clLime
          Else
              LED_Arp.Color:=ClRed;

          NameNode := Treeview1.Items.AddChild(GSNode, 'Arpcontrol Reverse: '+ Instname);

          //If Protect>1 Or Mastertune > 127 or Arpcontrol > 1 then SomethingWentWrong;
          FileStream.Position := Patternbase;

          //
          //Pattern Read
          //
          ProgressPos := 0;
          For Banki := 65 to 68 Do Begin
              i := treeview1.Items.Count;
              s := 'Bank ' + chr(Banki);
              BankNode := Treeview1.Items.AddChild(FileNode ,s);
              For Patterni := 1 to 64 Do Begin
                  //FileStream.Position := Patternbase;

                  BytesRead:=Filestream.Read(Buffer[0],8);
                  setlength(Patternname, 8);
                  move(Buffer[0], Patternname[1],8);
                  Pttno:=inttostr(Patterni);
                  If (Patterni < 10) Then Pttno:='0'+inttostr(Patterni);
                  NameNode := Treeview1.Items.AddChild(BankNode, Pttno + ' ' +Patternname);
                  //Patternsettings
                  //Tempo Float doesn't work in Pascal
                  Tempo:=0;
                  TempoK:=0; //Tempobugfix :(
                  BytesRead:=Filestream.Read(Tempo,1);
                  BytesRead:=Filestream.Read(TempoK,1);
                  TempoR:= Tempo*2+TempoK/128; //No idea if i calculate it right. :)
                  //TempoK must have Values between 0.1 and 1.9
                  //

                  PSNode := Treeview1.Items.AddChild(NameNode, 'Tempo: '+ FloatToStr(TempoR));
                  PSNode := Treeview1.Items.AddChild(NameNode, 'TempoB: '+ IntToStr(Tempo));
                  PSNode := Treeview1.Items.AddChild(NameNode, 'TempoK: '+ IntToStr(TempoK));
                  //Swing Standardwert 56
                  BytesRead:=Filestream.Read(Swing,1);
                  Swing:=Swing+50;
                  PSNode := Treeview1.Items.AddChild(NameNode, 'Swing: '+ inttostr(Swing));

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

                   PSNode := Treeview1.Items.AddChild(NameNode, 'Rolltype: '+ inttostr(Rolltype));
                   PSNode := Treeview1.Items.AddChild(NameNode, 'Beattype: '+ Beattype);
                   PSNode := Treeview1.Items.AddChild(NameNode, 'Patternlength: ' + inttostr(Patternlength));

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
                   PSNode := Treeview1.Items.AddChild(NameNode, 'FX Chain: '+ FXChain);

                   //Laststep (Patternlength per Beat)
                   BytesRead:=Filestream.Read(Laststep,1);
                   Laststep := Laststep + 1;
                   PSNode := Treeview1.Items.AddChild(NameNode, 'Last Step: '+ inttostr(Laststep));

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
                   PSNode := Treeview1.Items.AddChild(NameNode, 'Arp Scale: '+ ArpScaleString);
                   // Arp Center Note
                   // Heute keinen Bock mehr, schon wieder Case :)
                   BytesRead:=Filestream.Read(ArpCenterNote,1);
                   PSNode := Treeview1.Items.AddChild(NameNode, 'Arpeggiator CenterNote: '+ Notestring(ArpCenterNote));

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
                   InstNode := Treeview1.Items.AddChild(NameNode, 'Drum 1');

                   //Samplebanknumber
                   BytesRead:=Filestream.Read(Samplebanknumber,1);
                   Samplebanknumber:=Samplebanknumber+1;
                   s:=Samplename(Samplebanknumber);
                   Treeview1.Items.AddChild(InstNode, 'Sample: ' + s);
                   Treeview1.Items.AddChild(InstNode, 'Samplebanknumber:  ' + inttostr(Samplebanknumber));
                   BytesRead:=Filestream.Read(Pitch,1);
                   Treeview1.Items.AddChild(InstNode, 'Pitch:  ' + inttostr(Pitch));
                   BytesRead:=Filestream.Read(DLevel,1);
                   Treeview1.Items.AddChild(InstNode, 'Level:  ' + inttostr(DLevel));
                   BytesRead:=Filestream.Read(DPan,1);
                   Treeview1.Items.AddChild(InstNode, 'Pan:  ' + inttostr(DPan));
                   BytesRead:=Filestream.Read(DEGTime,1);
                   Treeview1.Items.AddChild(InstNode, 'EG Time:  ' + inttostr(DEGTime));

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
                   Treeview1.Items.AddChild(InstNode, 'Roll: ' + Roll);
                   Treeview1.Items.AddChild(InstNode, 'FX Send: ' + FXSend);
                   Treeview1.Items.AddChild(InstNode, 'FX Send to: ' + FXSelected);

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
                   Treeview1.Items.AddChild(InstNode, 'Destination: ' + MDestination);
                   Treeview1.Items.AddChild(InstNode, 'BPM Sync: ' + MBPMSync);

                   BytesRead:=Filestream.Read(ModulationSpeed,1);
                   Treeview1.Items.AddChild(InstNode, 'Modulation Speed:  ' + inttostr(ModulationSpeed));
                   BytesRead:=Filestream.Read(ModulationDepth,1);
                   Treeview1.Items.AddChild(InstNode, 'Modulation Depth:  ' + inttostr(ModulationDepth));

                   BytesRead:=Filestream.Read(MotionSeqS,1);
                   Case MotionSeqS of
                        0 : MotionSeqStr :='Nothing';
                        1 : MotionSeqStr :='Smooth';
                        2 : MotionSeqStr :='Trig Hold';
                        otherwise MotionSeqStr:='Error';
                   end;

                   Treeview1.Items.AddChild(InstNode, 'MotionSeq.: ' + MotionSeqStr);
                   //The Pattern
                   ParameterNode := Treeview1.Items.AddChild(InstNode, 'Sequence');


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
                       Treeview1.Items.AddChild(ParameterNode,'Position ' + inttostr(i) );
                       Treeview1.Items.AddChild(ParameterNode,s);
                   end;
                    //Endlich Sample 2
                   InstNode := Treeview1.Items.AddChild(NameNode, 'Drum 2');

                   //Samplebanknumber
                   BytesRead:=Filestream.Read(Samplebanknumber,1);
                   Samplebanknumber:=Samplebanknumber+1;
                   s:=Samplename(Samplebanknumber);
                   Treeview1.Items.AddChild(InstNode, 'Sample: ' + s);
                   Treeview1.Items.AddChild(InstNode, 'Samplebanknumber ' + inttostr(Samplebanknumber));
                   BytesRead:=Filestream.Read(Pitch,1);
                   Treeview1.Items.AddChild(InstNode, 'Pitch ' + inttostr(Pitch));
                   BytesRead:=Filestream.Read(DLevel,1);
                   Treeview1.Items.AddChild(InstNode, 'Level ' + inttostr(DLevel));
                   BytesRead:=Filestream.Read(DPan,1);
                   Treeview1.Items.AddChild(InstNode, 'Pan ' + inttostr(DPan));
                   BytesRead:=Filestream.Read(DEGTime,1);
                   Treeview1.Items.AddChild(InstNode, 'EG Time ' + inttostr(DEGTime));

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
                   ParameterNode := Treeview1.Items.AddChild(InstNode, 'Sequence');


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
                           Treeview1.Items.AddChild(ParameterNode,'Position ' + inttostr(i) );
                           Treeview1.Items.AddChild(ParameterNode,s);
                       end;
                    //Endlich Sample 3
                   InstNode := Treeview1.Items.AddChild(NameNode, 'Drum 3');

                   //Samplebanknumber
                   BytesRead:=Filestream.Read(Samplebanknumber,1);
                   Samplebanknumber:=Samplebanknumber+1;
                   s:=Samplename(Samplebanknumber);
                   Treeview1.Items.AddChild(InstNode, 'Sample: ' + s);
                   Treeview1.Items.AddChild(InstNode, 'Samplebanknumber ' + inttostr(Samplebanknumber));
                   BytesRead:=Filestream.Read(Pitch,1);
                   Treeview1.Items.AddChild(InstNode, 'Pitch ' + inttostr(Pitch));
                   BytesRead:=Filestream.Read(DLevel,1);
                   Treeview1.Items.AddChild(InstNode, 'Level ' + inttostr(DLevel));
                   BytesRead:=Filestream.Read(DPan,1);
                   Treeview1.Items.AddChild(InstNode, 'Pan ' + inttostr(DPan));
                   BytesRead:=Filestream.Read(DEGTime,1);
                   Treeview1.Items.AddChild(InstNode, 'EG Time ' + inttostr(DEGTime));

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
                   ParameterNode := Treeview1.Items.AddChild(InstNode, 'Sequence');


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
                           Treeview1.Items.AddChild(ParameterNode,'Position ' + inttostr(i) );
                           Treeview1.Items.AddChild(ParameterNode,s);
                       end;
                   //Endlich Sample 4
                   InstNode := Treeview1.Items.AddChild(NameNode, 'Drum 4');


                   //Samplebanknumber
                   BytesRead:=Filestream.Read(Samplebanknumber,1);
                   Samplebanknumber:=Samplebanknumber+1;
                   s:=Samplename(Samplebanknumber);
                   Treeview1.Items.AddChild(InstNode, 'Sample: ' + s);
                   Treeview1.Items.AddChild(InstNode, 'Samplebanknumber ' + inttostr(Samplebanknumber));
                   BytesRead:=Filestream.Read(Pitch,1);
                   Treeview1.Items.AddChild(InstNode, 'Pitch ' + inttostr(Pitch));
                   BytesRead:=Filestream.Read(DLevel,1);
                   Treeview1.Items.AddChild(InstNode, 'Level ' + inttostr(DLevel));
                   BytesRead:=Filestream.Read(DPan,1);
                   Treeview1.Items.AddChild(InstNode, 'Pan ' + inttostr(DPan));
                   BytesRead:=Filestream.Read(DEGTime,1);
                   Treeview1.Items.AddChild(InstNode, 'EG Time ' + inttostr(DEGTime));

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
                   ParameterNode := Treeview1.Items.AddChild(InstNode, 'Sequence');


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
                           Treeview1.Items.AddChild(ParameterNode,'Position ' + inttostr(i) );
                           Treeview1.Items.AddChild(ParameterNode,s);
                       end;
                   //Endlich Sample 5
                   InstNode := Treeview1.Items.AddChild(NameNode, 'Drum 5');

                   //Samplebanknumber
                   BytesRead:=Filestream.Read(Samplebanknumber,1);
                   Samplebanknumber:=Samplebanknumber+1;
                   s:=Samplename(Samplebanknumber);
                   Treeview1.Items.AddChild(InstNode, 'Sample: ' + s);
                   Treeview1.Items.AddChild(InstNode, 'Samplebanknumber ' + inttostr(Samplebanknumber));
                   BytesRead:=Filestream.Read(Pitch,1);
                   Treeview1.Items.AddChild(InstNode, 'Pitch ' + inttostr(Pitch));
                   BytesRead:=Filestream.Read(DLevel,1);
                   Treeview1.Items.AddChild(InstNode, 'Level ' + inttostr(DLevel));
                   BytesRead:=Filestream.Read(DPan,1);
                   Treeview1.Items.AddChild(InstNode, 'Pan ' + inttostr(DPan));
                   BytesRead:=Filestream.Read(DEGTime,1);
                   Treeview1.Items.AddChild(InstNode, 'EG Time ' + inttostr(DEGTime));

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
                   ParameterNode := Treeview1.Items.AddChild(InstNode, 'Sequence');


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
                           Treeview1.Items.AddChild(ParameterNode,'Position ' + inttostr(i) );
                           Treeview1.Items.AddChild(ParameterNode,s);
                       end;
                   //Endlich Sample 6A
                   InstNode := Treeview1.Items.AddChild(NameNode, 'Drum 6A');

                   //Samplebanknumber
                   BytesRead:=Filestream.Read(Samplebanknumber,1);
                   Samplebanknumber:=Samplebanknumber+1;
                   s:=Samplename(Samplebanknumber);
                   Treeview1.Items.AddChild(InstNode, 'Sample: ' + s);
                   Treeview1.Items.AddChild(InstNode, 'Samplebanknumber ' + inttostr(Samplebanknumber));
                   BytesRead:=Filestream.Read(Pitch,1);
                   Treeview1.Items.AddChild(InstNode, 'Pitch ' + inttostr(Pitch));
                   BytesRead:=Filestream.Read(DLevel,1);
                   Treeview1.Items.AddChild(InstNode, 'Level ' + inttostr(DLevel));
                   BytesRead:=Filestream.Read(DPan,1);
                   Treeview1.Items.AddChild(InstNode, 'Pan ' + inttostr(DPan));
                   BytesRead:=Filestream.Read(DEGTime,1);
                   Treeview1.Items.AddChild(InstNode, 'EG Time ' + inttostr(DEGTime));

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
                   ParameterNode := Treeview1.Items.AddChild(InstNode, 'Sequence');


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
                           Treeview1.Items.AddChild(ParameterNode,'Position ' + inttostr(i) );
                           Treeview1.Items.AddChild(ParameterNode,s);
                       end;
                   //Endlich Sample 6B
                   InstNode := Treeview1.Items.AddChild(NameNode, 'Drum 6B');

                   //Samplebanknumber
                   BytesRead:=Filestream.Read(Samplebanknumber,1);
                   Samplebanknumber:=Samplebanknumber+1;
                   s:=Samplename(Samplebanknumber);
                   Treeview1.Items.AddChild(InstNode, 'Sample: ' + s);
                   Treeview1.Items.AddChild(InstNode, 'Samplebanknumber ' + inttostr(Samplebanknumber));
                   BytesRead:=Filestream.Read(Pitch,1);
                   Treeview1.Items.AddChild(InstNode, 'Pitch ' + inttostr(Pitch));
                   BytesRead:=Filestream.Read(DLevel,1);
                   Treeview1.Items.AddChild(InstNode, 'Level ' + inttostr(DLevel));
                   BytesRead:=Filestream.Read(DPan,1);
                   Treeview1.Items.AddChild(InstNode, 'Pan ' + inttostr(DPan));
                   BytesRead:=Filestream.Read(DEGTime,1);
                   Treeview1.Items.AddChild(InstNode, 'EG Time ' + inttostr(DEGTime));

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
                   ParameterNode := Treeview1.Items.AddChild(InstNode, 'Sequence');


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
                           Treeview1.Items.AddChild(ParameterNode,'Position ' + inttostr(i) );
                           Treeview1.Items.AddChild(ParameterNode,s);
                       end;
                   //Endlich Sample 7A
                   InstNode := Treeview1.Items.AddChild(NameNode, 'Drum 7A');

                   //Samplebanknumber
                   BytesRead:=Filestream.Read(Samplebanknumber,1);
                   Samplebanknumber:=Samplebanknumber+1;
                   s:=Samplename(Samplebanknumber);
                   Treeview1.Items.AddChild(InstNode, 'Sample: ' + s);
                   Treeview1.Items.AddChild(InstNode, 'Samplebanknumber ' + inttostr(Samplebanknumber));
                   BytesRead:=Filestream.Read(Pitch,1);
                   Treeview1.Items.AddChild(InstNode, 'Pitch ' + inttostr(Pitch));
                   BytesRead:=Filestream.Read(DLevel,1);
                   Treeview1.Items.AddChild(InstNode, 'Level ' + inttostr(DLevel));
                   BytesRead:=Filestream.Read(DPan,1);
                   Treeview1.Items.AddChild(InstNode, 'Pan ' + inttostr(DPan));
                   BytesRead:=Filestream.Read(DEGTime,1);
                   Treeview1.Items.AddChild(InstNode, 'EG Time ' + inttostr(DEGTime));

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
                   ParameterNode := Treeview1.Items.AddChild(InstNode, 'Sequence');


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
                           Treeview1.Items.AddChild(ParameterNode,'Position ' + inttostr(i) );
                           Treeview1.Items.AddChild(ParameterNode,s);
                       end;
                   //Endlich Sample 7B
                   InstNode := Treeview1.Items.AddChild(NameNode, 'Drum 7B');

                   //Samplebanknumber
                   BytesRead:=Filestream.Read(Samplebanknumber,1);
                   Samplebanknumber:=Samplebanknumber+1;
                   s:=Samplename(Samplebanknumber);
                   Treeview1.Items.AddChild(InstNode, 'Sample: ' + s);
                   Treeview1.Items.AddChild(InstNode, 'Samplebanknumber ' + inttostr(Samplebanknumber));
                   BytesRead:=Filestream.Read(Pitch,1);
                   Treeview1.Items.AddChild(InstNode, 'Pitch ' + inttostr(Pitch));
                   BytesRead:=Filestream.Read(DLevel,1);
                   Treeview1.Items.AddChild(InstNode, 'Level ' + inttostr(DLevel));
                   BytesRead:=Filestream.Read(DPan,1);
                   Treeview1.Items.AddChild(InstNode, 'Pan ' + inttostr(DPan));
                   BytesRead:=Filestream.Read(DEGTime,1);
                   Treeview1.Items.AddChild(InstNode, 'EG Time ' + inttostr(DEGTime));

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
                   ParameterNode := Treeview1.Items.AddChild(InstNode, 'Sequence');


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
                           Treeview1.Items.AddChild(ParameterNode,'Position ' + inttostr(i) );
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
                           Waveformstring := GetPCMSynthName(Waveform);
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
                   BytesRead:=Filestream.Read(DLevel,1);
                   Treeview1.Items.AddChild(InstNode, 'Level ' + inttostr(DLevel));
                   BytesRead:=Filestream.Read(DPan,1);
                   Treeview1.Items.AddChild(InstNode, 'Pan ' + inttostr(DPan));
                   BytesRead:=Filestream.Read(DEGTime,1);
                   Treeview1.Items.AddChild(InstNode, 'EG Time ' + inttostr(DEGTime));
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
                   ParameterNode := Treeview1.Items.AddChild(InstNode, 'Notes&Gates');
                   For i:=1 to 8 do
                       begin
                            s :='';
                            For ii:=1 to 16 do
                                begin
                                     BytesRead:=Filestream.Read(Note,1);
                                     PatternpartSynthString := Notestring(Note);
                                     If (PatternpartSynthString ='Err') Then PatternpartSynthString:='Error'+inttostr(Note);
                                     s := s + '|' + PatternpartSynthString;
                                end;
                                Treeview1.Items.AddChild(ParameterNode,'Position ' + inttostr(i) );
                                Treeview1.Items.AddChild(ParameterNode,s);
                       end;

                   //Gatetime 128 Bytes
                   //
                   //
                   For i:=1 to 8 do
                       begin
                            s :='';
                            For ii:=1 to 16 do
                                begin
                                     BytesRead:=Filestream.Read(GateTimeB,1);
                                     Bit0 := ((GateTimeB shr 0) and 1) = 1;
                                     Bit1 := ((GateTimeB shr 1) and 1) = 1;
                                     Bit2 := ((GateTimeB shr 2) and 1) = 1;
                                     Bit3 := ((GateTimeB shr 3) and 1) = 1;
                                     Bit4 := ((GateTimeB shr 4) and 1) = 1;
                                     Bit5 := ((GateTimeB shr 5) and 1) = 1;
                                     Bit6 := ((GateTimeB shr 6) and 1) = 1;
                                     Bit7 := ((GateTimeB shr 7) and 1) = 1;
                                     If Bit7 and Bit6 then Gatetime := (BoolToInt(Bit0)*1+BoolToInt(Bit1)*2+BoolToInt(Bit2)*4+BoolToInt(Bit3)*8+BoolToInt(Bit4)*16+BoolToInt(Bit5)*32)+64+1;
                                     If Bit7 and not Bit6 then Gatetime := (BoolToInt(Bit0)*1+BoolToInt(Bit1)*2+BoolToInt(Bit2)*4+BoolToInt(Bit3)*8+BoolToInt(Bit4)*16+BoolToInt(Bit5)*32)/2+32+1/2;
                                     If not Bit7 and Bit6 then Gatetime := (BoolToInt(Bit0)*1+BoolToInt(Bit1)*2+BoolToInt(Bit2)*4+BoolToInt(Bit3)*8+BoolToInt(Bit4)*16+BoolToInt(Bit5)*32)/4+1/4+16;
                                     If not Bit7 and not Bit6 then Gatetime := (BoolToInt(Bit0)*1+BoolToInt(Bit1)*2+BoolToInt(Bit2)*4+BoolToInt(Bit3)*8+BoolToInt(Bit4)*16+BoolToInt(Bit5)*32)/4+1/4;
                                     s := s + '|' + FloatToStr(Gatetime);
                                end;
                                Treeview1.Items.AddChild(ParameterNode,'Position ' + inttostr(i) );
                                Treeview1.Items.AddChild(ParameterNode,s);
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
                           Waveformstring := GetPCMSynthName(Waveform);
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
                   BytesRead:=Filestream.Read(DLevel,1);
                   Treeview1.Items.AddChild(InstNode, 'Level ' + inttostr(DLevel));
                   BytesRead:=Filestream.Read(DPan,1);
                   Treeview1.Items.AddChild(InstNode, 'Pan ' + inttostr(DPan));
                   BytesRead:=Filestream.Read(DEGTime,1);
                   Treeview1.Items.AddChild(InstNode, 'EG Time ' + inttostr(DEGTime));
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
                   ParameterNode := Treeview1.Items.AddChild(InstNode, 'Notes&Gates');
                   For i:=1 to 8 do
                       begin
                            s :='';
                            For ii:=1 to 16 do
                                begin
                                     BytesRead:=Filestream.Read(Note,1);
                                     PatternpartSynthString := Notestring(Note);
                                     If (PatternpartSynthString ='Err') Then PatternpartSynthString:='Error'+inttostr(Note);
                                     s := s + '|' + PatternpartSynthString;
                                end;
                                Treeview1.Items.AddChild(ParameterNode,'Position ' + inttostr(i) );
                                Treeview1.Items.AddChild(ParameterNode,s);
                       end;

                   //Gatetime 128 Bytes
                   //
                   //
                   For i:=1 to 8 do
                       begin
                            s :='';
                            For ii:=1 to 16 do
                                begin
                                     BytesRead:=Filestream.Read(GateTimeB,1);
                                     Bit0 := ((GateTimeB shr 0) and 1) = 1;
                                     Bit1 := ((GateTimeB shr 1) and 1) = 1;
                                     Bit2 := ((GateTimeB shr 2) and 1) = 1;
                                     Bit3 := ((GateTimeB shr 3) and 1) = 1;
                                     Bit4 := ((GateTimeB shr 4) and 1) = 1;
                                     Bit5 := ((GateTimeB shr 5) and 1) = 1;
                                     Bit6 := ((GateTimeB shr 6) and 1) = 1;
                                     Bit7 := ((GateTimeB shr 7) and 1) = 1;
                                     If Bit7 and Bit6 then Gatetime := (BoolToInt(Bit0)*1+BoolToInt(Bit1)*2+BoolToInt(Bit2)*4+BoolToInt(Bit3)*8+BoolToInt(Bit4)*16+BoolToInt(Bit5)*32)+64+1;
                                     If Bit7 and not Bit6 then Gatetime := (BoolToInt(Bit0)*1+BoolToInt(Bit1)*2+BoolToInt(Bit2)*4+BoolToInt(Bit3)*8+BoolToInt(Bit4)*16+BoolToInt(Bit5)*32)/2+32+1/2;
                                     If not Bit7 and Bit6 then Gatetime := (BoolToInt(Bit0)*1+BoolToInt(Bit1)*2+BoolToInt(Bit2)*4+BoolToInt(Bit3)*8+BoolToInt(Bit4)*16+BoolToInt(Bit5)*32)/4+1/4+16;
                                     If not Bit7 and not Bit6 then Gatetime := (BoolToInt(Bit0)*1+BoolToInt(Bit1)*2+BoolToInt(Bit2)*4+BoolToInt(Bit3)*8+BoolToInt(Bit4)*16+BoolToInt(Bit5)*32)/4+1/4;
                                     s := s + '|' + FloatToStr(Gatetime);
                               end;
                                Treeview1.Items.AddChild(ParameterNode,'Position ' + inttostr(i) );
                                Treeview1.Items.AddChild(ParameterNode,s);
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
                           Waveformstring := GetPCMSynthName(Waveform);
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
                   BytesRead:=Filestream.Read(DLevel,1);
                   Treeview1.Items.AddChild(InstNode, 'Level ' + inttostr(DLevel));
                   BytesRead:=Filestream.Read(DPan,1);
                   Treeview1.Items.AddChild(InstNode, 'Pan ' + inttostr(DPan));
                   BytesRead:=Filestream.Read(DEGTime,1);
                   Treeview1.Items.AddChild(InstNode, 'EG Time ' + inttostr(DEGTime));
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
                   ParameterNode := Treeview1.Items.AddChild(InstNode, 'Notes&Gates');
                   For i:=1 to 8 do
                       begin
                            s :='';
                            For ii:=1 to 16 do
                                begin
                                     BytesRead:=Filestream.Read(Note,1);
                                     PatternpartSynthString:=Notestring(Note);
                                     If (Notestring(Note)='Err') Then PatternpartSynthString:='Error'+inttostr(Note);
                                     s := s + '|' + PatternpartSynthString;
                                end;
                                Treeview1.Items.AddChild(ParameterNode,'Position ' + inttostr(i) );
                                Treeview1.Items.AddChild(ParameterNode,s);
                       end;

                   //Gatetime 128 Bytes
                   //
                   //
                   For i:=1 to 8 do
                       begin
                            s :='';
                            For ii:=1 to 16 do
                                begin
                                     BytesRead:=Filestream.Read(GateTimeB,1);
                                     Bit0 := ((GateTimeB shr 0) and 1) = 1;
                                     Bit1 := ((GateTimeB shr 1) and 1) = 1;
                                     Bit2 := ((GateTimeB shr 2) and 1) = 1;
                                     Bit3 := ((GateTimeB shr 3) and 1) = 1;
                                     Bit4 := ((GateTimeB shr 4) and 1) = 1;
                                     Bit5 := ((GateTimeB shr 5) and 1) = 1;
                                     Bit6 := ((GateTimeB shr 6) and 1) = 1;
                                     Bit7 := ((GateTimeB shr 7) and 1) = 1;
                                     If Bit7 and Bit6 then Gatetime := (BoolToInt(Bit0)*1+BoolToInt(Bit1)*2+BoolToInt(Bit2)*4+BoolToInt(Bit3)*8+BoolToInt(Bit4)*16+BoolToInt(Bit5)*32)+64+1;
                                     If Bit7 and not Bit6 then Gatetime := (BoolToInt(Bit0)*1+BoolToInt(Bit1)*2+BoolToInt(Bit2)*4+BoolToInt(Bit3)*8+BoolToInt(Bit4)*16+BoolToInt(Bit5)*32)/2+32+1/2;
                                     If not Bit7 and Bit6 then Gatetime := (BoolToInt(Bit0)*1+BoolToInt(Bit1)*2+BoolToInt(Bit2)*4+BoolToInt(Bit3)*8+BoolToInt(Bit4)*16+BoolToInt(Bit5)*32)/4+1/4+16;
                                     If not Bit7 and not Bit6 then Gatetime := (BoolToInt(Bit0)*1+BoolToInt(Bit1)*2+BoolToInt(Bit2)*4+BoolToInt(Bit3)*8+BoolToInt(Bit4)*16+BoolToInt(Bit5)*32)/4+1/4;
                                     s := s + '|' + FloatToStr(Gatetime);
                                end;
                                Treeview1.Items.AddChild(ParameterNode,'Beat ' + inttostr(i) );
                                Treeview1.Items.AddChild(ParameterNode,s);
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
                           Waveformstring := GetPCMSynthName(Waveform);
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
                   BytesRead:=Filestream.Read(DLevel,1);
                   Treeview1.Items.AddChild(InstNode, 'Level ' + inttostr(DLevel));
                   BytesRead:=Filestream.Read(DPan,1);
                   Treeview1.Items.AddChild(InstNode, 'Pan ' + inttostr(DPan));
                   BytesRead:=Filestream.Read(DEGTime,1);
                   Treeview1.Items.AddChild(InstNode, 'EG Time ' + inttostr(DEGTime));
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
                   ParameterNode := Treeview1.Items.AddChild(InstNode, 'Notes&Gates');
                   For i:=1 to 8 do
                       begin
                            s :='';
                            For ii:=1 to 16 do
                                begin
                                     BytesRead:=Filestream.Read(Note,1);
                                     PatternpartSynthString:=Notestring(Note);
                                     If (Notestring(Note)='Err') Then PatternpartSynthString:='Error'+inttostr(Note);
                                     s := s + '|' + PatternpartSynthString;
                                end;
                                Treeview1.Items.AddChild(ParameterNode,'Position ' + inttostr(i) );
                                Treeview1.Items.AddChild(ParameterNode,s);
                       end;

                   //Gatetime 128 Bytes
                   //
                   //
                   For i:=1 to 8 do
                       begin
                            s :='';
                            For ii:=1 to 16 do
                                begin
                                     BytesRead:=Filestream.Read(GateTimeB,1);
                                     Bit0 := ((GateTimeB shr 0) and 1) = 1;
                                     Bit1 := ((GateTimeB shr 1) and 1) = 1;
                                     Bit2 := ((GateTimeB shr 2) and 1) = 1;
                                     Bit3 := ((GateTimeB shr 3) and 1) = 1;
                                     Bit4 := ((GateTimeB shr 4) and 1) = 1;
                                     Bit5 := ((GateTimeB shr 5) and 1) = 1;
                                     Bit6 := ((GateTimeB shr 6) and 1) = 1;
                                     Bit7 := ((GateTimeB shr 7) and 1) = 1;
                                     If Bit7 and Bit6 then Gatetime := (BoolToInt(Bit0)*1+BoolToInt(Bit1)*2+BoolToInt(Bit2)*4+BoolToInt(Bit3)*8+BoolToInt(Bit4)*16+BoolToInt(Bit5)*32)+64+1;
                                     If Bit7 and not Bit6 then Gatetime := (BoolToInt(Bit0)*1+BoolToInt(Bit1)*2+BoolToInt(Bit2)*4+BoolToInt(Bit3)*8+BoolToInt(Bit4)*16+BoolToInt(Bit5)*32)/2+32+1/2;
                                     If not Bit7 and Bit6 then Gatetime := (BoolToInt(Bit0)*1+BoolToInt(Bit1)*2+BoolToInt(Bit2)*4+BoolToInt(Bit3)*8+BoolToInt(Bit4)*16+BoolToInt(Bit5)*32)/4+1/4+16;
                                     If not Bit7 and not Bit6 then Gatetime := (BoolToInt(Bit0)*1+BoolToInt(Bit1)*2+BoolToInt(Bit2)*4+BoolToInt(Bit3)*8+BoolToInt(Bit4)*16+BoolToInt(Bit5)*32)/4+1/4;
                                     s := s + '|' + FloatToStr(Gatetime);
                                end;
                                Treeview1.Items.AddChild(ParameterNode,'Beat ' + inttostr(i) );
                                Treeview1.Items.AddChild(ParameterNode,s);
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
                           Waveformstring := GetPCMSynthName(Waveform);
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
                   BytesRead:=Filestream.Read(DLevel,1);
                   Treeview1.Items.AddChild(InstNode, 'Level ' + inttostr(DLevel));
                   BytesRead:=Filestream.Read(DPan,1);
                   Treeview1.Items.AddChild(InstNode, 'Pan ' + inttostr(DPan));
                   BytesRead:=Filestream.Read(DEGTime,1);
                   Treeview1.Items.AddChild(InstNode, 'EG Time ' + inttostr(DEGTime));
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
                   ParameterNode := Treeview1.Items.AddChild(InstNode, 'Notes&Gates');
                   For i:=1 to 8 do
                       begin
                            s :='';
                            For ii:=1 to 16 do
                                begin
                                     BytesRead:=Filestream.Read(Note,1);
                                     PatternpartSynthString:=Notestring(Note);
                                     If (Notestring(Note)='Err') Then PatternpartSynthString:='Error'+inttostr(Note);
                                     s := s + '|' + PatternpartSynthString;
                                end;
                                Treeview1.Items.AddChild(ParameterNode,'Position ' + inttostr(i) );
                                Treeview1.Items.AddChild(ParameterNode,s);
                       end;

                   //Gatetime 128 Bytes
                   //
                   //
                   For i:=1 to 8 do
                       begin
                            s :='';
                            For ii:=1 to 16 do
                                begin
                                     BytesRead:=Filestream.Read(GateTimeB,1);
                                     Bit0 := ((GateTimeB shr 0) and 1) = 1;
                                     Bit1 := ((GateTimeB shr 1) and 1) = 1;
                                     Bit2 := ((GateTimeB shr 2) and 1) = 1;
                                     Bit3 := ((GateTimeB shr 3) and 1) = 1;
                                     Bit4 := ((GateTimeB shr 4) and 1) = 1;
                                     Bit5 := ((GateTimeB shr 5) and 1) = 1;
                                     Bit6 := ((GateTimeB shr 6) and 1) = 1;
                                     Bit7 := ((GateTimeB shr 7) and 1) = 1;
                                     If Bit7 and Bit6 then Gatetime := (BoolToInt(Bit0)*1+BoolToInt(Bit1)*2+BoolToInt(Bit2)*4+BoolToInt(Bit3)*8+BoolToInt(Bit4)*16+BoolToInt(Bit5)*32)+64+1;
                                     If Bit7 and not Bit6 then Gatetime := (BoolToInt(Bit0)*1+BoolToInt(Bit1)*2+BoolToInt(Bit2)*4+BoolToInt(Bit3)*8+BoolToInt(Bit4)*16+BoolToInt(Bit5)*32)/2+32+1/2;
                                     If not Bit7 and Bit6 then Gatetime := (BoolToInt(Bit0)*1+BoolToInt(Bit1)*2+BoolToInt(Bit2)*4+BoolToInt(Bit3)*8+BoolToInt(Bit4)*16+BoolToInt(Bit5)*32)/4+1/4+16;
                                     If not Bit7 and not Bit6 then Gatetime := (BoolToInt(Bit0)*1+BoolToInt(Bit1)*2+BoolToInt(Bit2)*4+BoolToInt(Bit3)*8+BoolToInt(Bit4)*16+BoolToInt(Bit5)*32)/4+1/4;
                                     s := s + '|' + FloatToStr(Gatetime);
                                end;
                                Treeview1.Items.AddChild(ParameterNode,'Position ' + inttostr(i) );
                                Treeview1.Items.AddChild(ParameterNode,s);
                       end;

                   // Drum Accent
                   ParameterNode := Treeview1.Items.AddChild(NameNode, 'Drum Accent Parameter');
                   BytesRead:=Filestream.Read(Reserved,1); //D1LevelV
                   Treeview1.Items.AddChild(ParameterNode,'Level ' + inttostr(Reserved));
                   BytesRead:=Filestream.Read(Reserved,1); //Trig Hold :)
                   If (Reserved=2) then
                      s:='On'
                   Else
                      s:='Off';
                   Treeview1.Items.AddChild(ParameterNode,'Trig Hold ' + s);
;

                   ParameterNode := Treeview1.Items.AddChild(NameNode, 'Drum Accent Sequence');

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
                           Treeview1.Items.AddChild(ParameterNode,'Position ' + inttostr(i) );
                           Treeview1.Items.AddChild(ParameterNode,s);
                       end;

                   // Synth Accent
                   ParameterNode := Treeview1.Items.AddChild(NameNode, 'Synth Accent Parameter');
                   BytesRead:=Filestream.Read(Reserved,1); //D1LevelV
                   Treeview1.Items.AddChild(ParameterNode,'Level ' + inttostr(Reserved));
                   BytesRead:=Filestream.Read(Reserved,1); //Trig Hold :)
                   If (Reserved=2) then
                     s:='On'
                   Else
                     s:='Off';
                   Treeview1.Items.AddChild(ParameterNode,'Trig Hold ' + s);

                   ParameterNode := Treeview1.Items.AddChild(NameNode, 'Synth Accent Sequence');
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
                       Treeview1.Items.AddChild(ParameterNode,'Position ' + inttostr(i) );
                       Treeview1.Items.AddChild(ParameterNode,s);
                       end;




                   // The FX Section
                   ParameterNode := Treeview1.Items.AddChild(NameNode, 'Effect Section');
                   BytesRead:=Filestream.Read(SelectedFX,1);
                   Case SelectedFX of
                     0 : s:='Reverb';
     		1 : s:='BPM Sync Delay';
     		2 : s:='Short Delay';
     		3 : s:='Mod Delay';
     		4 : s:='Grain Shifter';
     		5 : s:='Cho/Fla';
     		6 : s:='Phaser';
     		7 : s:='Ring Mod';
     		8 : s:='Talking Mod';
     		9 : s:='Pitch Shifter';
     		10 : s:='Compressor';
     		11 : s:='Distortion';
     		12 : s:='Decimator';
     		13 : s:='EQ';
     		14 : s:='LPF';
     		15 : s:='HPF';
                   end;
                   Treeview1.Items.AddChild(ParameterNode,'FX 1: ' + s);
                   BytesRead:=Filestream.Read(FXParameter1,1);
                   Treeview1.Items.AddChild(ParameterNode,'FX 1 Parameter 1 ' + inttostr(FXParameter1) );
                   BytesRead:=Filestream.Read(FXParameter2,1);
                   Treeview1.Items.AddChild(ParameterNode,'FX 1 Parameter 2 ' + inttostr(FXParameter2) );
                   BytesRead:=Filestream.Read(FX1MotionSeq,1);
                   If (FX1MotionSeq=1) then
                     s:='On'
                   Else
                     s:='Off';
                   Treeview1.Items.AddChild(ParameterNode,'FX 1 Motion Seq. is ' + s);
                   BytesRead:=Filestream.Read(SelectedFX,1);
                   Case SelectedFX of
                     0 : s:='Reverb';
     		1 : s:='BPM Sync Delay';
     		2 : s:='Short Delay';
     		3 : s:='Mod Delay';
     		4 : s:='Grain Shifter';
     		5 : s:='Cho/Fla';
     		6 : s:='Phaser';
     		7 : s:='Ring Mod';
     		8 : s:='Talking Mod';
     		9 : s:='Pitch Shifter';
     		10 : s:='Compressor';
     		11 : s:='Distortion';
     		12 : s:='Decimator';
     		13 : s:='EQ';
     		14 : s:='LPF';
     		15 : s:='HPF';
                   end;
                   Treeview1.Items.AddChild(ParameterNode,'FX 2: ' + s);
                   BytesRead:=Filestream.Read(FXParameter1,1);
                   Treeview1.Items.AddChild(ParameterNode,'FX 2 Parameter 1 ' + inttostr(FXParameter1) );
                   BytesRead:=Filestream.Read(FXParameter2,1);
                   Treeview1.Items.AddChild(ParameterNode,'FX 2 Parameter 2 ' + inttostr(FXParameter2) );
                   BytesRead:=Filestream.Read(FX1MotionSeq,1);
                   If (FX1MotionSeq=1) then
                     s:='On'
                   Else
                     s:='Off';
                   Treeview1.Items.AddChild(ParameterNode,'FX 2 Motion Seq. is ' + s);
                   BytesRead:=Filestream.Read(SelectedFX,1);
                   Case SelectedFX of
                     0 : s:='Reverb';
     		1 : s:='BPM Sync Delay';
     		2 : s:='Short Delay';
     		3 : s:='Mod Delay';
     		4 : s:='Grain Shifter';
     		5 : s:='Cho/Fla';
     		6 : s:='Phaser';
     		7 : s:='Ring Mod';
     		8 : s:='Talking Mod';
     		9 : s:='Pitch Shifter';
     		10 : s:='Compressor';
     		11 : s:='Distortion';
     		12 : s:='Decimator';
     		13 : s:='EQ';
     		14 : s:='LPF';
     		15 : s:='HPF';
                   end;
                   Treeview1.Items.AddChild(ParameterNode,'FX 3: ' + s);
                   BytesRead:=Filestream.Read(FXParameter1,1);
                   Treeview1.Items.AddChild(ParameterNode,'FX 3 Parameter 1 ' + inttostr(FXParameter1) );
                   BytesRead:=Filestream.Read(FXParameter2,1);
                   Treeview1.Items.AddChild(ParameterNode,'FX 3 Parameter 2 ' + inttostr(FXParameter2) );
                   BytesRead:=Filestream.Read(FX1MotionSeq,1);
                   If (FX1MotionSeq=1) then
                     s:='On'
                   Else
                     s:='Off';
                   Treeview1.Items.AddChild(ParameterNode,'FX 3 Motion Seq. is ' + s);




                   // 24 Motion Sequences
                   InstNode := Treeview1.Items.AddChild(NameNode, 'Motion Sequences');
                   For i := 1 to 24 do Begin
                             // Tabelle 23 noch integrieren
                             BytesRead:=Filestream.Read(OperationNo,2);
                             s := right(HEXFN(Lo(OperationNo)),2) + right(HEXFN(Hi(OperationNo)),2);
                             // right(const txt:String; len:integer);

                             If (OperationNo=65535) then s:='Empty ';
                             ParameterNode := Treeview1.Items.AddChild(InstNode, s);
                             For ii := 1 to 8 Do Begin
                                 s:='';
                                 For iii := 1 to 16 Do Begin
                                     BytesRead:=Filestream.Read(MotionSequenceB,1);
                                     s := s + '|' + inttostr(MotionSequenceB);
                                 end;
                                 Treeview1.Items.AddChild(ParameterNode,'Position ' + inttostr(ii));
                                 Treeview1.Items.AddChild(ParameterNode,s);
                             end;
                   end;
                   //Patternbase := Patternbase + 4806;
                   ProgressPos := ProgressPos+1;
                   ProgressBar1.Position := ProgressPos;
              end;

          end;
          // Song Data
          // $130000
          Songbase := 1245184;
          NameNode := Treeview1.Items.AddChild(FileNode, '- Songs -');
          FileStream.Position := Songbase;
          For Songi := 1 to 64 do begin
              //FileStream.Position := Songbase;
              BytesRead:=Filestream.Read(Buffer[0],8);
              setlength(Patternname, 8);
              move(Buffer[0], Patternname[1],8);
              SongNode := Treeview1.Items.AddChild(NameNode, Patternname);

              BytesRead:=Filestream.Read(Tempo,1);
              BytesRead:=Filestream.Read(TempoK,1);
              TempoR:= Tempo*2+TempoK/128; //No idea if i calculate it right. :)
              //TempoK has values between 0.1 and 1.9
              PSNode := Treeview1.Items.AddChild(SongNode, 'Tempo:' + FloatToStr(TempoR));
              //Treeview1.Items.AddChild(PSNode, FloatToStr(TempoR));
              //TempoLock
              BytesRead:=Filestream.Read(TempoLock,1);
              If (TempoLock=1) then
                      s:='On'
                   Else
                      s:='Off';
              Treeview1.Items.AddChild(SongNode, 'Tempo lock: ' + s);

              //Length
              BytesRead:=Filestream.Read(Songlength,1);
              Treeview1.Items.AddChild(SongNode, 'Song Length: ' + IntToStr(Songlength+1));

              //Mute Hold 0/1 : Off/On
              BytesRead:=Filestream.Read(MuteHold,1);
              If (MuteHold=1) then
                      s:='On'
                   Else
                      s:='Off';
              Treeview1.Items.AddChild(SongNode, 'Mute Hold: ' + s);

              //Next Song 0-64  Off,song1~song64
              BytesRead:=Filestream.Read(NextSong,1);
              Treeview1.Items.AddChild(SongNode, 'Next Song: ' + IntToStr(NextSong));

              //Num of Events 0~19999
              BytesRead:=Filestream.Read(Eventnumbers,2);
              Treeview1.Items.AddChild(SongNode, 'Numbers of Event: ' + FloatToStr(Eventnumbers));

              //PatternNumbers
              PSNode := Treeview1.Items.AddChild(SongNode, 'Patterns');
              PatternCounter := 0;
              For i:=1 to 16 do
                  begin
                       s :='';
                       For ii:=1 to 16 do
                           begin
                                BytesRead:=Filestream.Read(PatternNumber,1);
                                If not (PatternCounter > Songlength) And (PatternNumber <64) And (PatternNumber >9) then PatternString := 'A'+inttostr(PatternNumber+1);
                                If not (PatternCounter > Songlength) And (PatternNumber <64) And (PatternNumber <10) then PatternString := 'A0'+inttostr(PatternNumber+1);
                                If not (PatternCounter > Songlength) And (PatternNumber <127) And (PatternNumber >72) then PatternString := 'B'+inttostr(PatternNumber-63);
                                If not (PatternCounter > Songlength) And (PatternNumber >63) And (PatternNumber <73) then PatternString := 'B0'+inttostr(PatternNumber-63);
                                If not (PatternCounter > Songlength) And (PatternNumber <191) And (PatternNumber >136) then PatternString := 'C'+inttostr(PatternNumber-127);
                                If not (PatternCounter > Songlength) And (PatternNumber >127) And (PatternNumber <137) then PatternString := 'C0'+inttostr(PatternNumber-127);
                                If not (PatternCounter > Songlength) And (PatternNumber >201) then PatternString := 'D'+inttostr(PatternNumber-191);
                                If not (PatternCounter > Songlength) And (PatternNumber >191) And (PatternNumber <201) then PatternString := 'D0'+inttostr(PatternNumber-191);
                                If (PatternCounter > Songlength) then PatternString :='---';
                                s := s + '|' + PatternString;
                                PatternCounter := PatternCounter+1;
                           end;
                           Treeview1.Items.AddChild(PSNode,s);
                  end;
              //Noteoffset
              PSNode := Treeview1.Items.AddChild(SongNode, 'Note Offset');
              For i:=1 to 16 do
                  begin
                       s :='';
                       For ii:=1 to 16 do
                           begin
                                BytesRead:=Filestream.Read(NoteOffset,1);
                                s := s + '|' + IntToStr(NoteOffset);
                           end;
                           Treeview1.Items.AddChild(PSNode,s);
                  end;
              ProgressPos := ProgressPos+1;
              ProgressBar1.Position := ProgressPos;
              //Songbase := Songbase + 528;
          end;
          FileStream.Free;
          ProgressBar1.visible := False;
          ProgressBar1.Style:=pbstNormal;
   end;
End;

procedure TMainForm.WaveformSynth2Update();
Var
   i:integer;
begin
WaveformSynth2.Items.clear;
 If (SynthoscSynth2.ItemIndex=0) or (SynthoscSynth2.ItemIndex=7) or (SynthoscSynth2.ItemIndex=9) then
 	begin

 		WaveformSynth2.AddItem('Saw',NIL);
 		WaveformSynth2.AddItem('Pulse',NIL);
 		WaveformSynth2.AddItem('Tri',NIL);
 		WaveformSynth2.AddItem('Sin',NIL);
        WaveformSynthC2.Caption:='4';
 end;
 If (SynthoscSynth2.ItemIndex=1) or (SynthoscSynth2.ItemIndex=4) or (SynthoscSynth2.ItemIndex=6) then
 	begin

 		WaveformSynth2.AddItem('SawSaw',NIL);
 		WaveformSynth2.AddItem('SawSqu',NIL);
 		WaveformSynth2.AddItem('SawTri',NIL);
 		WaveformSynth2.AddItem('SawSin',NIL);
 		WaveformSynth2.AddItem('SawNs',NIL);
 		WaveformSynth2.AddItem('SquSaw',NIL);
 		WaveformSynth2.AddItem('SquSqu',NIL);
 		WaveformSynth2.AddItem('SquTri',NIL);
 		WaveformSynth2.AddItem('SquSin',NIL);
 		WaveformSynth2.AddItem('SquNs',NIL);
 		WaveformSynth2.AddItem('TriSaw',NIL);
 		WaveformSynth2.AddItem('TriSqu',NIL);
 		WaveformSynth2.AddItem('TriTri',NIL);
 		WaveformSynth2.AddItem('TriSin',NIL);
 		WaveformSynth2.AddItem('TriNs',NIL);
 		WaveformSynth2.AddItem('SinSaw',NIL);
 		WaveformSynth2.AddItem('SinSqu',NIL);
 		WaveformSynth2.AddItem('SinTri',NIL);
 		WaveformSynth2.AddItem('SinSin',NIL);
 		WaveformSynth2.AddItem('SinNs',NIL);
                WaveformSynthC2.Caption:='20';
 	end;
 If (SynthoscSynth2.ItemIndex=2) or (SynthoscSynth2.ItemIndex=5) then
 begin

 		WaveformSynth2.AddItem('Saw',NIL);
 		WaveformSynth2.AddItem('Sin',NIL);
                WaveformSynthC2.Caption:='2';
 end;
 If (SynthoscSynth2.ItemIndex=3) then
 	begin

 		WaveformSynth2.AddItem('3Saw',NIL);
 		WaveformSynth2.AddItem('4Saw',NIL);
 		WaveformSynth2.AddItem('5Saw',NIL);
 		WaveformSynth2.AddItem('6Saw',NIL);
 		WaveformSynth2.AddItem('3Squ',NIL);
 		WaveformSynth2.AddItem('4Squ',NIL);
 		WaveformSynth2.AddItem('5Squ',NIL);
 		WaveformSynth2.AddItem('6Squ',NIL);
 		WaveformSynth2.AddItem('3Tri',NIL);
 		WaveformSynth2.AddItem('4Tri',NIL);
 		WaveformSynth2.AddItem('5Tri',NIL);
 		WaveformSynth2.AddItem('6Tri',NIL);
 		WaveformSynth2.AddItem('3Sin',NIL);
 		WaveformSynth2.AddItem('4Sin',NIL);
 		WaveformSynth2.AddItem('5Sin',NIL);
 		WaveformSynth2.AddItem('6Sin',NIL);
        WaveformSynthC2.Caption:='16';
 end;
 If (SynthoscSynth2.ItemIndex=8) then
 	begin

 		WaveformSynth2.AddItem('Type 1',NIL);
 		WaveformSynth2.AddItem('Type 2',NIL);
        WaveformSynthC2.Caption:='20';
 end;
 If (SynthoscSynth2.ItemIndex=10) then
 	begin

 		WaveformSynth2.AddItem('Saw',NIL);
 		WaveformSynth2.AddItem('Pulse',NIL);
 		WaveformSynth2.AddItem('Tri',NIL);
 		WaveformSynth2.AddItem('Sin',NIL);
 		WaveformSynth2.AddItem('Noise',NIL);
        WaveformSynthC2.Caption:='5';
 end;
 If (SynthoscSynth2.ItemIndex=11) or (SynthoscSynth2.ItemIndex=12) or (SynthoscSynth2.ItemIndex=15) then
      Begin
            WaveformSynth2.AddItem('------',NIL);
            WaveformSynthC2.Caption:='1';
      end;


 If (SynthoscSynth2.ItemIndex=13) or (SynthoscSynth2.ItemIndex=14) then begin
		For i:=1 to 76 do begin
			WaveformSynth2.AddItem(GetPCMSynthName(i),Nil);
			end;
		//WaveformSynth2.AddItem('PCM '+ inttostr(Waveform),NIL);
		WaveformSynthC2.Caption:='76';
 end;
 WaveformSynth2.ItemIndex:=0;

end;

procedure TMainForm.LoadDrum1Parameter(Drumname : String;Patternname : String;Bankname : String;Filename : String);
var
  Drumbase:Integer;
  Patternnummer:Integer;
  BytesRead : Integer;
  FileStream : TFileStream;
  Patternbase: Integer;
begin
  Case Drumname of
	   'Drum 1' : Drumbase := 24;
	   'Drum 2' : Drumbase := 50;
	   'Drum 3' : Drumbase := 76;
	   'Drum 4' : Drumbase := 102;
	   'Drum 5' : Drumbase := 128;
	   'Drum 6A' : Drumbase := 154;
	   'Drum 6B' : Drumbase := 180;
	   'Drum 7A' : Drumbase := 206;
	   'Drum 7B' : Drumbase := 232;
  end;

  Patternnummer := (strtoint(leftstr(Patternname,2))-1)*4806;
  If (Bankname='Bank A') Then Patternbase:=512+Patternnummer;
  If (Bankname='Bank B') Then Patternbase:=512+64*4806+Patternnummer;
  If (Bankname='Bank C') Then Patternbase:=512+128*4806+Patternnummer;
  If (Bankname='Bank D') Then Patternbase:=512+192*4806+Patternnummer;
  FileStream := tFileStream.Create (filename,fmShareDenyNone);
  FileStream.Position := Patternbase+Drumbase;
  // Let's Rock
  BytesRead:=Filestream.Read(Samplebanknumber,1);
  D1Sample.ItemIndex:=Samplebanknumber;
  BytesRead:=Filestream.Read(Pitch,1);
  D1Pitch.Position:=Pitch-64;
  BytesRead:=Filestream.Read(DLevel,1);
  D1Level.Position := DLevel;
  BytesRead:=Filestream.Read(DPan,1);
  D1Pan.Position:=DPan-64;
  BytesRead:=Filestream.Read(DEGTime,1);
  D1EGTime.Position:=DEGTime;

  BytesRead:=Filestream.Read(FSSSRA,1);
  D1AmpEGB.state := cbUnchecked;
  EnvLED2_1.Color:=$004080FF;
  EnvLED1_1.Color:=clSilver;
  D1RollB.State:= cbUnchecked;
  D1RollB.Caption:='Roll Off';
  D1FXSend.State:= cbUnchecked;
  D1FXSend.Caption:='FX Send Off';
  D1FXSelect.ItemIndex:=0;
  If (FSSSRA > 15) Then
	 begin
		  D1AmpEGB.state := cbchecked;
                  EnvLED2_1.Color:=clSilver;
                  EnvLED1_1.Color:=$004080FF;
		  FSSSRA:=FSSSRA-16;
	 End;
  If (FSSSRA > 7) Then
	 begin
		  D1RollB.State:= cbchecked;
                  D1RollB.Caption:='Roll On';
		  FSSSRA:=FSSSRA-8;
	 End;
  If (FSSSRA > 3) Then
	 begin
		  D1FXSend.State:= cbchecked;
                  D1FXSend.Caption:='FX Send On';
		  FSSSRA:=FSSSRA-4;
	 End;
   If (FSSSRA = 2) Then
	 begin
		  D1FXSelect.ItemIndex:=2;
	 End;
   If (FSSSRA = 1) Then
	  begin
		  D1FXSelect.ItemIndex:=1;
	  End;


  BytesRead:=Filestream.Read(MTDBS,1);
  D1ModType.ItemIndex:=0;
  D1BPMSync.state:=cbUnchecked;
  D1BPMSync.Caption:='BPM Sync Off';
  If (MTDBS > 127) Then
	 begin
		  D1BPMSync.state:=cbChecked;
                  D1BPMSync.Caption:='BPM Sync On';
                  MTDBS:=MTDBS-128;
	 End;
  If (MTDBS > 63) Then
	 begin
		  D1ModType.ItemIndex:=4;
		  MTDBS:=MTDBS-64;
	 End;
  If (MTDBS > 47) Then
	 begin
		  D1ModType.ItemIndex:=3;
		  MTDBS:=MTDBS-48;
	 End;
  If (MTDBS > 31) Then
	 begin
		  D1ModType.ItemIndex:=2;
		  MTDBS:=MTDBS-32;
	 End;
  If (MTDBS > 15) Then
	 begin
		  D1ModType.ItemIndex:=0;
		  MTDBS:=MTDBS-16;
	 End;
  D1ModDest.ItemIndex:=MTDBS;

  BytesRead:=Filestream.Read(ModulationSpeed,1);
  D1ModSpeed.Position := ModulationSpeed;
  BytesRead:=Filestream.Read(ModulationDepth,1);
  D1ModDepth.Position := ModulationDepth-64;
  BytesRead:=Filestream.Read(MotionSeqS,1);
  //ShowMessage(inttostr(MotionSeqS));
  D1MotionSeq.ItemIndex :=MotionSeqS;

  //Ende File lesen
  FileStream.Free;

end;

procedure TMainForm.LoadDrum2Parameter(Drumname : String;Patternname : String;Bankname : String;Filename : String);
var
  Drumbase:Integer;
  Patternnummer:Integer;
  BytesRead : Integer;
  FileStream : TFileStream;
  Patternbase: Integer;
begin
  Case Drumname of
	   'Drum 1' : Drumbase := 24;
	   'Drum 2' : Drumbase := 50;
	   'Drum 3' : Drumbase := 76;
	   'Drum 4' : Drumbase := 102;
	   'Drum 5' : Drumbase := 128;
	   'Drum 6A' : Drumbase := 154;
	   'Drum 6B' : Drumbase := 180;
	   'Drum 7A' : Drumbase := 206;
	   'Drum 7B' : Drumbase := 232;
  end;

  Patternnummer := (strtoint(leftstr(Patternname,2))-1)*4806;
  If (Bankname='Bank A') Then Patternbase:=512+Patternnummer;
  If (Bankname='Bank B') Then Patternbase:=512+64*4806+Patternnummer;
  If (Bankname='Bank C') Then Patternbase:=512+128*4806+Patternnummer;
  If (Bankname='Bank D') Then Patternbase:=512+192*4806+Patternnummer;
  FileStream := tFileStream.Create (filename,fmShareDenyNone);
  FileStream.Position := Patternbase+Drumbase;
  // Let's Rock
  BytesRead:=Filestream.Read(Samplebanknumber,1);
  D1Sample1.ItemIndex:=Samplebanknumber;
  BytesRead:=Filestream.Read(Pitch,1);
  D1Pitch1.Position:=Pitch-64;
  BytesRead:=Filestream.Read(DLevel,1);
  D1Level1.Position := DLevel;
  BytesRead:=Filestream.Read(DPan,1);
  D1Pan1.Position:=DPan-64;
  BytesRead:=Filestream.Read(DEGTime,1);
  D1EGTime1.Position:=DEGTime;

  BytesRead:=Filestream.Read(FSSSRA,1);
  D1AmpEGB1.state := cbUnchecked;
  EnvLED2_2.Color:=$004080FF;
  EnvLED1_2.Color:=clSilver;
  D1RollB1.State:= cbUnchecked;
  D1RollB1.Caption:='Roll Off';
  D1FXSend1.State:= cbUnchecked;
  D1FXSend1.Caption:='FX Send Off';
  D1FXSelect1.ItemIndex:=0;
  If (FSSSRA > 15) Then
	 begin
		  D1AmpEGB1.state := cbchecked;
                  EnvLED2_2.Color:=clSilver;
                  EnvLED1_2.Color:=$004080FF;
		  FSSSRA:=FSSSRA-16;
	 End;
  If (FSSSRA > 7) Then
	 begin
		  D1RollB1.State:= cbchecked;
                  D1RollB1.Caption:='Roll On';
		  FSSSRA:=FSSSRA-8;
	 End;
  If (FSSSRA > 3) Then
	 begin
		  D1FXSend1.State:= cbchecked;
                  D1FXSend1.Caption:='FX Send On';
		  FSSSRA:=FSSSRA-4;
	 End;
   If (FSSSRA = 2) Then
	 begin
		  D1FXSelect1.ItemIndex:=2;
	 End;
   If (FSSSRA = 1) Then
	  begin
		  D1FXSelect1.ItemIndex:=1;
	  End;


  BytesRead:=Filestream.Read(MTDBS,1);
  D1ModType1.ItemIndex:=0;
  D1BPMSync1.state:=cbUnchecked;
  D1BPMSync1.Caption:='BPM Sync Off';
  If (MTDBS > 127) Then
	 begin
		  D1BPMSync1.state:=cbChecked;
                  D1BPMSync1.Caption:='BPM Sync On';
		  MTDBS:=MTDBS-128;
	 End;
  If (MTDBS > 63) Then
	 begin
		  D1ModType1.ItemIndex:=4;
		  MTDBS:=MTDBS-64;
	 End;
  If (MTDBS > 47) Then
	 begin
		  D1ModType1.ItemIndex:=3;
		  MTDBS:=MTDBS-48;
	 End;
  If (MTDBS > 31) Then
	 begin
		  D1ModType1.ItemIndex:=2;
		  MTDBS:=MTDBS-32;
	 End;
  If (MTDBS > 15) Then
	 begin
		  D1ModType1.ItemIndex:=0;
		  MTDBS:=MTDBS-16;
	 End;
  D1ModDest1.ItemIndex:=MTDBS;

  BytesRead:=Filestream.Read(ModulationSpeed,1);
  D1ModSpeed1.Position := ModulationSpeed;
  BytesRead:=Filestream.Read(ModulationDepth,1);
  D1ModDepth1.Position := ModulationDepth-64;
  BytesRead:=Filestream.Read(MotionSeqS,1);
  D1MotionSeq1.ItemIndex :=MotionSeqS;

  //Ende File lesen
  FileStream.Free;

end;

procedure TMainForm.LoadDrum3Parameter(Drumname : String;Patternname : String;Bankname : String;Filename : String);
var
  Drumbase:Integer;
  Patternnummer:Integer;
  BytesRead : Integer;
  FileStream : TFileStream;
  Patternbase: Integer;
begin
  Case Drumname of
	   'Drum 1' : Drumbase := 24;
	   'Drum 2' : Drumbase := 50;
	   'Drum 3' : Drumbase := 76;
	   'Drum 4' : Drumbase := 102;
	   'Drum 5' : Drumbase := 128;
	   'Drum 6A' : Drumbase := 154;
	   'Drum 6B' : Drumbase := 180;
	   'Drum 7A' : Drumbase := 206;
	   'Drum 7B' : Drumbase := 232;
  end;

  Patternnummer := (strtoint(leftstr(Patternname,2))-1)*4806;
  If (Bankname='Bank A') Then Patternbase:=512+Patternnummer;
  If (Bankname='Bank B') Then Patternbase:=512+64*4806+Patternnummer;
  If (Bankname='Bank C') Then Patternbase:=512+128*4806+Patternnummer;
  If (Bankname='Bank D') Then Patternbase:=512+192*4806+Patternnummer;
  FileStream := tFileStream.Create (filename,fmShareDenyNone);
  FileStream.Position := Patternbase+Drumbase;
  // Let's Rock
  BytesRead:=Filestream.Read(Samplebanknumber,1);
  D1Sample2.ItemIndex:=Samplebanknumber;
  BytesRead:=Filestream.Read(Pitch,1);
  D1Pitch2.Position:=Pitch-64;
  BytesRead:=Filestream.Read(DLevel,1);
  D1Level2.Position := DLevel;
  BytesRead:=Filestream.Read(DPan,1);
  D1Pan2.Position:=DPan-64;
  BytesRead:=Filestream.Read(DEGTime,1);
  D1EGTime2.Position:=DEGTime;

  BytesRead:=Filestream.Read(FSSSRA,1);
  D1AmpEGB2.state := cbUnchecked;
  EnvLED2_3.Color:=$004080FF;
  EnvLED1_3.Color:=clSilver;
  D1RollB2.State:= cbUnchecked;
  D1RollB2.Caption:='Roll Off';
  D1FXSend2.State:= cbUnchecked;
  D1FXSend2.Caption:='FX Send Off';
  D1FXSelect2.ItemIndex:=0;
  If (FSSSRA > 15) Then
	 begin
		  D1AmpEGB2.state := cbchecked;
                  EnvLED2_3.Color:=clSilver;
                  EnvLED1_3.Color:=$004080FF;
		  FSSSRA:=FSSSRA-16;
	 End;
  If (FSSSRA > 7) Then
	 begin
		  D1RollB2.State:= cbchecked;
                  D1RollB2.Caption:='Roll On';
		  FSSSRA:=FSSSRA-8;
	 End;
  If (FSSSRA > 3) Then
	 begin
		  D1FXSend2.State:= cbchecked;
                  D1FXSend2.Caption:='FX Send On';
		  FSSSRA:=FSSSRA-4;
	 End;
   If (FSSSRA = 2) Then
	 begin
		  D1FXSelect2.ItemIndex:=2;
	 End;
   If (FSSSRA = 1) Then
	  begin
		  D1FXSelect2.ItemIndex:=1;
	  End;


  BytesRead:=Filestream.Read(MTDBS,1);
  D1ModType2.ItemIndex:=0;
  D1BPMSync2.state:=cbUnchecked;
  D1BPMSync2.Caption:='BPM Sync Off';
  If (MTDBS > 127) Then
	 begin
		  D1BPMSync2.state:=cbChecked;
                  D1BPMSync2.Caption:='BPM Sync On';
		  MTDBS:=MTDBS-128;
	 End;
  If (MTDBS > 63) Then
	 begin
		  D1ModType2.ItemIndex:=4;
		  MTDBS:=MTDBS-64;
	 End;
  If (MTDBS > 47) Then
	 begin
		  D1ModType2.ItemIndex:=3;
		  MTDBS:=MTDBS-48;
	 End;
  If (MTDBS > 31) Then
	 begin
		  D1ModType2.ItemIndex:=2;
		  MTDBS:=MTDBS-32;
	 End;
  If (MTDBS > 15) Then
	 begin
		  D1ModType2.ItemIndex:=0;
		  MTDBS:=MTDBS-16;
	 End;
  D1ModDest2.ItemIndex:=MTDBS;

  BytesRead:=Filestream.Read(ModulationSpeed,1);
  D1ModSpeed2.Position := ModulationSpeed;
  BytesRead:=Filestream.Read(ModulationDepth,1);
  D1ModDepth2.Position := ModulationDepth-64;
  BytesRead:=Filestream.Read(MotionSeqS,1);
  D1MotionSeq2.ItemIndex :=MotionSeqS;

  //Ende File lesen
  FileStream.Free;

end;

procedure TMainForm.LoadDrum4Parameter(Drumname : String;Patternname : String;Bankname : String;Filename : String);
var
  Drumbase:Integer;
  Patternnummer:Integer;
  BytesRead : Integer;
  FileStream : TFileStream;
  Patternbase: Integer;
begin
  Case Drumname of
	   'Drum 1' : Drumbase := 24;
	   'Drum 2' : Drumbase := 50;
	   'Drum 3' : Drumbase := 76;
	   'Drum 4' : Drumbase := 102;
	   'Drum 5' : Drumbase := 128;
	   'Drum 6A' : Drumbase := 154;
	   'Drum 6B' : Drumbase := 180;
	   'Drum 7A' : Drumbase := 206;
	   'Drum 7B' : Drumbase := 232;
  end;

  Patternnummer := (strtoint(leftstr(Patternname,2))-1)*4806;
  If (Bankname='Bank A') Then Patternbase:=512+Patternnummer;
  If (Bankname='Bank B') Then Patternbase:=512+64*4806+Patternnummer;
  If (Bankname='Bank C') Then Patternbase:=512+128*4806+Patternnummer;
  If (Bankname='Bank D') Then Patternbase:=512+192*4806+Patternnummer;
  FileStream := tFileStream.Create (filename,fmShareDenyNone);
  FileStream.Position := Patternbase+Drumbase;
  // Let's Rock
  BytesRead:=Filestream.Read(Samplebanknumber,1);
  D1Sample3.ItemIndex:=Samplebanknumber;
  BytesRead:=Filestream.Read(Pitch,1);
  D1Pitch3.Position:=Pitch-64;
  BytesRead:=Filestream.Read(DLevel,1);
  D1Level3.Position := DLevel;
  BytesRead:=Filestream.Read(DPan,1);
  D1Pan3.Position:=DPan-64;
  BytesRead:=Filestream.Read(DEGTime,1);
  D1EGTime3.Position:=DEGTime;

  BytesRead:=Filestream.Read(FSSSRA,1);
  D1AmpEGB3.state := cbUnchecked;
  EnvLED2_4.Color:=$004080FF;
  EnvLED1_4.Color:=clSilver;
  D1RollB3.State:= cbUnchecked;
  D1RollB3.Caption:='Roll Off';
  D1FXSend3.State:= cbUnchecked;
  D1FXSend3.Caption:='FX Send Off';
  D1FXSelect3.ItemIndex:=0;
  If (FSSSRA > 15) Then
	 begin
		  D1AmpEGB3.state := cbchecked;
                  EnvLED2_4.Color:=clSilver;
                  EnvLED1_4.Color:=$004080FF;
		  FSSSRA:=FSSSRA-16;
	 End;
  If (FSSSRA > 7) Then
	 begin
		  D1RollB3.State:= cbchecked;
                  D1RollB3.Caption:='Roll On';
		  FSSSRA:=FSSSRA-8;
	 End;
  If (FSSSRA > 3) Then
	 begin
		  D1FXSend3.State:= cbchecked;
                  D1FXSend3.Caption:='FX Send On';
		  FSSSRA:=FSSSRA-4;
	 End;
   If (FSSSRA = 2) Then
	 begin
		  D1FXSelect3.ItemIndex:=2;
	 End;
   If (FSSSRA = 1) Then
	  begin
		  D1FXSelect3.ItemIndex:=1;
	  End;


  BytesRead:=Filestream.Read(MTDBS,1);
  D1ModType3.ItemIndex:=0;
  D1BPMSync3.state:=cbUnchecked;
  D1BPMSync3.Caption:='BPM Sync Off';
  If (MTDBS > 127) Then
	 begin
		  D1BPMSync3.state:=cbChecked;
                  D1BPMSync3.Caption:='BPM Sync On';
		  MTDBS:=MTDBS-128;
	 End;
  If (MTDBS > 63) Then
	 begin
		  D1ModType3.ItemIndex:=4;
		  MTDBS:=MTDBS-64;
	 End;
  If (MTDBS > 47) Then
	 begin
		  D1ModType3.ItemIndex:=3;
		  MTDBS:=MTDBS-48;
	 End;
  If (MTDBS > 31) Then
	 begin
		  D1ModType3.ItemIndex:=2;
		  MTDBS:=MTDBS-32;
	 End;
  If (MTDBS > 15) Then
	 begin
		  D1ModType3.ItemIndex:=0;
		  MTDBS:=MTDBS-16;
	 End;
  D1ModDest3.ItemIndex:=MTDBS;

  BytesRead:=Filestream.Read(ModulationSpeed,1);
  D1ModSpeed3.Position := ModulationSpeed;
  BytesRead:=Filestream.Read(ModulationDepth,1);
  D1ModDepth3.Position := ModulationDepth-64;
  BytesRead:=Filestream.Read(MotionSeqS,1);
  D1MotionSeq3.ItemIndex :=MotionSeqS;

  //Ende File lesen
  FileStream.Free;

end;

procedure TMainForm.LoadDrum5Parameter(Drumname : String;Patternname : String;Bankname : String;Filename : String);
var
  Drumbase:Integer;
  Patternnummer:Integer;
  BytesRead : Integer;
  FileStream : TFileStream;
  Patternbase: Integer;
begin
  Case Drumname of
	   'Drum 1' : Drumbase := 24;
	   'Drum 2' : Drumbase := 50;
	   'Drum 3' : Drumbase := 76;
	   'Drum 4' : Drumbase := 102;
	   'Drum 5' : Drumbase := 128;
	   'Drum 6A' : Drumbase := 154;
	   'Drum 6B' : Drumbase := 180;
	   'Drum 7A' : Drumbase := 206;
	   'Drum 7B' : Drumbase := 232;
  end;

  Patternnummer := (strtoint(leftstr(Patternname,2))-1)*4806;
  If (Bankname='Bank A') Then Patternbase:=512+Patternnummer;
  If (Bankname='Bank B') Then Patternbase:=512+64*4806+Patternnummer;
  If (Bankname='Bank C') Then Patternbase:=512+128*4806+Patternnummer;
  If (Bankname='Bank D') Then Patternbase:=512+192*4806+Patternnummer;
  FileStream := tFileStream.Create (filename,fmShareDenyNone);
  FileStream.Position := Patternbase+Drumbase;
  // Let's Rock
  BytesRead:=Filestream.Read(Samplebanknumber,1);
  D1Sample4.ItemIndex:=Samplebanknumber;
  BytesRead:=Filestream.Read(Pitch,1);
  D1Pitch4.Position:=Pitch-64;
  BytesRead:=Filestream.Read(DLevel,1);
  D1Level4.Position := DLevel;
  BytesRead:=Filestream.Read(DPan,1);
  D1Pan4.Position:=DPan-64;
  BytesRead:=Filestream.Read(DEGTime,1);
  D1EGTime4.Position:=DEGTime;

  BytesRead:=Filestream.Read(FSSSRA,1);
  D1AmpEGB4.state := cbUnchecked;
  EnvLED2_5.Color:=$004080FF;
  EnvLED1_5.Color:=clSilver;
  D1RollB4.State:= cbUnchecked;
  D1RollB4.Caption:='Roll Off';
  D1FXSend4.State:= cbUnchecked;
  D1FXSend4.Caption:='FX Send Off';
  D1FXSelect4.ItemIndex:=0;
  If (FSSSRA > 15) Then
	 begin
		  D1AmpEGB4.state := cbchecked;
                  EnvLED2_5.Color:=clSilver;
                  EnvLED1_5.Color:=$004080FF;
		  FSSSRA:=FSSSRA-16;
	 End;
  If (FSSSRA > 7) Then
	 begin
		  D1RollB4.State:= cbchecked;
                  D1RollB4.Caption:='Roll On';
		  FSSSRA:=FSSSRA-8;
	 End;
  If (FSSSRA > 3) Then
	 begin
		  D1FXSend4.State:= cbchecked;
                  D1FXSend4.Caption:='FX Send On';
		  FSSSRA:=FSSSRA-4;
	 End;
   If (FSSSRA = 2) Then
	 begin
		  D1FXSelect4.ItemIndex:=2;
	 End;
   If (FSSSRA = 1) Then
	  begin
		  D1FXSelect4.ItemIndex:=1;
	  End;


  BytesRead:=Filestream.Read(MTDBS,1);
  D1ModType4.ItemIndex:=0;
  D1BPMSync4.state:=cbUnchecked;
  D1BPMSync4.Caption:='BPM Sync Off';
  If (MTDBS > 127) Then
	 begin
		  D1BPMSync4.state:=cbChecked;
                  D1BPMSync4.Caption:='BPM Sync On';
		  MTDBS:=MTDBS-128;
	 End;
  If (MTDBS > 63) Then
	 begin
		  D1ModType4.ItemIndex:=4;
		  MTDBS:=MTDBS-64;
	 End;
  If (MTDBS > 47) Then
	 begin
		  D1ModType4.ItemIndex:=3;
		  MTDBS:=MTDBS-48;
	 End;
  If (MTDBS > 31) Then
	 begin
		  D1ModType4.ItemIndex:=2;
		  MTDBS:=MTDBS-32;
	 End;
  If (MTDBS > 15) Then
	 begin
		  D1ModType4.ItemIndex:=0;
		  MTDBS:=MTDBS-16;
	 End;
  D1ModDest4.ItemIndex:=MTDBS;

  BytesRead:=Filestream.Read(ModulationSpeed,1);
  D1ModSpeed4.Position := ModulationSpeed;
  BytesRead:=Filestream.Read(ModulationDepth,1);
  D1ModDepth4.Position := ModulationDepth-64;
  BytesRead:=Filestream.Read(MotionSeqS,1);
  D1MotionSeq4.ItemIndex :=MotionSeqS;

  //Ende File lesen
  FileStream.Free;
end;

procedure TMainForm.LoadDrum6AParameter(Drumname : String;Patternname : String;Bankname : String;Filename : String);
var
  Drumbase:Integer;
  Patternnummer:Integer;
  BytesRead : Integer;
  FileStream : TFileStream;
  Patternbase: Integer;
begin
  Case Drumname of
	   'Drum 1' : Drumbase := 24;
	   'Drum 2' : Drumbase := 50;
	   'Drum 3' : Drumbase := 76;
	   'Drum 4' : Drumbase := 102;
	   'Drum 5' : Drumbase := 128;
	   'Drum 6A' : Drumbase := 154;
	   'Drum 6B' : Drumbase := 180;
	   'Drum 7A' : Drumbase := 206;
	   'Drum 7B' : Drumbase := 232;
  end;

  Patternnummer := (strtoint(leftstr(Patternname,2))-1)*4806;
  If (Bankname='Bank A') Then Patternbase:=512+Patternnummer;
  If (Bankname='Bank B') Then Patternbase:=512+64*4806+Patternnummer;
  If (Bankname='Bank C') Then Patternbase:=512+128*4806+Patternnummer;
  If (Bankname='Bank D') Then Patternbase:=512+192*4806+Patternnummer;
  FileStream := tFileStream.Create (filename,fmShareDenyNone);
  FileStream.Position := Patternbase+Drumbase;
  // Let's Rock
  BytesRead:=Filestream.Read(Samplebanknumber,1);
  D1Sample5.ItemIndex:=Samplebanknumber;
  BytesRead:=Filestream.Read(Pitch,1);
  D1Pitch5.Position:=Pitch-64;
  BytesRead:=Filestream.Read(DLevel,1);
  D1Level5.Position := DLevel;
  BytesRead:=Filestream.Read(DPan,1);
  D1Pan5.Position:=DPan-64;
  BytesRead:=Filestream.Read(DEGTime,1);
  D1EGTime5.Position:=DEGTime;

  BytesRead:=Filestream.Read(FSSSRA,1);
  D1AmpEGB5.state := cbUnchecked;
  EnvLED1_6.Color:=clSilver;
  EnvLED2_6.Color:=$004080FF;
  D1RollB5.State:= cbUnchecked;
  D1RollB5.Caption:='Roll Off';
  D1FXSend5.State:= cbUnchecked;
  D1FXSend5.Caption:='FX Send Off';
  D1FXSelect5.ItemIndex:=0;
  If (FSSSRA > 15) Then
	 begin
		  D1AmpEGB5.state := cbchecked;
                  EnvLED1_6.Color:=$004080FF;
                  EnvLED2_6.Color:=clSilver;
		  FSSSRA:=FSSSRA-16;
	 End;
  If (FSSSRA > 7) Then
	 begin
		  D1RollB5.State:= cbchecked;
                  D1RollB5.Caption:='Roll On';
		  FSSSRA:=FSSSRA-8;
	 End;
  If (FSSSRA > 3) Then
	 begin
		  D1FXSend5.State:= cbchecked;
                  D1FXSend5.Caption:='FX Send On';
		  FSSSRA:=FSSSRA-4;
	 End;
   If (FSSSRA = 2) Then
	 begin
		  D1FXSelect5.ItemIndex:=2;
	 End;
   If (FSSSRA = 1) Then
	  begin
		  D1FXSelect5.ItemIndex:=1;
	  End;


  BytesRead:=Filestream.Read(MTDBS,1);
  D1ModType5.ItemIndex:=0;
  D1BPMSync5.state:=cbUnchecked;
  If (MTDBS > 127) Then
	 begin
		  D1BPMSync5.state:=cbChecked;
		  MTDBS:=MTDBS-128;
	 End;
  If (MTDBS > 63) Then
	 begin
		  D1ModType5.ItemIndex:=4;
		  MTDBS:=MTDBS-64;
	 End;
  If (MTDBS > 47) Then
	 begin
		  D1ModType5.ItemIndex:=3;
		  MTDBS:=MTDBS-48;
	 End;
  If (MTDBS > 31) Then
	 begin
		  D1ModType5.ItemIndex:=2;
		  MTDBS:=MTDBS-32;
	 End;
  If (MTDBS > 15) Then
	 begin
		  D1ModType5.ItemIndex:=0;
		  MTDBS:=MTDBS-16;
	 End;
  D1ModDest5.ItemIndex:=MTDBS;

  BytesRead:=Filestream.Read(ModulationSpeed,1);
  D1ModSpeed5.Position := ModulationSpeed;
  BytesRead:=Filestream.Read(ModulationDepth,1);
  D1ModDepth5.Position := ModulationDepth-64;
  BytesRead:=Filestream.Read(MotionSeqS,1);
  D1MotionSeq5.ItemIndex :=MotionSeqS;

  //Ende File lesen
  FileStream.Free;

end;

procedure TMainForm.LoadDrum6BParameter(Drumname : String;Patternname : String;Bankname : String;Filename : String);
var
  Drumbase:Integer;
  Patternnummer:Integer;
  BytesRead : Integer;
  FileStream : TFileStream;
  Patternbase: Integer;
begin
  Case Drumname of
	   'Drum 1' : Drumbase := 24;
	   'Drum 2' : Drumbase := 50;
	   'Drum 3' : Drumbase := 76;
	   'Drum 4' : Drumbase := 102;
	   'Drum 5' : Drumbase := 128;
	   'Drum 6A' : Drumbase := 154;
	   'Drum 6B' : Drumbase := 180;
	   'Drum 7A' : Drumbase := 206;
	   'Drum 7B' : Drumbase := 232;
  end;

  Patternnummer := (strtoint(leftstr(Patternname,2))-1)*4806;
  If (Bankname='Bank A') Then Patternbase:=512+Patternnummer;
  If (Bankname='Bank B') Then Patternbase:=512+64*4806+Patternnummer;
  If (Bankname='Bank C') Then Patternbase:=512+128*4806+Patternnummer;
  If (Bankname='Bank D') Then Patternbase:=512+192*4806+Patternnummer;
  FileStream := tFileStream.Create (filename,fmShareDenyNone);
  FileStream.Position := Patternbase+Drumbase;
  // Let's Rock
  BytesRead:=Filestream.Read(Samplebanknumber,1);
  D1Sample6.ItemIndex:=Samplebanknumber;
  BytesRead:=Filestream.Read(Pitch,1);
  D1Pitch6.Position:=Pitch-64;
  BytesRead:=Filestream.Read(DLevel,1);
  D1Level6.Position := DLevel;
  BytesRead:=Filestream.Read(DPan,1);
  D1Pan6.Position:=DPan-64;
  BytesRead:=Filestream.Read(DEGTime,1);
  D1EGTime6.Position:=DEGTime;

  BytesRead:=Filestream.Read(FSSSRA,1);
  D1AmpEGB6.state := cbUnchecked;
  EnvLED1_7.Color:=clSilver;
  EnvLED2_7.Color:=$004080FF;
  D1RollB6.State:= cbUnchecked;
  D1RollB6.Caption:='Roll Off';
  D1FXSend6.State:= cbUnchecked;
  D1FXSend6.Caption:='FX Send Off';
  D1FXSelect6.ItemIndex:=0;
  If (FSSSRA > 15) Then
	 begin
		  D1AmpEGB6.state := cbchecked;
                  EnvLED1_7.Color:=$004080FF;
                  EnvLED2_7.Color:=clSilver;
		  FSSSRA:=FSSSRA-16;
	 End;
  If (FSSSRA > 7) Then
	 begin
		  D1RollB6.State:= cbchecked;
                  D1RollB6.Caption:='Roll On';
		  FSSSRA:=FSSSRA-8;
	 End;
  If (FSSSRA > 3) Then
	 begin
		  D1FXSend6.State:= cbchecked;
                  D1FXSend6.Caption:='FX Send On';
                  FSSSRA:=FSSSRA-4;
	 End;
   If (FSSSRA = 2) Then
	 begin
		  D1FXSelect6.ItemIndex:=2;
	 End;
   If (FSSSRA = 1) Then
	  begin
		  D1FXSelect6.ItemIndex:=1;
	  End;


  BytesRead:=Filestream.Read(MTDBS,1);
  D1ModType6.ItemIndex:=0;
  D1BPMSync6.state:=cbUnchecked;
  D1BPMSync6.Caption:='BPM Sync Off';
  If (MTDBS > 127) Then
	 begin
		  D1BPMSync6.state:=cbChecked;
                  D1BPMSync6.Caption:='BPM Sync On';
		  MTDBS:=MTDBS-128;
	 End;
  If (MTDBS > 63) Then
	 begin
		  D1ModType6.ItemIndex:=4;
		  MTDBS:=MTDBS-64;
	 End;
  If (MTDBS > 47) Then
	 begin
		  D1ModType6.ItemIndex:=3;
		  MTDBS:=MTDBS-48;
	 End;
  If (MTDBS > 31) Then
	 begin
		  D1ModType6.ItemIndex:=2;
		  MTDBS:=MTDBS-32;
	 End;
  If (MTDBS > 15) Then
	 begin
		  D1ModType6.ItemIndex:=0;
		  MTDBS:=MTDBS-16;
	 End;
  D1ModDest6.ItemIndex:=MTDBS;

  BytesRead:=Filestream.Read(ModulationSpeed,1);
  D1ModSpeed6.Position := ModulationSpeed;
  BytesRead:=Filestream.Read(ModulationDepth,1);
  D1ModDepth6.Position := ModulationDepth-64;
  BytesRead:=Filestream.Read(MotionSeqS,1);
  D1MotionSeq6.ItemIndex :=MotionSeqS;

  //Ende File lesen
  FileStream.Free;

end;
procedure TMainForm.LoadDrum7AParameter(Drumname : String;Patternname : String;Bankname : String;Filename : String);
var
  Drumbase:Integer;
  Patternnummer:Integer;
  BytesRead : Integer;
  FileStream : TFileStream;
  Patternbase: Integer;
begin
  Case Drumname of
	   'Drum 1' : Drumbase := 24;
	   'Drum 2' : Drumbase := 50;
	   'Drum 3' : Drumbase := 76;
	   'Drum 4' : Drumbase := 102;
	   'Drum 5' : Drumbase := 128;
	   'Drum 6A' : Drumbase := 154;
	   'Drum 6B' : Drumbase := 180;
	   'Drum 7A' : Drumbase := 206;
	   'Drum 7B' : Drumbase := 232;
  end;

  Patternnummer := (strtoint(leftstr(Patternname,2))-1)*4806;
  If (Bankname='Bank A') Then Patternbase:=512+Patternnummer;
  If (Bankname='Bank B') Then Patternbase:=512+64*4806+Patternnummer;
  If (Bankname='Bank C') Then Patternbase:=512+128*4806+Patternnummer;
  If (Bankname='Bank D') Then Patternbase:=512+192*4806+Patternnummer;
  FileStream := tFileStream.Create (filename,fmShareDenyNone);
  FileStream.Position := Patternbase+Drumbase;
  // Let's Rock
  BytesRead:=Filestream.Read(Samplebanknumber,1);
  D1Sample7.ItemIndex:=Samplebanknumber;
  BytesRead:=Filestream.Read(Pitch,1);
  D1Pitch7.Position:=Pitch-64;
  BytesRead:=Filestream.Read(DLevel,1);
  D1Level7.Position := DLevel;
  BytesRead:=Filestream.Read(DPan,1);
  D1Pan7.Position:=DPan-64;
  BytesRead:=Filestream.Read(DEGTime,1);
  D1EGTime7.Position:=DEGTime;

  BytesRead:=Filestream.Read(FSSSRA,1);
  D1AmpEGB7.state := cbUnchecked;
  EnvLED1_8.Color:=clSilver;
  EnvLED2_8.Color:=$004080FF;
  D1RollB7.State:= cbUnchecked;
  D1RollB7.Caption:='Roll Off';
  D1FXSend7.State:= cbUnchecked;
  D1FXSend7.Caption:='FX Send Off';
  D1FXSelect7.ItemIndex:=0;
  If (FSSSRA > 15) Then
	 begin
		  D1AmpEGB7.state := cbchecked;
                  EnvLED1_8.Color:=$004080FF;
                  EnvLED2_8.Color:=clSilver;
		  FSSSRA:=FSSSRA-16;
	 End;
  If (FSSSRA > 7) Then
	 begin
		  D1RollB7.State:= cbchecked;
                  D1RollB7.Caption:='Roll On';
		  FSSSRA:=FSSSRA-8;
	 End;
  If (FSSSRA > 3) Then
	 begin
		  D1FXSend7.State:= cbchecked;
                  D1FXSend7.Caption:='FX Send On';
		  FSSSRA:=FSSSRA-4;
	 End;
   If (FSSSRA = 2) Then
	 begin
		  D1FXSelect7.ItemIndex:=2;
	 End;
   If (FSSSRA = 1) Then
	  begin
		  D1FXSelect7.ItemIndex:=1;
	  End;


  BytesRead:=Filestream.Read(MTDBS,1);
  D1ModType7.ItemIndex:=0;
  D1BPMSync7.state:=cbUnchecked;
  D1BPMSync7.Caption:='BPM Sync Off';
  If (MTDBS > 127) Then
	 begin
		  D1BPMSync7.state:=cbChecked;
                  D1BPMSync7.Caption:='BPM Sync On';
		  MTDBS:=MTDBS-128;
	 End;
  If (MTDBS > 63) Then
	 begin
		  D1ModType7.ItemIndex:=4;
		  MTDBS:=MTDBS-64;
	 End;
  If (MTDBS > 47) Then
	 begin
		  D1ModType7.ItemIndex:=3;
		  MTDBS:=MTDBS-48;
	 End;
  If (MTDBS > 31) Then
	 begin
		  D1ModType7.ItemIndex:=2;
		  MTDBS:=MTDBS-32;
	 End;
  If (MTDBS > 15) Then
	 begin
		  D1ModType7.ItemIndex:=0;
		  MTDBS:=MTDBS-16;
	 End;
  D1ModDest7.ItemIndex:=MTDBS;

  BytesRead:=Filestream.Read(ModulationSpeed,1);
  D1ModSpeed7.Position := ModulationSpeed;
  BytesRead:=Filestream.Read(ModulationDepth,1);
  D1ModDepth7.Position := ModulationDepth-64;
  BytesRead:=Filestream.Read(MotionSeqS,1);
  D1MotionSeq7.ItemIndex :=MotionSeqS;

  //Ende File lesen
  FileStream.Free;

end;

procedure TMainForm.LoadDrum7BParameter(Drumname : String;Patternname : String;Bankname : String;Filename : String);
var
  Drumbase:Integer;
  Patternnummer:Integer;
  BytesRead : Integer;
  FileStream : TFileStream;
  Patternbase: Integer;
begin
  Case Drumname of
	   'Drum 1' : Drumbase := 24;
	   'Drum 2' : Drumbase := 50;
	   'Drum 3' : Drumbase := 76;
	   'Drum 4' : Drumbase := 102;
	   'Drum 5' : Drumbase := 128;
	   'Drum 6A' : Drumbase := 154;
	   'Drum 6B' : Drumbase := 180;
	   'Drum 7A' : Drumbase := 206;
	   'Drum 7B' : Drumbase := 232;
  end;

  Patternnummer := (strtoint(leftstr(Patternname,2))-1)*4806;
  If (Bankname='Bank A') Then Patternbase:=512+Patternnummer;
  If (Bankname='Bank B') Then Patternbase:=512+64*4806+Patternnummer;
  If (Bankname='Bank C') Then Patternbase:=512+128*4806+Patternnummer;
  If (Bankname='Bank D') Then Patternbase:=512+192*4806+Patternnummer;
  FileStream := tFileStream.Create (filename,fmShareDenyNone);
  FileStream.Position := Patternbase+Drumbase;
  // Let's Rock
  BytesRead:=Filestream.Read(Samplebanknumber,1);
  D1Sample8.ItemIndex:=Samplebanknumber;
  BytesRead:=Filestream.Read(Pitch,1);
  D1Pitch8.Position:=Pitch-64;
  BytesRead:=Filestream.Read(DLevel,1);
  D1Level8.Position := DLevel;
  BytesRead:=Filestream.Read(DPan,1);
  D1Pan8.Position:=DPan-64;
  BytesRead:=Filestream.Read(DEGTime,1);
  D1EGTime8.Position:=DEGTime;

  BytesRead:=Filestream.Read(FSSSRA,1);
  D1AmpEGB8.state := cbUnchecked;
  EnvLED1_9.Color:=clSilver;
  EnvLED2_9.Color:=$004080FF;
  D1RollB8.State:= cbUnchecked;
  D1RollB8.Caption:='Roll Off';
  D1FXSend8.State:= cbUnchecked;
  D1FXSend8.Caption:='FX Send Off';
  D1FXSelect8.ItemIndex:=0;
  If (FSSSRA > 15) Then
	 begin
		  D1AmpEGB8.state := cbchecked;
                  EnvLED1_9.Color:=$004080FF;
                  EnvLED2_9.Color:=clSilver;
		  FSSSRA:=FSSSRA-16;
	 End;
  If (FSSSRA > 7) Then
	 begin
		  D1RollB8.State:= cbchecked;
                  D1RollB8.Caption:='Roll On';
		  FSSSRA:=FSSSRA-8;
	 End;
  If (FSSSRA > 3) Then
	 begin
		  D1FXSend8.State:= cbchecked;
                  D1FXSend8.Caption:='FX Send On';
		  FSSSRA:=FSSSRA-4;
	 End;
   If (FSSSRA = 2) Then
	 begin
		  D1FXSelect8.ItemIndex:=2;
	 End;
   If (FSSSRA = 1) Then
	  begin
		  D1FXSelect8.ItemIndex:=1;
	  End;


  BytesRead:=Filestream.Read(MTDBS,1);
  D1ModType8.ItemIndex:=0;
  D1BPMSync8.state:=cbUnchecked;
  If (MTDBS > 127) Then
	 begin
		  D1BPMSync8.state:=cbChecked;
		  MTDBS:=MTDBS-128;
	 End;
  If (MTDBS > 63) Then
	 begin
		  D1ModType8.ItemIndex:=4;
		  MTDBS:=MTDBS-64;
	 End;
  If (MTDBS > 47) Then
	 begin
		  D1ModType8.ItemIndex:=3;
		  MTDBS:=MTDBS-48;
	 End;
  If (MTDBS > 31) Then
	 begin
		  D1ModType8.ItemIndex:=2;
		  MTDBS:=MTDBS-32;
	 End;
  If (MTDBS > 15) Then
	 begin
		  D1ModType8.ItemIndex:=0;
		  MTDBS:=MTDBS-16;
	 End;
  D1ModDest8.ItemIndex:=MTDBS;

  BytesRead:=Filestream.Read(ModulationSpeed,1);
  D1ModSpeed8.Position := ModulationSpeed;
  BytesRead:=Filestream.Read(ModulationDepth,1);
  D1ModDepth8.Position := ModulationDepth-64;
  BytesRead:=Filestream.Read(MotionSeqS,1);
  D1MotionSeq8.ItemIndex :=MotionSeqS;

  //Ende File lesen
  FileStream.Free;

end;

procedure TMainForm.LoadDrum1Sequence(Drumname : String;Patternname : String;Bankname : String;Filename : String);
var
  Drumbase:Integer;
  Patternnummer:Integer;
  BytesRead : Integer;
  FileStream : TFileStream;
  Patternbase: Integer;
begin
  Case Drumname of
	   'Drum 1' : Drumbase := 24+10;
	   'Drum 2' : Drumbase := 50+10;
	   'Drum 3' : Drumbase := 76+10;
	   'Drum 4' : Drumbase := 102+10;
	   'Drum 5' : Drumbase := 128+10;
	   'Drum 6A' : Drumbase := 154+10;
	   'Drum 6B' : Drumbase := 180+10;
	   'Drum 7A' : Drumbase := 206+10;
	   'Drum 7B' : Drumbase := 232+10;
           'Drum Accent Sequence' : Drumbase := 1640;
           'Synth Accent Sequence': Drumbase :=1658;
  end;
  Patternnummer := (strtoint(leftstr(Patternname,2))-1)*4806;
  If (Bankname='Bank A') Then Patternbase:=512+Patternnummer;
  If (Bankname='Bank B') Then Patternbase:=512+64*4806+Patternnummer;
  If (Bankname='Bank C') Then Patternbase:=512+128*4806+Patternnummer;
  If (Bankname='Bank D') Then Patternbase:=512+192*4806+Patternnummer;
  FileStream := tFileStream.Create (filename,fmShareDenyNone);
  FileStream.Position := Patternbase+Drumbase;
  // Let's Rock
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S1.State:=cbchecked
    Else
            D1S1.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S2.State:=cbchecked
    Else
            D1S2.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S3.State:=cbchecked
    Else
            D1S3.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S4.State:=cbchecked
    Else
            D1S4.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S5.State:=cbchecked
    Else
            D1S5.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S6.State:=cbchecked
    Else
            D1S6.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S7.State:=cbchecked
    Else
            D1S7.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S8.State:=cbchecked
    Else
            D1S8.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S9.State:=cbchecked
    Else
            D1S9.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S10.State:=cbchecked
    Else
            D1S10.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S11.State:=cbchecked
    Else
            D1S11.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S12.State:=cbchecked
    Else
            D1S12.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S13.State:=cbchecked
    Else
            D1S13.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S14.State:=cbchecked
    Else
            D1S14.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S15.State:=cbchecked
    Else
            D1S15.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S16.State:=cbchecked
    Else
            D1S16.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S17.State:=cbchecked
    Else
            D1S17.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S18.State:=cbchecked
    Else
            D1S18.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S19.State:=cbchecked
    Else
            D1S19.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S20.State:=cbchecked
    Else
            D1S20.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S21.State:=cbchecked
    Else
            D1S21.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S22.State:=cbchecked
    Else
            D1S22.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S23.State:=cbchecked
    Else
            D1S23.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S24.State:=cbchecked
    Else
            D1S24.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S25.State:=cbchecked
    Else
            D1S25.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S26.State:=cbchecked
    Else
            D1S26.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S27.State:=cbchecked
    Else
            D1S27.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S28.State:=cbchecked
    Else
            D1S28.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S29.State:=cbchecked
    Else
            D1S29.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S30.State:=cbchecked
    Else
            D1S30.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S31.State:=cbchecked
    Else
            D1S31.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S32.State:=cbchecked
    Else
            D1S32.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S33.State:=cbchecked
    Else
            D1S33.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S34.State:=cbchecked
    Else
            D1S34.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S35.State:=cbchecked
    Else
            D1S35.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S36.State:=cbchecked
    Else
            D1S36.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S37.State:=cbchecked
    Else
            D1S37.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S38.State:=cbchecked
    Else
            D1S38.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S39.State:=cbchecked
    Else
            D1S39.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S40.State:=cbchecked
    Else
            D1S40.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S41.State:=cbchecked
    Else
            D1S41.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S42.State:=cbchecked
    Else
            D1S42.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S43.State:=cbchecked
    Else
            D1S43.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S44.State:=cbchecked
    Else
            D1S44.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S45.State:=cbchecked
    Else
            D1S45.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S46.State:=cbchecked
    Else
            D1S46.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S47.State:=cbchecked
    Else
            D1S47.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S48.State:=cbchecked
    Else
            D1S48.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S49.State:=cbchecked
    Else
            D1S49.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S50.State:=cbchecked
    Else
            D1S50.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S51.State:=cbchecked
    Else
            D1S51.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S52.State:=cbchecked
    Else
            D1S52.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S53.State:=cbchecked
    Else
            D1S53.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S54.State:=cbchecked
    Else
            D1S54.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S55.State:=cbchecked
    Else
            D1S55.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S56.State:=cbchecked
    Else
            D1S56.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S57.State:=cbchecked
    Else
            D1S57.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S58.State:=cbchecked
    Else
            D1S58.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S59.State:=cbchecked
    Else
            D1S59.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S60.State:=cbchecked
    Else
            D1S60.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S61.State:=cbchecked
    Else
            D1S61.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S62.State:=cbchecked
    Else
            D1S62.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S63.State:=cbchecked
    Else
            D1S63.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S64.State:=cbchecked
    Else
            D1S64.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S65.State:=cbchecked
    Else
            D1S65.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S66.State:=cbchecked
    Else
            D1S66.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S67.State:=cbchecked
    Else
            D1S67.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S68.State:=cbchecked
    Else
            D1S68.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S69.State:=cbchecked
    Else
            D1S69.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S70.State:=cbchecked
    Else
            D1S70.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S71.State:=cbchecked
    Else
            D1S71.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S72.State:=cbchecked
    Else
            D1S72.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S73.State:=cbchecked
    Else
            D1S73.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S74.State:=cbchecked
    Else
            D1S74.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S75.State:=cbchecked
    Else
            D1S75.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S76.State:=cbchecked
    Else
            D1S76.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S77.State:=cbchecked
    Else
            D1S77.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S78.State:=cbchecked
    Else
            D1S78.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S79.State:=cbchecked
    Else
            D1S79.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S80.State:=cbchecked
    Else
            D1S80.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S81.State:=cbchecked
    Else
            D1S81.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S82.State:=cbchecked
    Else
            D1S82.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S83.State:=cbchecked
    Else
            D1S83.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S84.State:=cbchecked
    Else
            D1S84.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S85.State:=cbchecked
    Else
            D1S85.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S86.State:=cbchecked
    Else
            D1S86.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S87.State:=cbchecked
    Else
            D1S87.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S88.State:=cbchecked
    Else
            D1S88.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S89.State:=cbchecked
    Else
            D1S89.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S90.State:=cbchecked
    Else
            D1S90.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S91.State:=cbchecked
    Else
            D1S91.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S92.State:=cbchecked
    Else
            D1S92.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S93.State:=cbchecked
    Else
            D1S93.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S94.State:=cbchecked
    Else
            D1S94.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S95.State:=cbchecked
    Else
            D1S95.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S96.State:=cbchecked
    Else
            D1S96.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S97.State:=cbchecked
    Else
            D1S97.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S98.State:=cbchecked
    Else
            D1S98.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S99.State:=cbchecked
    Else
            D1S99.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S100.State:=cbchecked
    Else
            D1S100.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S101.State:=cbchecked
    Else
            D1S101.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S102.State:=cbchecked
    Else
            D1S102.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S103.State:=cbchecked
    Else
            D1S103.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S104.State:=cbchecked
    Else
            D1S104.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S105.State:=cbchecked
    Else
            D1S105.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S106.State:=cbchecked
    Else
            D1S106.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S107.State:=cbchecked
    Else
            D1S107.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S108.State:=cbchecked
    Else
            D1S108.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S109.State:=cbchecked
    Else
            D1S109.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S110.State:=cbchecked
    Else
            D1S110.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S111.State:=cbchecked
    Else
            D1S111.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S112.State:=cbchecked
    Else
            D1S112.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S113.State:=cbchecked
    Else
            D1S113.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S114.State:=cbchecked
    Else
            D1S114.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S115.State:=cbchecked
    Else
            D1S115.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S116.State:=cbchecked
    Else
            D1S116.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S117.State:=cbchecked
    Else
            D1S117.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S118.State:=cbchecked
    Else
            D1S118.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S119.State:=cbchecked
    Else
            D1S119.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S120.State:=cbchecked
    Else
            D1S120.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S121.State:=cbchecked
    Else
            D1S121.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S122.State:=cbchecked
    Else
            D1S122.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S123.State:=cbchecked
    Else
            D1S123.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S124.State:=cbchecked
    Else
            D1S124.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S125.State:=cbchecked
    Else
            D1S125.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S126.State:=cbchecked
    Else
            D1S126.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S127.State:=cbchecked
    Else
            D1S127.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S128.State:=cbchecked
    Else
            D1S128.State:=cbunchecked;
    //Ende File lesen
    FileStream.Free;
end;

procedure TMainForm.LoadDrum2Sequence(Drumname : String;Patternname : String;Bankname : String;Filename : String);
var
  Drumbase:Integer;
  Patternnummer:Integer;
  BytesRead : Integer;
  FileStream : TFileStream;
  Patternbase: Integer;
begin
  Case Drumname of
	   'Drum 1' : Drumbase := 24+10;
	   'Drum 2' : Drumbase := 50+10;
	   'Drum 3' : Drumbase := 76+10;
	   'Drum 4' : Drumbase := 102+10;
	   'Drum 5' : Drumbase := 128+10;
	   'Drum 6A' : Drumbase := 154+10;
	   'Drum 6B' : Drumbase := 180+10;
	   'Drum 7A' : Drumbase := 206+10;
	   'Drum 7B' : Drumbase := 232+10;
           'Drum Accent Sequence' : Drumbase := 1640;
           'Synth Accent Sequence': Drumbase := 1658;
  end;

  Patternnummer := (strtoint(leftstr(Patternname,2))-1)*4806;
  If (Bankname='Bank A') Then Patternbase:=512+Patternnummer;
  If (Bankname='Bank B') Then Patternbase:=512+64*4806+Patternnummer;
  If (Bankname='Bank C') Then Patternbase:=512+128*4806+Patternnummer;
  If (Bankname='Bank D') Then Patternbase:=512+192*4806+Patternnummer;
  FileStream := tFileStream.Create (filename,fmShareDenyNone);
  FileStream.Position := Patternbase+Drumbase;
  // Let's Rock
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S129.State:=cbchecked
    Else
            D1S129.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S130.State:=cbchecked
    Else
            D1S130.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S131.State:=cbchecked
    Else
            D1S131.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S132.State:=cbchecked
    Else
            D1S132.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S133.State:=cbchecked
    Else
            D1S133.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S134.State:=cbchecked
    Else
            D1S134.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S135.State:=cbchecked
    Else
            D1S135.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S136.State:=cbchecked
    Else
            D1S136.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S137.State:=cbchecked
    Else
            D1S137.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S138.State:=cbchecked
    Else
            D1S138.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S139.State:=cbchecked
    Else
            D1S139.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S140.State:=cbchecked
    Else
            D1S140.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S141.State:=cbchecked
    Else
            D1S141.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S142.State:=cbchecked
    Else
            D1S142.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S143.State:=cbchecked
    Else
            D1S143.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S144.State:=cbchecked
    Else
            D1S144.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S145.State:=cbchecked
    Else
            D1S145.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S146.State:=cbchecked
    Else
            D1S146.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S147.State:=cbchecked
    Else
            D1S147.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S148.State:=cbchecked
    Else
            D1S148.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S149.State:=cbchecked
    Else
            D1S149.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S150.State:=cbchecked
    Else
            D1S150.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S151.State:=cbchecked
    Else
            D1S151.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S152.State:=cbchecked
    Else
            D1S152.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S153.State:=cbchecked
    Else
            D1S153.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S154.State:=cbchecked
    Else
            D1S154.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S155.State:=cbchecked
    Else
            D1S155.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S156.State:=cbchecked
    Else
            D1S156.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S157.State:=cbchecked
    Else
            D1S157.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S158.State:=cbchecked
    Else
            D1S158.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S159.State:=cbchecked
    Else
            D1S159.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S160.State:=cbchecked
    Else
            D1S160.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S161.State:=cbchecked
    Else
            D1S161.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S162.State:=cbchecked
    Else
            D1S162.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S163.State:=cbchecked
    Else
            D1S163.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S164.State:=cbchecked
    Else
            D1S164.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S165.State:=cbchecked
    Else
            D1S165.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S166.State:=cbchecked
    Else
            D1S166.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S167.State:=cbchecked
    Else
            D1S167.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S168.State:=cbchecked
    Else
            D1S168.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S169.State:=cbchecked
    Else
            D1S169.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S170.State:=cbchecked
    Else
            D1S170.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S171.State:=cbchecked
    Else
            D1S171.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S172.State:=cbchecked
    Else
            D1S172.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S173.State:=cbchecked
    Else
            D1S173.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S174.State:=cbchecked
    Else
            D1S174.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S175.State:=cbchecked
    Else
            D1S175.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S176.State:=cbchecked
    Else
            D1S176.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S177.State:=cbchecked
    Else
            D1S177.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S178.State:=cbchecked
    Else
            D1S178.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S179.State:=cbchecked
    Else
            D1S179.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S180.State:=cbchecked
    Else
            D1S180.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S181.State:=cbchecked
    Else
            D1S181.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S182.State:=cbchecked
    Else
            D1S182.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S183.State:=cbchecked
    Else
            D1S183.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S184.State:=cbchecked
    Else
            D1S184.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S185.State:=cbchecked
    Else
            D1S185.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S186.State:=cbchecked
    Else
            D1S186.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S187.State:=cbchecked
    Else
            D1S187.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S188.State:=cbchecked
    Else
            D1S188.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S189.State:=cbchecked
    Else
            D1S189.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S190.State:=cbchecked
    Else
            D1S190.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S191.State:=cbchecked
    Else
            D1S191.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S192.State:=cbchecked
    Else
            D1S192.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S193.State:=cbchecked
    Else
            D1S193.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S194.State:=cbchecked
    Else
            D1S194.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S195.State:=cbchecked
    Else
            D1S195.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S196.State:=cbchecked
    Else
            D1S196.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S197.State:=cbchecked
    Else
            D1S197.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S198.State:=cbchecked
    Else
            D1S198.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S199.State:=cbchecked
    Else
            D1S199.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S200.State:=cbchecked
    Else
            D1S200.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S201.State:=cbchecked
    Else
            D1S201.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S202.State:=cbchecked
    Else
            D1S202.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S203.State:=cbchecked
    Else
            D1S203.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S204.State:=cbchecked
    Else
            D1S204.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S205.State:=cbchecked
    Else
            D1S205.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S206.State:=cbchecked
    Else
            D1S206.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S207.State:=cbchecked
    Else
            D1S207.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S208.State:=cbchecked
    Else
            D1S208.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S209.State:=cbchecked
    Else
            D1S209.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S210.State:=cbchecked
    Else
            D1S210.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S211.State:=cbchecked
    Else
            D1S211.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S212.State:=cbchecked
    Else
            D1S212.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S213.State:=cbchecked
    Else
            D1S213.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S214.State:=cbchecked
    Else
            D1S214.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S215.State:=cbchecked
    Else
            D1S215.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S216.State:=cbchecked
    Else
            D1S216.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S217.State:=cbchecked
    Else
            D1S217.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S218.State:=cbchecked
    Else
            D1S218.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S219.State:=cbchecked
    Else
            D1S219.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S220.State:=cbchecked
    Else
            D1S220.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S221.State:=cbchecked
    Else
            D1S221.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S222.State:=cbchecked
    Else
            D1S222.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S223.State:=cbchecked
    Else
            D1S223.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S224.State:=cbchecked
    Else
            D1S224.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S225.State:=cbchecked
    Else
            D1S225.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S226.State:=cbchecked
    Else
            D1S226.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S227.State:=cbchecked
    Else
            D1S227.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S228.State:=cbchecked
    Else
            D1S228.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S229.State:=cbchecked
    Else
            D1S229.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S230.State:=cbchecked
    Else
            D1S230.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S231.State:=cbchecked
    Else
            D1S231.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S232.State:=cbchecked
    Else
            D1S232.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S233.State:=cbchecked
    Else
            D1S233.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S234.State:=cbchecked
    Else
            D1S234.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S235.State:=cbchecked
    Else
            D1S235.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S236.State:=cbchecked
    Else
            D1S236.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S237.State:=cbchecked
    Else
            D1S237.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S238.State:=cbchecked
    Else
            D1S238.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S239.State:=cbchecked
    Else
            D1S239.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S240.State:=cbchecked
    Else
            D1S240.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S241.State:=cbchecked
    Else
            D1S241.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S242.State:=cbchecked
    Else
            D1S242.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S243.State:=cbchecked
    Else
            D1S243.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S244.State:=cbchecked
    Else
            D1S244.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S245.State:=cbchecked
    Else
            D1S245.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S246.State:=cbchecked
    Else
            D1S246.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S247.State:=cbchecked
    Else
            D1S247.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S248.State:=cbchecked
    Else
            D1S248.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S249.State:=cbchecked
    Else
            D1S249.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S250.State:=cbchecked
    Else
            D1S250.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S251.State:=cbchecked
    Else
            D1S251.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S252.State:=cbchecked
    Else
            D1S252.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S253.State:=cbchecked
    Else
            D1S253.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S254.State:=cbchecked
    Else
            D1S254.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S255.State:=cbchecked
    Else
            D1S255.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S256.State:=cbchecked
    Else
            D1S256.State:=cbunchecked;
    //Ende File lesen
    FileStream.Free;
end;

procedure TMainForm.LoadDrum3Sequence(Drumname : String;Patternname : String;Bankname : String;Filename : String);
var
  Drumbase:Integer;
  Patternnummer:Integer;
  BytesRead : Integer;
  FileStream : TFileStream;
  Patternbase: Integer;
begin
  Case Drumname of
	   'Drum 1' : Drumbase := 24+10;
	   'Drum 2' : Drumbase := 50+10;
	   'Drum 3' : Drumbase := 76+10;
	   'Drum 4' : Drumbase := 102+10;
	   'Drum 5' : Drumbase := 128+10;
	   'Drum 6A' : Drumbase := 154+10;
	   'Drum 6B' : Drumbase := 180+10;
	   'Drum 7A' : Drumbase := 206+10;
	   'Drum 7B' : Drumbase := 232+10;
           'Drum Accent Sequence' : Drumbase := 1640;
           'Synth Accent Sequence': Drumbase := 1658;
  end;

  Patternnummer := (strtoint(leftstr(Patternname,2))-1)*4806;
  If (Bankname='Bank A') Then Patternbase:=512+Patternnummer;
  If (Bankname='Bank B') Then Patternbase:=512+64*4806+Patternnummer;
  If (Bankname='Bank C') Then Patternbase:=512+128*4806+Patternnummer;
  If (Bankname='Bank D') Then Patternbase:=512+192*4806+Patternnummer;
  FileStream := tFileStream.Create (filename,fmShareDenyNone);
  FileStream.Position := Patternbase+Drumbase;
  // Let's Rock
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S257.State:=cbchecked
    Else
            D1S257.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S258.State:=cbchecked
    Else
            D1S258.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S259.State:=cbchecked
    Else
            D1S259.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S260.State:=cbchecked
    Else
            D1S260.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S261.State:=cbchecked
    Else
            D1S261.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S262.State:=cbchecked
    Else
            D1S262.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S263.State:=cbchecked
    Else
            D1S263.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S264.State:=cbchecked
    Else
            D1S264.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S265.State:=cbchecked
    Else
            D1S265.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S266.State:=cbchecked
    Else
            D1S266.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S267.State:=cbchecked
    Else
            D1S267.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S268.State:=cbchecked
    Else
            D1S268.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S269.State:=cbchecked
    Else
            D1S269.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S270.State:=cbchecked
    Else
            D1S270.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S271.State:=cbchecked
    Else
            D1S271.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S272.State:=cbchecked
    Else
            D1S272.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S273.State:=cbchecked
    Else
            D1S273.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S274.State:=cbchecked
    Else
            D1S274.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S275.State:=cbchecked
    Else
            D1S275.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S276.State:=cbchecked
    Else
            D1S276.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S277.State:=cbchecked
    Else
            D1S277.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S278.State:=cbchecked
    Else
            D1S278.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S279.State:=cbchecked
    Else
            D1S279.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S280.State:=cbchecked
    Else
            D1S280.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S281.State:=cbchecked
    Else
            D1S281.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S282.State:=cbchecked
    Else
            D1S282.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S283.State:=cbchecked
    Else
            D1S283.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S284.State:=cbchecked
    Else
            D1S284.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S285.State:=cbchecked
    Else
            D1S285.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S286.State:=cbchecked
    Else
            D1S286.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S287.State:=cbchecked
    Else
            D1S287.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S288.State:=cbchecked
    Else
            D1S288.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S289.State:=cbchecked
    Else
            D1S289.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S290.State:=cbchecked
    Else
            D1S290.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S291.State:=cbchecked
    Else
            D1S291.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S292.State:=cbchecked
    Else
            D1S292.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S293.State:=cbchecked
    Else
            D1S293.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S294.State:=cbchecked
    Else
            D1S294.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S295.State:=cbchecked
    Else
            D1S295.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S296.State:=cbchecked
    Else
            D1S296.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S297.State:=cbchecked
    Else
            D1S297.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S298.State:=cbchecked
    Else
            D1S298.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S299.State:=cbchecked
    Else
            D1S299.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S300.State:=cbchecked
    Else
            D1S300.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S301.State:=cbchecked
    Else
            D1S301.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S302.State:=cbchecked
    Else
            D1S302.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S303.State:=cbchecked
    Else
            D1S303.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S304.State:=cbchecked
    Else
            D1S304.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S305.State:=cbchecked
    Else
            D1S305.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S306.State:=cbchecked
    Else
            D1S306.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S307.State:=cbchecked
    Else
            D1S307.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S308.State:=cbchecked
    Else
            D1S308.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S309.State:=cbchecked
    Else
            D1S309.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S310.State:=cbchecked
    Else
            D1S310.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S311.State:=cbchecked
    Else
            D1S311.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S312.State:=cbchecked
    Else
            D1S312.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S313.State:=cbchecked
    Else
            D1S313.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S314.State:=cbchecked
    Else
            D1S314.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S315.State:=cbchecked
    Else
            D1S315.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S316.State:=cbchecked
    Else
            D1S316.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S317.State:=cbchecked
    Else
            D1S317.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S318.State:=cbchecked
    Else
            D1S318.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S319.State:=cbchecked
    Else
            D1S319.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S320.State:=cbchecked
    Else
            D1S320.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S321.State:=cbchecked
    Else
            D1S321.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S322.State:=cbchecked
    Else
            D1S322.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S323.State:=cbchecked
    Else
            D1S323.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S324.State:=cbchecked
    Else
            D1S324.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S325.State:=cbchecked
    Else
            D1S325.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S326.State:=cbchecked
    Else
            D1S326.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S327.State:=cbchecked
    Else
            D1S327.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S328.State:=cbchecked
    Else
            D1S328.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S329.State:=cbchecked
    Else
            D1S329.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S330.State:=cbchecked
    Else
            D1S330.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S331.State:=cbchecked
    Else
            D1S331.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S332.State:=cbchecked
    Else
            D1S332.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S333.State:=cbchecked
    Else
            D1S333.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S334.State:=cbchecked
    Else
            D1S334.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S335.State:=cbchecked
    Else
            D1S335.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S336.State:=cbchecked
    Else
            D1S336.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S337.State:=cbchecked
    Else
            D1S337.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S338.State:=cbchecked
    Else
            D1S338.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S339.State:=cbchecked
    Else
            D1S339.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S340.State:=cbchecked
    Else
            D1S340.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S341.State:=cbchecked
    Else
            D1S341.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S342.State:=cbchecked
    Else
            D1S342.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S343.State:=cbchecked
    Else
            D1S343.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S344.State:=cbchecked
    Else
            D1S344.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S345.State:=cbchecked
    Else
            D1S345.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S346.State:=cbchecked
    Else
            D1S346.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S347.State:=cbchecked
    Else
            D1S347.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S348.State:=cbchecked
    Else
            D1S348.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S349.State:=cbchecked
    Else
            D1S349.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S350.State:=cbchecked
    Else
            D1S350.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S351.State:=cbchecked
    Else
            D1S351.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S352.State:=cbchecked
    Else
            D1S352.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S353.State:=cbchecked
    Else
            D1S353.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S354.State:=cbchecked
    Else
            D1S354.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S355.State:=cbchecked
    Else
            D1S355.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S356.State:=cbchecked
    Else
            D1S356.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S357.State:=cbchecked
    Else
            D1S357.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S358.State:=cbchecked
    Else
            D1S358.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S359.State:=cbchecked
    Else
            D1S359.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S360.State:=cbchecked
    Else
            D1S360.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S361.State:=cbchecked
    Else
            D1S361.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S362.State:=cbchecked
    Else
            D1S362.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S363.State:=cbchecked
    Else
            D1S363.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S364.State:=cbchecked
    Else
            D1S364.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S365.State:=cbchecked
    Else
            D1S365.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S366.State:=cbchecked
    Else
            D1S366.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S367.State:=cbchecked
    Else
            D1S367.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S368.State:=cbchecked
    Else
            D1S368.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S369.State:=cbchecked
    Else
            D1S369.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S370.State:=cbchecked
    Else
            D1S370.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S371.State:=cbchecked
    Else
            D1S371.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S372.State:=cbchecked
    Else
            D1S372.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S373.State:=cbchecked
    Else
            D1S373.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S374.State:=cbchecked
    Else
            D1S374.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S375.State:=cbchecked
    Else
            D1S375.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S376.State:=cbchecked
    Else
            D1S376.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S377.State:=cbchecked
    Else
            D1S377.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S378.State:=cbchecked
    Else
            D1S378.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S379.State:=cbchecked
    Else
            D1S379.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S380.State:=cbchecked
    Else
            D1S380.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S381.State:=cbchecked
    Else
            D1S381.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S382.State:=cbchecked
    Else
            D1S382.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S383.State:=cbchecked
    Else
            D1S383.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S384.State:=cbchecked
    Else
            D1S384.State:=cbunchecked;
    //Ende File lesen
    FileStream.Free;
end;

procedure TMainForm.LoadDrum4Sequence(Drumname : String;Patternname : String;Bankname : String;Filename : String);
var
  Drumbase:Integer;
  Patternnummer:Integer;
  BytesRead : Integer;
  FileStream : TFileStream;
  Patternbase: Integer;
begin
  Case Drumname of
	   'Drum 1' : Drumbase := 24+10;
	   'Drum 2' : Drumbase := 50+10;
	   'Drum 3' : Drumbase := 76+10;
	   'Drum 4' : Drumbase := 102+10;
	   'Drum 5' : Drumbase := 128+10;
	   'Drum 6A' : Drumbase := 154+10;
	   'Drum 6B' : Drumbase := 180+10;
	   'Drum 7A' : Drumbase := 206+10;
	   'Drum 7B' : Drumbase := 232+10;
           'Drum Accent Sequence' : Drumbase := 1640;
           'Synth Accent Sequence': Drumbase := 1658;
  end;

  Patternnummer := (strtoint(leftstr(Patternname,2))-1)*4806;
  If (Bankname='Bank A') Then Patternbase:=512+Patternnummer;
  If (Bankname='Bank B') Then Patternbase:=512+64*4806+Patternnummer;
  If (Bankname='Bank C') Then Patternbase:=512+128*4806+Patternnummer;
  If (Bankname='Bank D') Then Patternbase:=512+192*4806+Patternnummer;
  FileStream := tFileStream.Create (filename,fmShareDenyNone);
  FileStream.Position := Patternbase+Drumbase;
  // Let's Rock
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S385.State:=cbchecked
    Else
            D1S385.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S386.State:=cbchecked
    Else
            D1S386.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S387.State:=cbchecked
    Else
            D1S387.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S388.State:=cbchecked
    Else
            D1S388.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S389.State:=cbchecked
    Else
            D1S389.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S390.State:=cbchecked
    Else
            D1S390.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S391.State:=cbchecked
    Else
            D1S391.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S392.State:=cbchecked
    Else
            D1S392.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S393.State:=cbchecked
    Else
            D1S393.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S394.State:=cbchecked
    Else
            D1S394.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S395.State:=cbchecked
    Else
            D1S395.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S396.State:=cbchecked
    Else
            D1S396.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S397.State:=cbchecked
    Else
            D1S397.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S398.State:=cbchecked
    Else
            D1S398.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S399.State:=cbchecked
    Else
            D1S399.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S400.State:=cbchecked
    Else
            D1S400.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S401.State:=cbchecked
    Else
            D1S401.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S402.State:=cbchecked
    Else
            D1S402.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S403.State:=cbchecked
    Else
            D1S403.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S404.State:=cbchecked
    Else
            D1S404.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S405.State:=cbchecked
    Else
            D1S405.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S406.State:=cbchecked
    Else
            D1S406.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S407.State:=cbchecked
    Else
            D1S407.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S408.State:=cbchecked
    Else
            D1S408.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S409.State:=cbchecked
    Else
            D1S409.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S410.State:=cbchecked
    Else
            D1S410.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S411.State:=cbchecked
    Else
            D1S411.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S412.State:=cbchecked
    Else
            D1S412.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S413.State:=cbchecked
    Else
            D1S413.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S414.State:=cbchecked
    Else
            D1S414.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S415.State:=cbchecked
    Else
            D1S415.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S416.State:=cbchecked
    Else
            D1S416.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S417.State:=cbchecked
    Else
            D1S417.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S418.State:=cbchecked
    Else
            D1S418.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S419.State:=cbchecked
    Else
            D1S419.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S420.State:=cbchecked
    Else
            D1S420.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S421.State:=cbchecked
    Else
            D1S421.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S422.State:=cbchecked
    Else
            D1S422.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S423.State:=cbchecked
    Else
            D1S423.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S424.State:=cbchecked
    Else
            D1S424.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S425.State:=cbchecked
    Else
            D1S425.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S426.State:=cbchecked
    Else
            D1S426.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S427.State:=cbchecked
    Else
            D1S427.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S428.State:=cbchecked
    Else
            D1S428.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S429.State:=cbchecked
    Else
            D1S429.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S430.State:=cbchecked
    Else
            D1S430.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S431.State:=cbchecked
    Else
            D1S431.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S432.State:=cbchecked
    Else
            D1S432.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S433.State:=cbchecked
    Else
            D1S433.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S434.State:=cbchecked
    Else
            D1S434.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S435.State:=cbchecked
    Else
            D1S435.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S436.State:=cbchecked
    Else
            D1S436.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S437.State:=cbchecked
    Else
            D1S437.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S438.State:=cbchecked
    Else
            D1S438.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S439.State:=cbchecked
    Else
            D1S439.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S440.State:=cbchecked
    Else
            D1S440.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S441.State:=cbchecked
    Else
            D1S441.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S442.State:=cbchecked
    Else
            D1S442.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S443.State:=cbchecked
    Else
            D1S443.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S444.State:=cbchecked
    Else
            D1S444.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S445.State:=cbchecked
    Else
            D1S445.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S446.State:=cbchecked
    Else
            D1S446.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S447.State:=cbchecked
    Else
            D1S447.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S448.State:=cbchecked
    Else
            D1S448.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S449.State:=cbchecked
    Else
            D1S449.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S450.State:=cbchecked
    Else
            D1S450.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S451.State:=cbchecked
    Else
            D1S451.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S452.State:=cbchecked
    Else
            D1S452.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S453.State:=cbchecked
    Else
            D1S453.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S454.State:=cbchecked
    Else
            D1S454.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S455.State:=cbchecked
    Else
            D1S455.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S456.State:=cbchecked
    Else
            D1S456.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S457.State:=cbchecked
    Else
            D1S457.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S458.State:=cbchecked
    Else
            D1S458.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S459.State:=cbchecked
    Else
            D1S459.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S460.State:=cbchecked
    Else
            D1S460.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S461.State:=cbchecked
    Else
            D1S461.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S462.State:=cbchecked
    Else
            D1S462.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S463.State:=cbchecked
    Else
            D1S463.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S464.State:=cbchecked
    Else
            D1S464.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S465.State:=cbchecked
    Else
            D1S465.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S466.State:=cbchecked
    Else
            D1S466.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S467.State:=cbchecked
    Else
            D1S467.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S468.State:=cbchecked
    Else
            D1S468.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S469.State:=cbchecked
    Else
            D1S469.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S470.State:=cbchecked
    Else
            D1S470.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S471.State:=cbchecked
    Else
            D1S471.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S472.State:=cbchecked
    Else
            D1S472.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S473.State:=cbchecked
    Else
            D1S473.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S474.State:=cbchecked
    Else
            D1S474.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S475.State:=cbchecked
    Else
            D1S475.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S476.State:=cbchecked
    Else
            D1S476.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S477.State:=cbchecked
    Else
            D1S477.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S478.State:=cbchecked
    Else
            D1S478.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S479.State:=cbchecked
    Else
            D1S479.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S480.State:=cbchecked
    Else
            D1S480.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S481.State:=cbchecked
    Else
            D1S481.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S482.State:=cbchecked
    Else
            D1S482.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S483.State:=cbchecked
    Else
            D1S483.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S484.State:=cbchecked
    Else
            D1S484.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S485.State:=cbchecked
    Else
            D1S485.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S486.State:=cbchecked
    Else
            D1S486.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S487.State:=cbchecked
    Else
            D1S487.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S488.State:=cbchecked
    Else
            D1S488.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S489.State:=cbchecked
    Else
            D1S489.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S490.State:=cbchecked
    Else
            D1S490.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S491.State:=cbchecked
    Else
            D1S491.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S492.State:=cbchecked
    Else
            D1S492.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S493.State:=cbchecked
    Else
            D1S493.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S494.State:=cbchecked
    Else
            D1S494.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S495.State:=cbchecked
    Else
            D1S495.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S496.State:=cbchecked
    Else
            D1S496.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S497.State:=cbchecked
    Else
            D1S497.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S498.State:=cbchecked
    Else
            D1S498.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S499.State:=cbchecked
    Else
            D1S499.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S500.State:=cbchecked
    Else
            D1S500.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S501.State:=cbchecked
    Else
            D1S501.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S502.State:=cbchecked
    Else
            D1S502.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S503.State:=cbchecked
    Else
            D1S503.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S504.State:=cbchecked
    Else
            D1S504.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S505.State:=cbchecked
    Else
            D1S505.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S506.State:=cbchecked
    Else
            D1S506.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S507.State:=cbchecked
    Else
            D1S507.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S508.State:=cbchecked
    Else
            D1S508.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S509.State:=cbchecked
    Else
            D1S509.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S510.State:=cbchecked
    Else
            D1S510.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S511.State:=cbchecked
    Else
            D1S511.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S512.State:=cbchecked
    Else
            D1S512.State:=cbunchecked;
    //Ende File lesen
    FileStream.Free;
end;

procedure TMainForm.LoadDrum5Sequence(Drumname : String;Patternname : String;Bankname : String;Filename : String);
var
  Drumbase:Integer;
  Patternnummer:Integer;
  BytesRead : Integer;
  FileStream : TFileStream;
  Patternbase: Integer;
begin
  Case Drumname of
	   'Drum 1' : Drumbase := 24+10;
	   'Drum 2' : Drumbase := 50+10;
	   'Drum 3' : Drumbase := 76+10;
	   'Drum 4' : Drumbase := 102+10;
	   'Drum 5' : Drumbase := 128+10;
	   'Drum 6A' : Drumbase := 154+10;
	   'Drum 6B' : Drumbase := 180+10;
	   'Drum 7A' : Drumbase := 206+10;
	   'Drum 7B' : Drumbase := 232+10;
           'Drum Accent Sequence' : Drumbase := 1640;
           'Synth Accent Sequence': Drumbase := 1658;
  end;

  Patternnummer := (strtoint(leftstr(Patternname,2))-1)*4806;
  If (Bankname='Bank A') Then Patternbase:=512+Patternnummer;
  If (Bankname='Bank B') Then Patternbase:=512+64*4806+Patternnummer;
  If (Bankname='Bank C') Then Patternbase:=512+128*4806+Patternnummer;
  If (Bankname='Bank D') Then Patternbase:=512+192*4806+Patternnummer;
  FileStream := tFileStream.Create (filename,fmShareDenyNone);
  FileStream.Position := Patternbase+Drumbase;
  // Let's Rock
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S513.State:=cbchecked
    Else
            D1S513.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S514.State:=cbchecked
    Else
            D1S514.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S515.State:=cbchecked
    Else
            D1S515.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S516.State:=cbchecked
    Else
            D1S516.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S517.State:=cbchecked
    Else
            D1S517.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S518.State:=cbchecked
    Else
            D1S518.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S519.State:=cbchecked
    Else
            D1S519.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S520.State:=cbchecked
    Else
            D1S520.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S521.State:=cbchecked
    Else
            D1S521.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S522.State:=cbchecked
    Else
            D1S522.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S523.State:=cbchecked
    Else
            D1S523.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S524.State:=cbchecked
    Else
            D1S524.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S525.State:=cbchecked
    Else
            D1S525.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S526.State:=cbchecked
    Else
            D1S526.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S527.State:=cbchecked
    Else
            D1S527.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S528.State:=cbchecked
    Else
            D1S528.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S529.State:=cbchecked
    Else
            D1S529.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S530.State:=cbchecked
    Else
            D1S530.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S531.State:=cbchecked
    Else
            D1S531.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S532.State:=cbchecked
    Else
            D1S532.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S533.State:=cbchecked
    Else
            D1S533.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S534.State:=cbchecked
    Else
            D1S534.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S535.State:=cbchecked
    Else
            D1S535.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S536.State:=cbchecked
    Else
            D1S536.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S537.State:=cbchecked
    Else
            D1S537.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S538.State:=cbchecked
    Else
            D1S538.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S539.State:=cbchecked
    Else
            D1S539.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S540.State:=cbchecked
    Else
            D1S540.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S541.State:=cbchecked
    Else
            D1S541.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S542.State:=cbchecked
    Else
            D1S542.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S543.State:=cbchecked
    Else
            D1S543.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S544.State:=cbchecked
    Else
            D1S544.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S545.State:=cbchecked
    Else
            D1S545.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S546.State:=cbchecked
    Else
            D1S546.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S547.State:=cbchecked
    Else
            D1S547.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S548.State:=cbchecked
    Else
            D1S548.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S549.State:=cbchecked
    Else
            D1S549.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S550.State:=cbchecked
    Else
            D1S550.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S551.State:=cbchecked
    Else
            D1S551.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S552.State:=cbchecked
    Else
            D1S552.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S553.State:=cbchecked
    Else
            D1S553.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S554.State:=cbchecked
    Else
            D1S554.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S555.State:=cbchecked
    Else
            D1S555.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S556.State:=cbchecked
    Else
            D1S556.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S557.State:=cbchecked
    Else
            D1S557.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S558.State:=cbchecked
    Else
            D1S558.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S559.State:=cbchecked
    Else
            D1S559.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S560.State:=cbchecked
    Else
            D1S560.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S561.State:=cbchecked
    Else
            D1S561.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S562.State:=cbchecked
    Else
            D1S562.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S563.State:=cbchecked
    Else
            D1S563.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S564.State:=cbchecked
    Else
            D1S564.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S565.State:=cbchecked
    Else
            D1S565.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S566.State:=cbchecked
    Else
            D1S566.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S567.State:=cbchecked
    Else
            D1S567.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S568.State:=cbchecked
    Else
            D1S568.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S569.State:=cbchecked
    Else
            D1S569.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S570.State:=cbchecked
    Else
            D1S570.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S571.State:=cbchecked
    Else
            D1S571.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S572.State:=cbchecked
    Else
            D1S572.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S573.State:=cbchecked
    Else
            D1S573.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S574.State:=cbchecked
    Else
            D1S574.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S575.State:=cbchecked
    Else
            D1S575.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S576.State:=cbchecked
    Else
            D1S576.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S577.State:=cbchecked
    Else
            D1S577.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S578.State:=cbchecked
    Else
            D1S578.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S579.State:=cbchecked
    Else
            D1S579.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S580.State:=cbchecked
    Else
            D1S580.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S581.State:=cbchecked
    Else
            D1S581.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S582.State:=cbchecked
    Else
            D1S582.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S583.State:=cbchecked
    Else
            D1S583.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S584.State:=cbchecked
    Else
            D1S584.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S585.State:=cbchecked
    Else
            D1S585.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S586.State:=cbchecked
    Else
            D1S586.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S587.State:=cbchecked
    Else
            D1S587.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S588.State:=cbchecked
    Else
            D1S588.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S589.State:=cbchecked
    Else
            D1S589.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S590.State:=cbchecked
    Else
            D1S590.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S591.State:=cbchecked
    Else
            D1S591.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S592.State:=cbchecked
    Else
            D1S592.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S593.State:=cbchecked
    Else
            D1S593.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S594.State:=cbchecked
    Else
            D1S594.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S595.State:=cbchecked
    Else
            D1S595.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S596.State:=cbchecked
    Else
            D1S596.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S597.State:=cbchecked
    Else
            D1S597.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S598.State:=cbchecked
    Else
            D1S598.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S599.State:=cbchecked
    Else
            D1S599.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S600.State:=cbchecked
    Else
            D1S600.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S601.State:=cbchecked
    Else
            D1S601.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S602.State:=cbchecked
    Else
            D1S602.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S603.State:=cbchecked
    Else
            D1S603.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S604.State:=cbchecked
    Else
            D1S604.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S605.State:=cbchecked
    Else
            D1S605.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S606.State:=cbchecked
    Else
            D1S606.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S607.State:=cbchecked
    Else
            D1S607.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S608.State:=cbchecked
    Else
            D1S608.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S609.State:=cbchecked
    Else
            D1S609.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S610.State:=cbchecked
    Else
            D1S610.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S611.State:=cbchecked
    Else
            D1S611.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S612.State:=cbchecked
    Else
            D1S612.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S613.State:=cbchecked
    Else
            D1S613.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S614.State:=cbchecked
    Else
            D1S614.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S615.State:=cbchecked
    Else
            D1S615.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S616.State:=cbchecked
    Else
            D1S616.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S617.State:=cbchecked
    Else
            D1S617.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S618.State:=cbchecked
    Else
            D1S618.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S619.State:=cbchecked
    Else
            D1S619.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S620.State:=cbchecked
    Else
            D1S620.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S621.State:=cbchecked
    Else
            D1S621.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S622.State:=cbchecked
    Else
            D1S622.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S623.State:=cbchecked
    Else
            D1S623.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S624.State:=cbchecked
    Else
            D1S624.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S625.State:=cbchecked
    Else
            D1S625.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S626.State:=cbchecked
    Else
            D1S626.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S627.State:=cbchecked
    Else
            D1S627.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S628.State:=cbchecked
    Else
            D1S628.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S629.State:=cbchecked
    Else
            D1S629.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S630.State:=cbchecked
    Else
            D1S630.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S631.State:=cbchecked
    Else
            D1S631.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S632.State:=cbchecked
    Else
            D1S632.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S633.State:=cbchecked
    Else
            D1S633.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S634.State:=cbchecked
    Else
            D1S634.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S635.State:=cbchecked
    Else
            D1S635.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S636.State:=cbchecked
    Else
            D1S636.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S637.State:=cbchecked
    Else
            D1S637.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S638.State:=cbchecked
    Else
            D1S638.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S639.State:=cbchecked
    Else
            D1S639.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S640.State:=cbchecked
    Else
            D1S640.State:=cbunchecked;
    //Ende File lesen
    FileStream.Free;
end;

procedure TMainForm.LoadDrum6ASequence(Drumname : String;Patternname : String;Bankname : String;Filename : String);
var
  Drumbase:Integer;
  Patternnummer:Integer;
  BytesRead : Integer;
  FileStream : TFileStream;
  Patternbase: Integer;
begin
  Case Drumname of
	   'Drum 1' : Drumbase := 24+10;
	   'Drum 2' : Drumbase := 50+10;
	   'Drum 3' : Drumbase := 76+10;
	   'Drum 4' : Drumbase := 102+10;
	   'Drum 5' : Drumbase := 128+10;
	   'Drum 6A' : Drumbase := 154+10;
	   'Drum 6B' : Drumbase := 180+10;
	   'Drum 7A' : Drumbase := 206+10;
	   'Drum 7B' : Drumbase := 232+10;
           'Drum Accent Sequence' : Drumbase := 1640;
           'Synth Accent Sequence': Drumbase := 1658;
  end;

  Patternnummer := (strtoint(leftstr(Patternname,2))-1)*4806;
  If (Bankname='Bank A') Then Patternbase:=512+Patternnummer;
  If (Bankname='Bank B') Then Patternbase:=512+64*4806+Patternnummer;
  If (Bankname='Bank C') Then Patternbase:=512+128*4806+Patternnummer;
  If (Bankname='Bank D') Then Patternbase:=512+192*4806+Patternnummer;
  FileStream := tFileStream.Create (filename,fmShareDenyNone);
  FileStream.Position := Patternbase+Drumbase;
  // Let's Rock
 BytesRead:=Filestream.Read(DrumP,1);
   GetBit := ((DrumP shr 0) and 1) = 1;
  If (GetBit) then
          D1S641.State:=cbchecked
  Else
          D1S641.State:=cbunchecked;
   GetBit := ((DrumP shr 1) and 1) = 1;
  If (GetBit) then
          D1S642.State:=cbchecked
  Else
          D1S642.State:=cbunchecked;
   GetBit := ((DrumP shr 2) and 1) = 1;
  If (GetBit) then
          D1S643.State:=cbchecked
  Else
          D1S643.State:=cbunchecked;
   GetBit := ((DrumP shr 3) and 1) = 1;
  If (GetBit) then
          D1S644.State:=cbchecked
  Else
          D1S644.State:=cbunchecked;
   GetBit := ((DrumP shr 4) and 1) = 1;
  If (GetBit) then
          D1S645.State:=cbchecked
  Else
          D1S645.State:=cbunchecked;
   GetBit := ((DrumP shr 5) and 1) = 1;
  If (GetBit) then
          D1S646.State:=cbchecked
  Else
          D1S646.State:=cbunchecked;
   GetBit := ((DrumP shr 6) and 1) = 1;
  If (GetBit) then
          D1S647.State:=cbchecked
  Else
          D1S647.State:=cbunchecked;
   GetBit := ((DrumP shr 7) and 1) = 1;
  If (GetBit) then
          D1S648.State:=cbchecked
  Else
          D1S648.State:=cbunchecked;
BytesRead:=Filestream.Read(DrumP,1);
   GetBit := ((DrumP shr 0) and 1) = 1;
  If (GetBit) then
          D1S649.State:=cbchecked
  Else
          D1S649.State:=cbunchecked;
   GetBit := ((DrumP shr 1) and 1) = 1;
  If (GetBit) then
          D1S650.State:=cbchecked
  Else
          D1S650.State:=cbunchecked;
   GetBit := ((DrumP shr 2) and 1) = 1;
  If (GetBit) then
          D1S651.State:=cbchecked
  Else
          D1S651.State:=cbunchecked;
   GetBit := ((DrumP shr 3) and 1) = 1;
  If (GetBit) then
          D1S652.State:=cbchecked
  Else
          D1S652.State:=cbunchecked;
   GetBit := ((DrumP shr 4) and 1) = 1;
  If (GetBit) then
          D1S653.State:=cbchecked
  Else
          D1S653.State:=cbunchecked;
   GetBit := ((DrumP shr 5) and 1) = 1;
  If (GetBit) then
          D1S654.State:=cbchecked
  Else
          D1S654.State:=cbunchecked;
   GetBit := ((DrumP shr 6) and 1) = 1;
  If (GetBit) then
          D1S655.State:=cbchecked
  Else
          D1S655.State:=cbunchecked;
   GetBit := ((DrumP shr 7) and 1) = 1;
  If (GetBit) then
          D1S656.State:=cbchecked
  Else
          D1S656.State:=cbunchecked;
BytesRead:=Filestream.Read(DrumP,1);
   GetBit := ((DrumP shr 0) and 1) = 1;
  If (GetBit) then
          D1S657.State:=cbchecked
  Else
          D1S657.State:=cbunchecked;
   GetBit := ((DrumP shr 1) and 1) = 1;
  If (GetBit) then
          D1S658.State:=cbchecked
  Else
          D1S658.State:=cbunchecked;
   GetBit := ((DrumP shr 2) and 1) = 1;
  If (GetBit) then
          D1S659.State:=cbchecked
  Else
          D1S659.State:=cbunchecked;
   GetBit := ((DrumP shr 3) and 1) = 1;
  If (GetBit) then
          D1S660.State:=cbchecked
  Else
          D1S660.State:=cbunchecked;
   GetBit := ((DrumP shr 4) and 1) = 1;
  If (GetBit) then
          D1S661.State:=cbchecked
  Else
          D1S661.State:=cbunchecked;
   GetBit := ((DrumP shr 5) and 1) = 1;
  If (GetBit) then
          D1S662.State:=cbchecked
  Else
          D1S662.State:=cbunchecked;
   GetBit := ((DrumP shr 6) and 1) = 1;
  If (GetBit) then
          D1S663.State:=cbchecked
  Else
          D1S663.State:=cbunchecked;
   GetBit := ((DrumP shr 7) and 1) = 1;
  If (GetBit) then
          D1S664.State:=cbchecked
  Else
          D1S664.State:=cbunchecked;
BytesRead:=Filestream.Read(DrumP,1);
   GetBit := ((DrumP shr 0) and 1) = 1;
  If (GetBit) then
          D1S665.State:=cbchecked
  Else
          D1S665.State:=cbunchecked;
   GetBit := ((DrumP shr 1) and 1) = 1;
  If (GetBit) then
          D1S666.State:=cbchecked
  Else
          D1S666.State:=cbunchecked;
   GetBit := ((DrumP shr 2) and 1) = 1;
  If (GetBit) then
          D1S667.State:=cbchecked
  Else
          D1S667.State:=cbunchecked;
   GetBit := ((DrumP shr 3) and 1) = 1;
  If (GetBit) then
          D1S668.State:=cbchecked
  Else
          D1S668.State:=cbunchecked;
   GetBit := ((DrumP shr 4) and 1) = 1;
  If (GetBit) then
          D1S669.State:=cbchecked
  Else
          D1S669.State:=cbunchecked;
   GetBit := ((DrumP shr 5) and 1) = 1;
  If (GetBit) then
          D1S670.State:=cbchecked
  Else
          D1S670.State:=cbunchecked;
   GetBit := ((DrumP shr 6) and 1) = 1;
  If (GetBit) then
          D1S671.State:=cbchecked
  Else
          D1S671.State:=cbunchecked;
   GetBit := ((DrumP shr 7) and 1) = 1;
  If (GetBit) then
          D1S672.State:=cbchecked
  Else
          D1S672.State:=cbunchecked;
BytesRead:=Filestream.Read(DrumP,1);
   GetBit := ((DrumP shr 0) and 1) = 1;
  If (GetBit) then
          D1S673.State:=cbchecked
  Else
          D1S673.State:=cbunchecked;
   GetBit := ((DrumP shr 1) and 1) = 1;
  If (GetBit) then
          D1S674.State:=cbchecked
  Else
          D1S674.State:=cbunchecked;
   GetBit := ((DrumP shr 2) and 1) = 1;
  If (GetBit) then
          D1S675.State:=cbchecked
  Else
          D1S675.State:=cbunchecked;
   GetBit := ((DrumP shr 3) and 1) = 1;
  If (GetBit) then
          D1S676.State:=cbchecked
  Else
          D1S676.State:=cbunchecked;
   GetBit := ((DrumP shr 4) and 1) = 1;
  If (GetBit) then
          D1S677.State:=cbchecked
  Else
          D1S677.State:=cbunchecked;
   GetBit := ((DrumP shr 5) and 1) = 1;
  If (GetBit) then
          D1S678.State:=cbchecked
  Else
          D1S678.State:=cbunchecked;
   GetBit := ((DrumP shr 6) and 1) = 1;
  If (GetBit) then
          D1S679.State:=cbchecked
  Else
          D1S679.State:=cbunchecked;
   GetBit := ((DrumP shr 7) and 1) = 1;
  If (GetBit) then
          D1S680.State:=cbchecked
  Else
          D1S680.State:=cbunchecked;
BytesRead:=Filestream.Read(DrumP,1);
   GetBit := ((DrumP shr 0) and 1) = 1;
  If (GetBit) then
          D1S681.State:=cbchecked
  Else
          D1S681.State:=cbunchecked;
   GetBit := ((DrumP shr 1) and 1) = 1;
  If (GetBit) then
          D1S682.State:=cbchecked
  Else
          D1S682.State:=cbunchecked;
   GetBit := ((DrumP shr 2) and 1) = 1;
  If (GetBit) then
          D1S683.State:=cbchecked
  Else
          D1S683.State:=cbunchecked;
   GetBit := ((DrumP shr 3) and 1) = 1;
  If (GetBit) then
          D1S684.State:=cbchecked
  Else
          D1S684.State:=cbunchecked;
   GetBit := ((DrumP shr 4) and 1) = 1;
  If (GetBit) then
          D1S685.State:=cbchecked
  Else
          D1S685.State:=cbunchecked;
   GetBit := ((DrumP shr 5) and 1) = 1;
  If (GetBit) then
          D1S686.State:=cbchecked
  Else
          D1S686.State:=cbunchecked;
   GetBit := ((DrumP shr 6) and 1) = 1;
  If (GetBit) then
          D1S687.State:=cbchecked
  Else
          D1S687.State:=cbunchecked;
   GetBit := ((DrumP shr 7) and 1) = 1;
  If (GetBit) then
          D1S688.State:=cbchecked
  Else
          D1S688.State:=cbunchecked;
BytesRead:=Filestream.Read(DrumP,1);
   GetBit := ((DrumP shr 0) and 1) = 1;
  If (GetBit) then
          D1S689.State:=cbchecked
  Else
          D1S689.State:=cbunchecked;
   GetBit := ((DrumP shr 1) and 1) = 1;
  If (GetBit) then
          D1S690.State:=cbchecked
  Else
          D1S690.State:=cbunchecked;
   GetBit := ((DrumP shr 2) and 1) = 1;
  If (GetBit) then
          D1S691.State:=cbchecked
  Else
          D1S691.State:=cbunchecked;
   GetBit := ((DrumP shr 3) and 1) = 1;
  If (GetBit) then
          D1S692.State:=cbchecked
  Else
          D1S692.State:=cbunchecked;
   GetBit := ((DrumP shr 4) and 1) = 1;
  If (GetBit) then
          D1S693.State:=cbchecked
  Else
          D1S693.State:=cbunchecked;
   GetBit := ((DrumP shr 5) and 1) = 1;
  If (GetBit) then
          D1S694.State:=cbchecked
  Else
          D1S694.State:=cbunchecked;
   GetBit := ((DrumP shr 6) and 1) = 1;
  If (GetBit) then
          D1S695.State:=cbchecked
  Else
          D1S695.State:=cbunchecked;
   GetBit := ((DrumP shr 7) and 1) = 1;
  If (GetBit) then
          D1S696.State:=cbchecked
  Else
          D1S696.State:=cbunchecked;
BytesRead:=Filestream.Read(DrumP,1);
   GetBit := ((DrumP shr 0) and 1) = 1;
  If (GetBit) then
          D1S697.State:=cbchecked
  Else
          D1S697.State:=cbunchecked;
   GetBit := ((DrumP shr 1) and 1) = 1;
  If (GetBit) then
          D1S698.State:=cbchecked
  Else
          D1S698.State:=cbunchecked;
   GetBit := ((DrumP shr 2) and 1) = 1;
  If (GetBit) then
          D1S699.State:=cbchecked
  Else
          D1S699.State:=cbunchecked;
   GetBit := ((DrumP shr 3) and 1) = 1;
  If (GetBit) then
          D1S700.State:=cbchecked
  Else
          D1S700.State:=cbunchecked;
   GetBit := ((DrumP shr 4) and 1) = 1;
  If (GetBit) then
          D1S701.State:=cbchecked
  Else
          D1S701.State:=cbunchecked;
   GetBit := ((DrumP shr 5) and 1) = 1;
  If (GetBit) then
          D1S702.State:=cbchecked
  Else
          D1S702.State:=cbunchecked;
   GetBit := ((DrumP shr 6) and 1) = 1;
  If (GetBit) then
          D1S703.State:=cbchecked
  Else
          D1S703.State:=cbunchecked;
   GetBit := ((DrumP shr 7) and 1) = 1;
  If (GetBit) then
          D1S704.State:=cbchecked
  Else
          D1S704.State:=cbunchecked;
BytesRead:=Filestream.Read(DrumP,1);
   GetBit := ((DrumP shr 0) and 1) = 1;
  If (GetBit) then
          D1S705.State:=cbchecked
  Else
          D1S705.State:=cbunchecked;
   GetBit := ((DrumP shr 1) and 1) = 1;
  If (GetBit) then
          D1S706.State:=cbchecked
  Else
          D1S706.State:=cbunchecked;
   GetBit := ((DrumP shr 2) and 1) = 1;
  If (GetBit) then
          D1S707.State:=cbchecked
  Else
          D1S707.State:=cbunchecked;
   GetBit := ((DrumP shr 3) and 1) = 1;
  If (GetBit) then
          D1S708.State:=cbchecked
  Else
          D1S708.State:=cbunchecked;
   GetBit := ((DrumP shr 4) and 1) = 1;
  If (GetBit) then
          D1S709.State:=cbchecked
  Else
          D1S709.State:=cbunchecked;
   GetBit := ((DrumP shr 5) and 1) = 1;
  If (GetBit) then
          D1S710.State:=cbchecked
  Else
          D1S710.State:=cbunchecked;
   GetBit := ((DrumP shr 6) and 1) = 1;
  If (GetBit) then
          D1S711.State:=cbchecked
  Else
          D1S711.State:=cbunchecked;
   GetBit := ((DrumP shr 7) and 1) = 1;
  If (GetBit) then
          D1S712.State:=cbchecked
  Else
          D1S712.State:=cbunchecked;
BytesRead:=Filestream.Read(DrumP,1);
   GetBit := ((DrumP shr 0) and 1) = 1;
  If (GetBit) then
          D1S713.State:=cbchecked
  Else
          D1S713.State:=cbunchecked;
   GetBit := ((DrumP shr 1) and 1) = 1;
  If (GetBit) then
          D1S714.State:=cbchecked
  Else
          D1S714.State:=cbunchecked;
   GetBit := ((DrumP shr 2) and 1) = 1;
  If (GetBit) then
          D1S715.State:=cbchecked
  Else
          D1S715.State:=cbunchecked;
   GetBit := ((DrumP shr 3) and 1) = 1;
  If (GetBit) then
          D1S716.State:=cbchecked
  Else
          D1S716.State:=cbunchecked;
   GetBit := ((DrumP shr 4) and 1) = 1;
  If (GetBit) then
          D1S717.State:=cbchecked
  Else
          D1S717.State:=cbunchecked;
   GetBit := ((DrumP shr 5) and 1) = 1;
  If (GetBit) then
          D1S718.State:=cbchecked
  Else
          D1S718.State:=cbunchecked;
   GetBit := ((DrumP shr 6) and 1) = 1;
  If (GetBit) then
          D1S719.State:=cbchecked
  Else
          D1S719.State:=cbunchecked;
   GetBit := ((DrumP shr 7) and 1) = 1;
  If (GetBit) then
          D1S720.State:=cbchecked
  Else
          D1S720.State:=cbunchecked;
BytesRead:=Filestream.Read(DrumP,1);
   GetBit := ((DrumP shr 0) and 1) = 1;
  If (GetBit) then
          D1S721.State:=cbchecked
  Else
          D1S721.State:=cbunchecked;
   GetBit := ((DrumP shr 1) and 1) = 1;
  If (GetBit) then
          D1S722.State:=cbchecked
  Else
          D1S722.State:=cbunchecked;
   GetBit := ((DrumP shr 2) and 1) = 1;
  If (GetBit) then
          D1S723.State:=cbchecked
  Else
          D1S723.State:=cbunchecked;
   GetBit := ((DrumP shr 3) and 1) = 1;
  If (GetBit) then
          D1S724.State:=cbchecked
  Else
          D1S724.State:=cbunchecked;
   GetBit := ((DrumP shr 4) and 1) = 1;
  If (GetBit) then
          D1S725.State:=cbchecked
  Else
          D1S725.State:=cbunchecked;
   GetBit := ((DrumP shr 5) and 1) = 1;
  If (GetBit) then
          D1S726.State:=cbchecked
  Else
          D1S726.State:=cbunchecked;
   GetBit := ((DrumP shr 6) and 1) = 1;
  If (GetBit) then
          D1S727.State:=cbchecked
  Else
          D1S727.State:=cbunchecked;
   GetBit := ((DrumP shr 7) and 1) = 1;
  If (GetBit) then
          D1S728.State:=cbchecked
  Else
          D1S728.State:=cbunchecked;
BytesRead:=Filestream.Read(DrumP,1);
   GetBit := ((DrumP shr 0) and 1) = 1;
  If (GetBit) then
          D1S729.State:=cbchecked
  Else
          D1S729.State:=cbunchecked;
   GetBit := ((DrumP shr 1) and 1) = 1;
  If (GetBit) then
          D1S730.State:=cbchecked
  Else
          D1S730.State:=cbunchecked;
   GetBit := ((DrumP shr 2) and 1) = 1;
  If (GetBit) then
          D1S731.State:=cbchecked
  Else
          D1S731.State:=cbunchecked;
   GetBit := ((DrumP shr 3) and 1) = 1;
  If (GetBit) then
          D1S732.State:=cbchecked
  Else
          D1S732.State:=cbunchecked;
   GetBit := ((DrumP shr 4) and 1) = 1;
  If (GetBit) then
          D1S733.State:=cbchecked
  Else
          D1S733.State:=cbunchecked;
   GetBit := ((DrumP shr 5) and 1) = 1;
  If (GetBit) then
          D1S734.State:=cbchecked
  Else
          D1S734.State:=cbunchecked;
   GetBit := ((DrumP shr 6) and 1) = 1;
  If (GetBit) then
          D1S735.State:=cbchecked
  Else
          D1S735.State:=cbunchecked;
   GetBit := ((DrumP shr 7) and 1) = 1;
  If (GetBit) then
          D1S736.State:=cbchecked
  Else
          D1S736.State:=cbunchecked;
BytesRead:=Filestream.Read(DrumP,1);
   GetBit := ((DrumP shr 0) and 1) = 1;
  If (GetBit) then
          D1S737.State:=cbchecked
  Else
          D1S737.State:=cbunchecked;
   GetBit := ((DrumP shr 1) and 1) = 1;
  If (GetBit) then
          D1S738.State:=cbchecked
  Else
          D1S738.State:=cbunchecked;
   GetBit := ((DrumP shr 2) and 1) = 1;
  If (GetBit) then
          D1S739.State:=cbchecked
  Else
          D1S739.State:=cbunchecked;
   GetBit := ((DrumP shr 3) and 1) = 1;
  If (GetBit) then
          D1S740.State:=cbchecked
  Else
          D1S740.State:=cbunchecked;
   GetBit := ((DrumP shr 4) and 1) = 1;
  If (GetBit) then
          D1S741.State:=cbchecked
  Else
          D1S741.State:=cbunchecked;
   GetBit := ((DrumP shr 5) and 1) = 1;
  If (GetBit) then
          D1S742.State:=cbchecked
  Else
          D1S742.State:=cbunchecked;
   GetBit := ((DrumP shr 6) and 1) = 1;
  If (GetBit) then
          D1S743.State:=cbchecked
  Else
          D1S743.State:=cbunchecked;
   GetBit := ((DrumP shr 7) and 1) = 1;
  If (GetBit) then
          D1S744.State:=cbchecked
  Else
          D1S744.State:=cbunchecked;
BytesRead:=Filestream.Read(DrumP,1);
   GetBit := ((DrumP shr 0) and 1) = 1;
  If (GetBit) then
          D1S745.State:=cbchecked
  Else
          D1S745.State:=cbunchecked;
   GetBit := ((DrumP shr 1) and 1) = 1;
  If (GetBit) then
          D1S746.State:=cbchecked
  Else
          D1S746.State:=cbunchecked;
   GetBit := ((DrumP shr 2) and 1) = 1;
  If (GetBit) then
          D1S747.State:=cbchecked
  Else
          D1S747.State:=cbunchecked;
   GetBit := ((DrumP shr 3) and 1) = 1;
  If (GetBit) then
          D1S748.State:=cbchecked
  Else
          D1S748.State:=cbunchecked;
   GetBit := ((DrumP shr 4) and 1) = 1;
  If (GetBit) then
          D1S749.State:=cbchecked
  Else
          D1S749.State:=cbunchecked;
   GetBit := ((DrumP shr 5) and 1) = 1;
  If (GetBit) then
          D1S750.State:=cbchecked
  Else
          D1S750.State:=cbunchecked;
   GetBit := ((DrumP shr 6) and 1) = 1;
  If (GetBit) then
          D1S751.State:=cbchecked
  Else
          D1S751.State:=cbunchecked;
   GetBit := ((DrumP shr 7) and 1) = 1;
  If (GetBit) then
          D1S752.State:=cbchecked
  Else
          D1S752.State:=cbunchecked;
BytesRead:=Filestream.Read(DrumP,1);
   GetBit := ((DrumP shr 0) and 1) = 1;
  If (GetBit) then
          D1S753.State:=cbchecked
  Else
          D1S753.State:=cbunchecked;
   GetBit := ((DrumP shr 1) and 1) = 1;
  If (GetBit) then
          D1S754.State:=cbchecked
  Else
          D1S754.State:=cbunchecked;
   GetBit := ((DrumP shr 2) and 1) = 1;
  If (GetBit) then
          D1S755.State:=cbchecked
  Else
          D1S755.State:=cbunchecked;
   GetBit := ((DrumP shr 3) and 1) = 1;
  If (GetBit) then
          D1S756.State:=cbchecked
  Else
          D1S756.State:=cbunchecked;
   GetBit := ((DrumP shr 4) and 1) = 1;
  If (GetBit) then
          D1S757.State:=cbchecked
  Else
          D1S757.State:=cbunchecked;
   GetBit := ((DrumP shr 5) and 1) = 1;
  If (GetBit) then
          D1S758.State:=cbchecked
  Else
          D1S758.State:=cbunchecked;
   GetBit := ((DrumP shr 6) and 1) = 1;
  If (GetBit) then
          D1S759.State:=cbchecked
  Else
          D1S759.State:=cbunchecked;
   GetBit := ((DrumP shr 7) and 1) = 1;
  If (GetBit) then
          D1S760.State:=cbchecked
  Else
          D1S760.State:=cbunchecked;
BytesRead:=Filestream.Read(DrumP,1);
   GetBit := ((DrumP shr 0) and 1) = 1;
  If (GetBit) then
          D1S761.State:=cbchecked
  Else
          D1S761.State:=cbunchecked;
   GetBit := ((DrumP shr 1) and 1) = 1;
  If (GetBit) then
          D1S762.State:=cbchecked
  Else
          D1S762.State:=cbunchecked;
   GetBit := ((DrumP shr 2) and 1) = 1;
  If (GetBit) then
          D1S763.State:=cbchecked
  Else
          D1S763.State:=cbunchecked;
   GetBit := ((DrumP shr 3) and 1) = 1;
  If (GetBit) then
          D1S764.State:=cbchecked
  Else
          D1S764.State:=cbunchecked;
   GetBit := ((DrumP shr 4) and 1) = 1;
  If (GetBit) then
          D1S765.State:=cbchecked
  Else
          D1S765.State:=cbunchecked;
   GetBit := ((DrumP shr 5) and 1) = 1;
  If (GetBit) then
          D1S766.State:=cbchecked
  Else
          D1S766.State:=cbunchecked;
   GetBit := ((DrumP shr 6) and 1) = 1;
  If (GetBit) then
          D1S767.State:=cbchecked
  Else
          D1S767.State:=cbunchecked;
   GetBit := ((DrumP shr 7) and 1) = 1;
  If (GetBit) then
          D1S768.State:=cbchecked
  Else
          D1S768.State:=cbunchecked;
  //Ende File lesen
  FileStream.Free;
end;

procedure TMainForm.LoadDrum6BSequence(Drumname : String;Patternname : String;Bankname : String;Filename : String);
var
  Drumbase:Integer;
  Patternnummer:Integer;
  BytesRead : Integer;
  FileStream : TFileStream;
  Patternbase: Integer;
begin
  Case Drumname of
	   'Drum 1' : Drumbase := 24+10;
	   'Drum 2' : Drumbase := 50+10;
	   'Drum 3' : Drumbase := 76+10;
	   'Drum 4' : Drumbase := 102+10;
	   'Drum 5' : Drumbase := 128+10;
	   'Drum 6A' : Drumbase := 154+10;
	   'Drum 6B' : Drumbase := 180+10;
	   'Drum 7A' : Drumbase := 206+10;
	   'Drum 7B' : Drumbase := 232+10;
           'Drum Accent Sequence' : Drumbase := 1640;
           'Synth Accent Sequence': Drumbase := 1658;
  end;

  Patternnummer := (strtoint(leftstr(Patternname,2))-1)*4806;
  If (Bankname='Bank A') Then Patternbase:=512+Patternnummer;
  If (Bankname='Bank B') Then Patternbase:=512+64*4806+Patternnummer;
  If (Bankname='Bank C') Then Patternbase:=512+128*4806+Patternnummer;
  If (Bankname='Bank D') Then Patternbase:=512+192*4806+Patternnummer;
  FileStream := tFileStream.Create (filename,fmShareDenyNone);
  FileStream.Position := Patternbase+Drumbase;
  // Let's Rock
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S769.State:=cbchecked
    Else
            D1S769.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S770.State:=cbchecked
    Else
            D1S770.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S771.State:=cbchecked
    Else
            D1S771.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S772.State:=cbchecked
    Else
            D1S772.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S773.State:=cbchecked
    Else
            D1S773.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S774.State:=cbchecked
    Else
            D1S774.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S775.State:=cbchecked
    Else
            D1S775.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S776.State:=cbchecked
    Else
            D1S776.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S777.State:=cbchecked
    Else
            D1S777.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S778.State:=cbchecked
    Else
            D1S778.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S779.State:=cbchecked
    Else
            D1S779.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S780.State:=cbchecked
    Else
            D1S780.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S781.State:=cbchecked
    Else
            D1S781.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S782.State:=cbchecked
    Else
            D1S782.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S783.State:=cbchecked
    Else
            D1S783.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S784.State:=cbchecked
    Else
            D1S784.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S785.State:=cbchecked
    Else
            D1S785.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S786.State:=cbchecked
    Else
            D1S786.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S787.State:=cbchecked
    Else
            D1S787.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S788.State:=cbchecked
    Else
            D1S788.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S789.State:=cbchecked
    Else
            D1S789.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S790.State:=cbchecked
    Else
            D1S790.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S791.State:=cbchecked
    Else
            D1S791.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S792.State:=cbchecked
    Else
            D1S792.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S793.State:=cbchecked
    Else
            D1S793.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S794.State:=cbchecked
    Else
            D1S794.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S795.State:=cbchecked
    Else
            D1S795.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S796.State:=cbchecked
    Else
            D1S796.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S797.State:=cbchecked
    Else
            D1S797.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S798.State:=cbchecked
    Else
            D1S798.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S799.State:=cbchecked
    Else
            D1S799.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S800.State:=cbchecked
    Else
            D1S800.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S801.State:=cbchecked
    Else
            D1S801.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S802.State:=cbchecked
    Else
            D1S802.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S803.State:=cbchecked
    Else
            D1S803.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S804.State:=cbchecked
    Else
            D1S804.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S805.State:=cbchecked
    Else
            D1S805.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S806.State:=cbchecked
    Else
            D1S806.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S807.State:=cbchecked
    Else
            D1S807.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S808.State:=cbchecked
    Else
            D1S808.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S809.State:=cbchecked
    Else
            D1S809.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S810.State:=cbchecked
    Else
            D1S810.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S811.State:=cbchecked
    Else
            D1S811.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S812.State:=cbchecked
    Else
            D1S812.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S813.State:=cbchecked
    Else
            D1S813.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S814.State:=cbchecked
    Else
            D1S814.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S815.State:=cbchecked
    Else
            D1S815.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S816.State:=cbchecked
    Else
            D1S816.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S817.State:=cbchecked
    Else
            D1S817.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S818.State:=cbchecked
    Else
            D1S818.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S819.State:=cbchecked
    Else
            D1S819.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S820.State:=cbchecked
    Else
            D1S820.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S821.State:=cbchecked
    Else
            D1S821.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S822.State:=cbchecked
    Else
            D1S822.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S823.State:=cbchecked
    Else
            D1S823.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S824.State:=cbchecked
    Else
            D1S824.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S825.State:=cbchecked
    Else
            D1S825.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S826.State:=cbchecked
    Else
            D1S826.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S827.State:=cbchecked
    Else
            D1S827.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S828.State:=cbchecked
    Else
            D1S828.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S829.State:=cbchecked
    Else
            D1S829.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S830.State:=cbchecked
    Else
            D1S830.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S831.State:=cbchecked
    Else
            D1S831.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S832.State:=cbchecked
    Else
            D1S832.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S833.State:=cbchecked
    Else
            D1S833.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S834.State:=cbchecked
    Else
            D1S834.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S835.State:=cbchecked
    Else
            D1S835.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S836.State:=cbchecked
    Else
            D1S836.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S837.State:=cbchecked
    Else
            D1S837.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S838.State:=cbchecked
    Else
            D1S838.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S839.State:=cbchecked
    Else
            D1S839.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S840.State:=cbchecked
    Else
            D1S840.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S841.State:=cbchecked
    Else
            D1S841.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S842.State:=cbchecked
    Else
            D1S842.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S843.State:=cbchecked
    Else
            D1S843.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S844.State:=cbchecked
    Else
            D1S844.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S845.State:=cbchecked
    Else
            D1S845.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S846.State:=cbchecked
    Else
            D1S846.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S847.State:=cbchecked
    Else
            D1S847.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S848.State:=cbchecked
    Else
            D1S848.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S849.State:=cbchecked
    Else
            D1S849.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S850.State:=cbchecked
    Else
            D1S850.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S851.State:=cbchecked
    Else
            D1S851.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S852.State:=cbchecked
    Else
            D1S852.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S853.State:=cbchecked
    Else
            D1S853.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S854.State:=cbchecked
    Else
            D1S854.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S855.State:=cbchecked
    Else
            D1S855.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S856.State:=cbchecked
    Else
            D1S856.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S857.State:=cbchecked
    Else
            D1S857.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S858.State:=cbchecked
    Else
            D1S858.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S859.State:=cbchecked
    Else
            D1S859.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S860.State:=cbchecked
    Else
            D1S860.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S861.State:=cbchecked
    Else
            D1S861.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S862.State:=cbchecked
    Else
            D1S862.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S863.State:=cbchecked
    Else
            D1S863.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S864.State:=cbchecked
    Else
            D1S864.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S865.State:=cbchecked
    Else
            D1S865.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S866.State:=cbchecked
    Else
            D1S866.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S867.State:=cbchecked
    Else
            D1S867.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S868.State:=cbchecked
    Else
            D1S868.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S869.State:=cbchecked
    Else
            D1S869.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S870.State:=cbchecked
    Else
            D1S870.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S871.State:=cbchecked
    Else
            D1S871.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S872.State:=cbchecked
    Else
            D1S872.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S873.State:=cbchecked
    Else
            D1S873.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S874.State:=cbchecked
    Else
            D1S874.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S875.State:=cbchecked
    Else
            D1S875.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S876.State:=cbchecked
    Else
            D1S876.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S877.State:=cbchecked
    Else
            D1S877.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S878.State:=cbchecked
    Else
            D1S878.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S879.State:=cbchecked
    Else
            D1S879.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S880.State:=cbchecked
    Else
            D1S880.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S881.State:=cbchecked
    Else
            D1S881.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S882.State:=cbchecked
    Else
            D1S882.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S883.State:=cbchecked
    Else
            D1S883.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S884.State:=cbchecked
    Else
            D1S884.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S885.State:=cbchecked
    Else
            D1S885.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S886.State:=cbchecked
    Else
            D1S886.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S887.State:=cbchecked
    Else
            D1S887.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S888.State:=cbchecked
    Else
            D1S888.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S889.State:=cbchecked
    Else
            D1S889.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S890.State:=cbchecked
    Else
            D1S890.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S891.State:=cbchecked
    Else
            D1S891.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S892.State:=cbchecked
    Else
            D1S892.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S893.State:=cbchecked
    Else
            D1S893.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S894.State:=cbchecked
    Else
            D1S894.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S895.State:=cbchecked
    Else
            D1S895.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S896.State:=cbchecked
    Else
            D1S896.State:=cbunchecked;
    //Ende File lesen
    FileStream.Free;
end;

procedure TMainForm.LoadDrum7ASequence(Drumname : String;Patternname : String;Bankname : String;Filename : String);
var
  Drumbase:Integer;
  Patternnummer:Integer;
  BytesRead : Integer;
  FileStream : TFileStream;
  Patternbase: Integer;
begin
  Case Drumname of
	   'Drum 1' : Drumbase := 24+10;
	   'Drum 2' : Drumbase := 50+10;
	   'Drum 3' : Drumbase := 76+10;
	   'Drum 4' : Drumbase := 102+10;
	   'Drum 5' : Drumbase := 128+10;
	   'Drum 6A' : Drumbase := 154+10;
	   'Drum 6B' : Drumbase := 180+10;
	   'Drum 7A' : Drumbase := 206+10;
	   'Drum 7B' : Drumbase := 232+10;
           'Drum Accent Sequence' : Drumbase := 1640;
           'Synth Accent Sequence': Drumbase := 1658;
  end;

  Patternnummer := (strtoint(leftstr(Patternname,2))-1)*4806;
  If (Bankname='Bank A') Then Patternbase:=512+Patternnummer;
  If (Bankname='Bank B') Then Patternbase:=512+64*4806+Patternnummer;
  If (Bankname='Bank C') Then Patternbase:=512+128*4806+Patternnummer;
  If (Bankname='Bank D') Then Patternbase:=512+192*4806+Patternnummer;
  FileStream := tFileStream.Create (filename,fmShareDenyNone);
  FileStream.Position := Patternbase+Drumbase;
  // Let's Rock
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S897.State:=cbchecked
    Else
            D1S897.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S898.State:=cbchecked
    Else
            D1S898.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S899.State:=cbchecked
    Else
            D1S899.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S900.State:=cbchecked
    Else
            D1S900.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S901.State:=cbchecked
    Else
            D1S901.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S902.State:=cbchecked
    Else
            D1S902.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S903.State:=cbchecked
    Else
            D1S903.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S904.State:=cbchecked
    Else
            D1S904.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S905.State:=cbchecked
    Else
            D1S905.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S906.State:=cbchecked
    Else
            D1S906.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S907.State:=cbchecked
    Else
            D1S907.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S908.State:=cbchecked
    Else
            D1S908.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S909.State:=cbchecked
    Else
            D1S909.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S910.State:=cbchecked
    Else
            D1S910.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S911.State:=cbchecked
    Else
            D1S911.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S912.State:=cbchecked
    Else
            D1S912.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S913.State:=cbchecked
    Else
            D1S913.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S914.State:=cbchecked
    Else
            D1S914.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S915.State:=cbchecked
    Else
            D1S915.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S916.State:=cbchecked
    Else
            D1S916.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S917.State:=cbchecked
    Else
            D1S917.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S918.State:=cbchecked
    Else
            D1S918.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S919.State:=cbchecked
    Else
            D1S919.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S920.State:=cbchecked
    Else
            D1S920.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S921.State:=cbchecked
    Else
            D1S921.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S922.State:=cbchecked
    Else
            D1S922.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S923.State:=cbchecked
    Else
            D1S923.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S924.State:=cbchecked
    Else
            D1S924.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S925.State:=cbchecked
    Else
            D1S925.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S926.State:=cbchecked
    Else
            D1S926.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S927.State:=cbchecked
    Else
            D1S927.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S928.State:=cbchecked
    Else
            D1S928.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S929.State:=cbchecked
    Else
            D1S929.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S930.State:=cbchecked
    Else
            D1S930.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S931.State:=cbchecked
    Else
            D1S931.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S932.State:=cbchecked
    Else
            D1S932.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S933.State:=cbchecked
    Else
            D1S933.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S934.State:=cbchecked
    Else
            D1S934.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S935.State:=cbchecked
    Else
            D1S935.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S936.State:=cbchecked
    Else
            D1S936.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S937.State:=cbchecked
    Else
            D1S937.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S938.State:=cbchecked
    Else
            D1S938.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S939.State:=cbchecked
    Else
            D1S939.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S940.State:=cbchecked
    Else
            D1S940.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S941.State:=cbchecked
    Else
            D1S941.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S942.State:=cbchecked
    Else
            D1S942.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S943.State:=cbchecked
    Else
            D1S943.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S944.State:=cbchecked
    Else
            D1S944.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S945.State:=cbchecked
    Else
            D1S945.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S946.State:=cbchecked
    Else
            D1S946.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S947.State:=cbchecked
    Else
            D1S947.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S948.State:=cbchecked
    Else
            D1S948.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S949.State:=cbchecked
    Else
            D1S949.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S950.State:=cbchecked
    Else
            D1S950.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S951.State:=cbchecked
    Else
            D1S951.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S952.State:=cbchecked
    Else
            D1S952.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S953.State:=cbchecked
    Else
            D1S953.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S954.State:=cbchecked
    Else
            D1S954.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S955.State:=cbchecked
    Else
            D1S955.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S956.State:=cbchecked
    Else
            D1S956.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S957.State:=cbchecked
    Else
            D1S957.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S958.State:=cbchecked
    Else
            D1S958.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S959.State:=cbchecked
    Else
            D1S959.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S960.State:=cbchecked
    Else
            D1S960.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S961.State:=cbchecked
    Else
            D1S961.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S962.State:=cbchecked
    Else
            D1S962.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S963.State:=cbchecked
    Else
            D1S963.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S964.State:=cbchecked
    Else
            D1S964.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S965.State:=cbchecked
    Else
            D1S965.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S966.State:=cbchecked
    Else
            D1S966.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S967.State:=cbchecked
    Else
            D1S967.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S968.State:=cbchecked
    Else
            D1S968.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S969.State:=cbchecked
    Else
            D1S969.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S970.State:=cbchecked
    Else
            D1S970.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S971.State:=cbchecked
    Else
            D1S971.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S972.State:=cbchecked
    Else
            D1S972.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S973.State:=cbchecked
    Else
            D1S973.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S974.State:=cbchecked
    Else
            D1S974.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S975.State:=cbchecked
    Else
            D1S975.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S976.State:=cbchecked
    Else
            D1S976.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S977.State:=cbchecked
    Else
            D1S977.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S978.State:=cbchecked
    Else
            D1S978.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S979.State:=cbchecked
    Else
            D1S979.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S980.State:=cbchecked
    Else
            D1S980.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S981.State:=cbchecked
    Else
            D1S981.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S982.State:=cbchecked
    Else
            D1S982.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S983.State:=cbchecked
    Else
            D1S983.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S984.State:=cbchecked
    Else
            D1S984.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S985.State:=cbchecked
    Else
            D1S985.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S986.State:=cbchecked
    Else
            D1S986.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S987.State:=cbchecked
    Else
            D1S987.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S988.State:=cbchecked
    Else
            D1S988.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S989.State:=cbchecked
    Else
            D1S989.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S990.State:=cbchecked
    Else
            D1S990.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S991.State:=cbchecked
    Else
            D1S991.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S992.State:=cbchecked
    Else
            D1S992.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S993.State:=cbchecked
    Else
            D1S993.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S994.State:=cbchecked
    Else
            D1S994.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S995.State:=cbchecked
    Else
            D1S995.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S996.State:=cbchecked
    Else
            D1S996.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S997.State:=cbchecked
    Else
            D1S997.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S998.State:=cbchecked
    Else
            D1S998.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S999.State:=cbchecked
    Else
            D1S999.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S1000.State:=cbchecked
    Else
            D1S1000.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S1001.State:=cbchecked
    Else
            D1S1001.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S1002.State:=cbchecked
    Else
            D1S1002.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S1003.State:=cbchecked
    Else
            D1S1003.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S1004.State:=cbchecked
    Else
            D1S1004.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S1005.State:=cbchecked
    Else
            D1S1005.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S1006.State:=cbchecked
    Else
            D1S1006.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S1007.State:=cbchecked
    Else
            D1S1007.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S1008.State:=cbchecked
    Else
            D1S1008.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S1009.State:=cbchecked
    Else
            D1S1009.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S1010.State:=cbchecked
    Else
            D1S1010.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S1011.State:=cbchecked
    Else
            D1S1011.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S1012.State:=cbchecked
    Else
            D1S1012.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S1013.State:=cbchecked
    Else
            D1S1013.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S1014.State:=cbchecked
    Else
            D1S1014.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S1015.State:=cbchecked
    Else
            D1S1015.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S1016.State:=cbchecked
    Else
            D1S1016.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S1017.State:=cbchecked
    Else
            D1S1017.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S1018.State:=cbchecked
    Else
            D1S1018.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S1019.State:=cbchecked
    Else
            D1S1019.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S1020.State:=cbchecked
    Else
            D1S1020.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S1021.State:=cbchecked
    Else
            D1S1021.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S1022.State:=cbchecked
    Else
            D1S1022.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S1023.State:=cbchecked
    Else
            D1S1023.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S1024.State:=cbchecked
    Else
            D1S1024.State:=cbunchecked;
    //Ende File lesen
    FileStream.Free;
end;

procedure TMainForm.LoadDrum7BSequence(Drumname : String;Patternname : String;Bankname : String;Filename : String);
var
  Drumbase:Integer;
  Patternnummer:Integer;
  BytesRead : Integer;
  FileStream : TFileStream;
  Patternbase: Integer;
begin
  Case Drumname of
	   'Drum 1' : Drumbase := 24+10;
	   'Drum 2' : Drumbase := 50+10;
	   'Drum 3' : Drumbase := 76+10;
	   'Drum 4' : Drumbase := 102+10;
	   'Drum 5' : Drumbase := 128+10;
	   'Drum 6A' : Drumbase := 154+10;
	   'Drum 6B' : Drumbase := 180+10;
	   'Drum 7A' : Drumbase := 206+10;
	   'Drum 7B' : Drumbase := 232+10;
           'Drum Accent Sequence' : Drumbase := 1640;
           'Synth Accent Sequence' : Drumbase := 1658;
  end;

  Patternnummer := (strtoint(leftstr(Patternname,2))-1)*4806;
  If (Bankname='Bank A') Then Patternbase:=512+Patternnummer;
  If (Bankname='Bank B') Then Patternbase:=512+64*4806+Patternnummer;
  If (Bankname='Bank C') Then Patternbase:=512+128*4806+Patternnummer;
  If (Bankname='Bank D') Then Patternbase:=512+192*4806+Patternnummer;
  FileStream := tFileStream.Create (filename,fmShareDenyNone);
  FileStream.Position := Patternbase+Drumbase;
  // Let's Rock
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S1025.State:=cbchecked
    Else
            D1S1025.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S1026.State:=cbchecked
    Else
            D1S1026.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S1027.State:=cbchecked
    Else
            D1S1027.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S1028.State:=cbchecked
    Else
            D1S1028.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S1029.State:=cbchecked
    Else
            D1S1029.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S1030.State:=cbchecked
    Else
            D1S1030.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S1031.State:=cbchecked
    Else
            D1S1031.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S1032.State:=cbchecked
    Else
            D1S1032.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S1033.State:=cbchecked
    Else
            D1S1033.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S1034.State:=cbchecked
    Else
            D1S1034.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S1035.State:=cbchecked
    Else
            D1S1035.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S1036.State:=cbchecked
    Else
            D1S1036.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S1037.State:=cbchecked
    Else
            D1S1037.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S1038.State:=cbchecked
    Else
            D1S1038.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S1039.State:=cbchecked
    Else
            D1S1039.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S1040.State:=cbchecked
    Else
            D1S1040.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S1041.State:=cbchecked
    Else
            D1S1041.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S1042.State:=cbchecked
    Else
            D1S1042.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S1043.State:=cbchecked
    Else
            D1S1043.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S1044.State:=cbchecked
    Else
            D1S1044.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S1045.State:=cbchecked
    Else
            D1S1045.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S1046.State:=cbchecked
    Else
            D1S1046.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S1047.State:=cbchecked
    Else
            D1S1047.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S1048.State:=cbchecked
    Else
            D1S1048.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S1049.State:=cbchecked
    Else
            D1S1049.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S1050.State:=cbchecked
    Else
            D1S1050.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S1051.State:=cbchecked
    Else
            D1S1051.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S1052.State:=cbchecked
    Else
            D1S1052.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S1053.State:=cbchecked
    Else
            D1S1053.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S1054.State:=cbchecked
    Else
            D1S1054.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S1055.State:=cbchecked
    Else
            D1S1055.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S1056.State:=cbchecked
    Else
            D1S1056.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S1057.State:=cbchecked
    Else
            D1S1057.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S1058.State:=cbchecked
    Else
            D1S1058.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S1059.State:=cbchecked
    Else
            D1S1059.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S1060.State:=cbchecked
    Else
            D1S1060.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S1061.State:=cbchecked
    Else
            D1S1061.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S1062.State:=cbchecked
    Else
            D1S1062.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S1063.State:=cbchecked
    Else
            D1S1063.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S1064.State:=cbchecked
    Else
            D1S1064.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S1065.State:=cbchecked
    Else
            D1S1065.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S1066.State:=cbchecked
    Else
            D1S1066.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S1067.State:=cbchecked
    Else
            D1S1067.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S1068.State:=cbchecked
    Else
            D1S1068.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S1069.State:=cbchecked
    Else
            D1S1069.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S1070.State:=cbchecked
    Else
            D1S1070.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S1071.State:=cbchecked
    Else
            D1S1071.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S1072.State:=cbchecked
    Else
            D1S1072.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S1073.State:=cbchecked
    Else
            D1S1073.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S1074.State:=cbchecked
    Else
            D1S1074.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S1075.State:=cbchecked
    Else
            D1S1075.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S1076.State:=cbchecked
    Else
            D1S1076.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S1077.State:=cbchecked
    Else
            D1S1077.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S1078.State:=cbchecked
    Else
            D1S1078.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S1079.State:=cbchecked
    Else
            D1S1079.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S1080.State:=cbchecked
    Else
            D1S1080.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S1081.State:=cbchecked
    Else
            D1S1081.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S1082.State:=cbchecked
    Else
            D1S1082.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S1083.State:=cbchecked
    Else
            D1S1083.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S1084.State:=cbchecked
    Else
            D1S1084.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S1085.State:=cbchecked
    Else
            D1S1085.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S1086.State:=cbchecked
    Else
            D1S1086.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S1087.State:=cbchecked
    Else
            D1S1087.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S1088.State:=cbchecked
    Else
            D1S1088.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S1089.State:=cbchecked
    Else
            D1S1089.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S1090.State:=cbchecked
    Else
            D1S1090.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S1091.State:=cbchecked
    Else
            D1S1091.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S1092.State:=cbchecked
    Else
            D1S1092.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S1093.State:=cbchecked
    Else
            D1S1093.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S1094.State:=cbchecked
    Else
            D1S1094.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S1095.State:=cbchecked
    Else
            D1S1095.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S1096.State:=cbchecked
    Else
            D1S1096.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S1097.State:=cbchecked
    Else
            D1S1097.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S1098.State:=cbchecked
    Else
            D1S1098.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S1099.State:=cbchecked
    Else
            D1S1099.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S1100.State:=cbchecked
    Else
            D1S1100.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S1101.State:=cbchecked
    Else
            D1S1101.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S1102.State:=cbchecked
    Else
            D1S1102.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S1103.State:=cbchecked
    Else
            D1S1103.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S1104.State:=cbchecked
    Else
            D1S1104.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S1105.State:=cbchecked
    Else
            D1S1105.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S1106.State:=cbchecked
    Else
            D1S1106.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S1107.State:=cbchecked
    Else
            D1S1107.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S1108.State:=cbchecked
    Else
            D1S1108.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S1109.State:=cbchecked
    Else
            D1S1109.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S1110.State:=cbchecked
    Else
            D1S1110.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S1111.State:=cbchecked
    Else
            D1S1111.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S1112.State:=cbchecked
    Else
            D1S1112.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S1113.State:=cbchecked
    Else
            D1S1113.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S1114.State:=cbchecked
    Else
            D1S1114.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S1115.State:=cbchecked
    Else
            D1S1115.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S1116.State:=cbchecked
    Else
            D1S1116.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S1117.State:=cbchecked
    Else
            D1S1117.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S1118.State:=cbchecked
    Else
            D1S1118.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S1119.State:=cbchecked
    Else
            D1S1119.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S1120.State:=cbchecked
    Else
            D1S1120.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S1121.State:=cbchecked
    Else
            D1S1121.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S1122.State:=cbchecked
    Else
            D1S1122.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S1123.State:=cbchecked
    Else
            D1S1123.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S1124.State:=cbchecked
    Else
            D1S1124.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S1125.State:=cbchecked
    Else
            D1S1125.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S1126.State:=cbchecked
    Else
            D1S1126.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S1127.State:=cbchecked
    Else
            D1S1127.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S1128.State:=cbchecked
    Else
            D1S1128.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S1129.State:=cbchecked
    Else
            D1S1129.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S1130.State:=cbchecked
    Else
            D1S1130.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S1131.State:=cbchecked
    Else
            D1S1131.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S1132.State:=cbchecked
    Else
            D1S1132.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S1133.State:=cbchecked
    Else
            D1S1133.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S1134.State:=cbchecked
    Else
            D1S1134.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S1135.State:=cbchecked
    Else
            D1S1135.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S1136.State:=cbchecked
    Else
            D1S1136.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S1137.State:=cbchecked
    Else
            D1S1137.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S1138.State:=cbchecked
    Else
            D1S1138.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S1139.State:=cbchecked
    Else
            D1S1139.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S1140.State:=cbchecked
    Else
            D1S1140.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S1141.State:=cbchecked
    Else
            D1S1141.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S1142.State:=cbchecked
    Else
            D1S1142.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S1143.State:=cbchecked
    Else
            D1S1143.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S1144.State:=cbchecked
    Else
            D1S1144.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S1145.State:=cbchecked
    Else
            D1S1145.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S1146.State:=cbchecked
    Else
            D1S1146.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S1147.State:=cbchecked
    Else
            D1S1147.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S1148.State:=cbchecked
    Else
            D1S1148.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S1149.State:=cbchecked
    Else
            D1S1149.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S1150.State:=cbchecked
    Else
            D1S1150.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S1151.State:=cbchecked
    Else
            D1S1151.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S1152.State:=cbchecked
    Else
            D1S1152.State:=cbunchecked;
    //Ende File lesen
    FileStream.Free;
end;

procedure TMainForm.LoadDrumAccentSequence(Drumname : String;Patternname : String;Bankname : String;Filename : String);
var
  Drumbase:Integer;
  Patternnummer:Integer;
  BytesRead : Integer;
  FileStream : TFileStream;
  Patternbase: Integer;
begin
  Case Drumname of
	   'Drum 1' : Drumbase := 24+10;
	   'Drum 2' : Drumbase := 50+10;
	   'Drum 3' : Drumbase := 76+10;
	   'Drum 4' : Drumbase := 102+10;
	   'Drum 5' : Drumbase := 128+10;
	   'Drum 6A' : Drumbase := 154+10;
	   'Drum 6B' : Drumbase := 180+10;
	   'Drum 7A' : Drumbase := 206+10;
	   'Drum 7B' : Drumbase := 232+10;
           'Drum Accent Sequence' : Drumbase := 1640;
           'Synth Accent Sequence' : Drumbase := 1658;
  end;

  Patternnummer := (strtoint(leftstr(Patternname,2))-1)*4806;
  If (Bankname='Bank A') Then Patternbase:=512+Patternnummer;
  If (Bankname='Bank B') Then Patternbase:=512+64*4806+Patternnummer;
  If (Bankname='Bank C') Then Patternbase:=512+128*4806+Patternnummer;
  If (Bankname='Bank D') Then Patternbase:=512+192*4806+Patternnummer;
  FileStream := tFileStream.Create (filename,fmShareDenyNone);
  FileStream.Position := Patternbase+Drumbase;
  // Let's Rock
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S1153.State:=cbchecked
    Else
            D1S1153.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S1154.State:=cbchecked
    Else
            D1S1154.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S1155.State:=cbchecked
    Else
            D1S1155.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S1156.State:=cbchecked
    Else
            D1S1156.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S1157.State:=cbchecked
    Else
            D1S1157.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S1158.State:=cbchecked
    Else
            D1S1158.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S1159.State:=cbchecked
    Else
            D1S1159.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S1160.State:=cbchecked
    Else
            D1S1160.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S1161.State:=cbchecked
    Else
            D1S1161.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S1162.State:=cbchecked
    Else
            D1S1162.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S1163.State:=cbchecked
    Else
            D1S1163.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S1164.State:=cbchecked
    Else
            D1S1164.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S1165.State:=cbchecked
    Else
            D1S1165.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S1166.State:=cbchecked
    Else
            D1S1166.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S1167.State:=cbchecked
    Else
            D1S1167.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S1168.State:=cbchecked
    Else
            D1S1168.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S1169.State:=cbchecked
    Else
            D1S1169.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S1170.State:=cbchecked
    Else
            D1S1170.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S1171.State:=cbchecked
    Else
            D1S1171.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S1172.State:=cbchecked
    Else
            D1S1172.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S1173.State:=cbchecked
    Else
            D1S1173.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S1174.State:=cbchecked
    Else
            D1S1174.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S1175.State:=cbchecked
    Else
            D1S1175.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S1176.State:=cbchecked
    Else
            D1S1176.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S1177.State:=cbchecked
    Else
            D1S1177.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S1178.State:=cbchecked
    Else
            D1S1178.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S1179.State:=cbchecked
    Else
            D1S1179.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S1180.State:=cbchecked
    Else
            D1S1180.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S1181.State:=cbchecked
    Else
            D1S1181.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S1182.State:=cbchecked
    Else
            D1S1182.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S1183.State:=cbchecked
    Else
            D1S1183.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S1184.State:=cbchecked
    Else
            D1S1184.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S1185.State:=cbchecked
    Else
            D1S1185.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S1186.State:=cbchecked
    Else
            D1S1186.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S1187.State:=cbchecked
    Else
            D1S1187.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S1188.State:=cbchecked
    Else
            D1S1188.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S1189.State:=cbchecked
    Else
            D1S1189.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S1190.State:=cbchecked
    Else
            D1S1190.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S1191.State:=cbchecked
    Else
            D1S1191.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S1192.State:=cbchecked
    Else
            D1S1192.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S1193.State:=cbchecked
    Else
            D1S1193.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S1194.State:=cbchecked
    Else
            D1S1194.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S1195.State:=cbchecked
    Else
            D1S1195.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S1196.State:=cbchecked
    Else
            D1S1196.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S1197.State:=cbchecked
    Else
            D1S1197.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S1198.State:=cbchecked
    Else
            D1S1198.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S1199.State:=cbchecked
    Else
            D1S1199.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S1200.State:=cbchecked
    Else
            D1S1200.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S1201.State:=cbchecked
    Else
            D1S1201.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S1202.State:=cbchecked
    Else
            D1S1202.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S1203.State:=cbchecked
    Else
            D1S1203.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S1204.State:=cbchecked
    Else
            D1S1204.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S1205.State:=cbchecked
    Else
            D1S1205.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S1206.State:=cbchecked
    Else
            D1S1206.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S1207.State:=cbchecked
    Else
            D1S1207.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S1208.State:=cbchecked
    Else
            D1S1208.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S1209.State:=cbchecked
    Else
            D1S1209.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S1210.State:=cbchecked
    Else
            D1S1210.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S1211.State:=cbchecked
    Else
            D1S1211.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S1212.State:=cbchecked
    Else
            D1S1212.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S1213.State:=cbchecked
    Else
            D1S1213.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S1214.State:=cbchecked
    Else
            D1S1214.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S1215.State:=cbchecked
    Else
            D1S1215.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S1216.State:=cbchecked
    Else
            D1S1216.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S1217.State:=cbchecked
    Else
            D1S1217.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S1218.State:=cbchecked
    Else
            D1S1218.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S1219.State:=cbchecked
    Else
            D1S1219.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S1220.State:=cbchecked
    Else
            D1S1220.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S1221.State:=cbchecked
    Else
            D1S1221.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S1222.State:=cbchecked
    Else
            D1S1222.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S1223.State:=cbchecked
    Else
            D1S1223.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S1224.State:=cbchecked
    Else
            D1S1224.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S1225.State:=cbchecked
    Else
            D1S1225.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S1226.State:=cbchecked
    Else
            D1S1226.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S1227.State:=cbchecked
    Else
            D1S1227.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S1228.State:=cbchecked
    Else
            D1S1228.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S1229.State:=cbchecked
    Else
            D1S1229.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S1230.State:=cbchecked
    Else
            D1S1230.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S1231.State:=cbchecked
    Else
            D1S1231.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S1232.State:=cbchecked
    Else
            D1S1232.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S1233.State:=cbchecked
    Else
            D1S1233.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S1234.State:=cbchecked
    Else
            D1S1234.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S1235.State:=cbchecked
    Else
            D1S1235.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S1236.State:=cbchecked
    Else
            D1S1236.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S1237.State:=cbchecked
    Else
            D1S1237.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S1238.State:=cbchecked
    Else
            D1S1238.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S1239.State:=cbchecked
    Else
            D1S1239.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S1240.State:=cbchecked
    Else
            D1S1240.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S1241.State:=cbchecked
    Else
            D1S1241.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S1242.State:=cbchecked
    Else
            D1S1242.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S1243.State:=cbchecked
    Else
            D1S1243.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S1244.State:=cbchecked
    Else
            D1S1244.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S1245.State:=cbchecked
    Else
            D1S1245.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S1246.State:=cbchecked
    Else
            D1S1246.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S1247.State:=cbchecked
    Else
            D1S1247.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S1248.State:=cbchecked
    Else
            D1S1248.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S1249.State:=cbchecked
    Else
            D1S1249.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S1250.State:=cbchecked
    Else
            D1S1250.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S1251.State:=cbchecked
    Else
            D1S1251.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S1252.State:=cbchecked
    Else
            D1S1252.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S1253.State:=cbchecked
    Else
            D1S1253.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S1254.State:=cbchecked
    Else
            D1S1254.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S1255.State:=cbchecked
    Else
            D1S1255.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S1256.State:=cbchecked
    Else
            D1S1256.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S1257.State:=cbchecked
    Else
            D1S1257.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S1258.State:=cbchecked
    Else
            D1S1258.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S1259.State:=cbchecked
    Else
            D1S1259.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S1260.State:=cbchecked
    Else
            D1S1260.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S1261.State:=cbchecked
    Else
            D1S1261.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S1262.State:=cbchecked
    Else
            D1S1262.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S1263.State:=cbchecked
    Else
            D1S1263.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S1264.State:=cbchecked
    Else
            D1S1264.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S1265.State:=cbchecked
    Else
            D1S1265.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S1266.State:=cbchecked
    Else
            D1S1266.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S1267.State:=cbchecked
    Else
            D1S1267.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S1268.State:=cbchecked
    Else
            D1S1268.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S1269.State:=cbchecked
    Else
            D1S1269.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S1270.State:=cbchecked
    Else
            D1S1270.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S1271.State:=cbchecked
    Else
            D1S1271.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S1272.State:=cbchecked
    Else
            D1S1272.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S1273.State:=cbchecked
    Else
            D1S1273.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S1274.State:=cbchecked
    Else
            D1S1274.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S1275.State:=cbchecked
    Else
            D1S1275.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S1276.State:=cbchecked
    Else
            D1S1276.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S1277.State:=cbchecked
    Else
            D1S1277.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S1278.State:=cbchecked
    Else
            D1S1278.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S1279.State:=cbchecked
    Else
            D1S1279.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S1280.State:=cbchecked
    Else
            D1S1280.State:=cbunchecked;
    //Ende File lesen
    FileStream.Free;
end;

procedure TMainForm.LoadSynthAccentSequence(Drumname : String;Patternname : String;Bankname : String;Filename : String);
var
  Drumbase:Integer;
  Patternnummer:Integer;
  BytesRead : Integer;
  FileStream : TFileStream;
  Patternbase: Integer;
begin
  Case Drumname of
	   'Drum 1' : Drumbase := 24+10;
	   'Drum 2' : Drumbase := 50+10;
	   'Drum 3' : Drumbase := 76+10;
	   'Drum 4' : Drumbase := 102+10;
	   'Drum 5' : Drumbase := 128+10;
	   'Drum 6A' : Drumbase := 154+10;
	   'Drum 6B' : Drumbase := 180+10;
	   'Drum 7A' : Drumbase := 206+10;
	   'Drum 7B' : Drumbase := 232+10;
           'Drum Accent Sequence' : Drumbase := 1640;
           'Synth Accent Sequence': Drumbase := 1658;
  end;

  Patternnummer := (strtoint(leftstr(Patternname,2))-1)*4806;
  If (Bankname='Bank A') Then Patternbase:=512+Patternnummer;
  If (Bankname='Bank B') Then Patternbase:=512+64*4806+Patternnummer;
  If (Bankname='Bank C') Then Patternbase:=512+128*4806+Patternnummer;
  If (Bankname='Bank D') Then Patternbase:=512+192*4806+Patternnummer;
  FileStream := tFileStream.Create (filename,fmShareDenyNone);
  FileStream.Position := Patternbase+Drumbase;
  // Let's Rock
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S1281.State:=cbchecked
    Else
            D1S1281.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S1282.State:=cbchecked
    Else
            D1S1282.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S1283.State:=cbchecked
    Else
            D1S1283.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S1284.State:=cbchecked
    Else
            D1S1284.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S1285.State:=cbchecked
    Else
            D1S1285.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S1286.State:=cbchecked
    Else
            D1S1286.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S1287.State:=cbchecked
    Else
            D1S1287.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S1288.State:=cbchecked
    Else
            D1S1288.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S1289.State:=cbchecked
    Else
            D1S1289.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S1290.State:=cbchecked
    Else
            D1S1290.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S1291.State:=cbchecked
    Else
            D1S1291.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S1292.State:=cbchecked
    Else
            D1S1292.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S1293.State:=cbchecked
    Else
            D1S1293.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S1294.State:=cbchecked
    Else
            D1S1294.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S1295.State:=cbchecked
    Else
            D1S1295.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S1296.State:=cbchecked
    Else
            D1S1296.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S1297.State:=cbchecked
    Else
            D1S1297.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S1298.State:=cbchecked
    Else
            D1S1298.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S1299.State:=cbchecked
    Else
            D1S1299.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S1300.State:=cbchecked
    Else
            D1S1300.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S1301.State:=cbchecked
    Else
            D1S1301.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S1302.State:=cbchecked
    Else
            D1S1302.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S1303.State:=cbchecked
    Else
            D1S1303.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S1304.State:=cbchecked
    Else
            D1S1304.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S1305.State:=cbchecked
    Else
            D1S1305.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S1306.State:=cbchecked
    Else
            D1S1306.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S1307.State:=cbchecked
    Else
            D1S1307.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S1308.State:=cbchecked
    Else
            D1S1308.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S1309.State:=cbchecked
    Else
            D1S1309.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S1310.State:=cbchecked
    Else
            D1S1310.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S1311.State:=cbchecked
    Else
            D1S1311.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S1312.State:=cbchecked
    Else
            D1S1312.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S1313.State:=cbchecked
    Else
            D1S1313.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S1314.State:=cbchecked
    Else
            D1S1314.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S1315.State:=cbchecked
    Else
            D1S1315.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S1316.State:=cbchecked
    Else
            D1S1316.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S1317.State:=cbchecked
    Else
            D1S1317.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S1318.State:=cbchecked
    Else
            D1S1318.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S1319.State:=cbchecked
    Else
            D1S1319.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S1320.State:=cbchecked
    Else
            D1S1320.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S1321.State:=cbchecked
    Else
            D1S1321.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S1322.State:=cbchecked
    Else
            D1S1322.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S1323.State:=cbchecked
    Else
            D1S1323.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S1324.State:=cbchecked
    Else
            D1S1324.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S1325.State:=cbchecked
    Else
            D1S1325.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S1326.State:=cbchecked
    Else
            D1S1326.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S1327.State:=cbchecked
    Else
            D1S1327.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S1328.State:=cbchecked
    Else
            D1S1328.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S1329.State:=cbchecked
    Else
            D1S1329.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S1330.State:=cbchecked
    Else
            D1S1330.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S1331.State:=cbchecked
    Else
            D1S1331.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S1332.State:=cbchecked
    Else
            D1S1332.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S1333.State:=cbchecked
    Else
            D1S1333.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S1334.State:=cbchecked
    Else
            D1S1334.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S1335.State:=cbchecked
    Else
            D1S1335.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S1336.State:=cbchecked
    Else
            D1S1336.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S1337.State:=cbchecked
    Else
            D1S1337.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S1338.State:=cbchecked
    Else
            D1S1338.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S1339.State:=cbchecked
    Else
            D1S1339.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S1340.State:=cbchecked
    Else
            D1S1340.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S1341.State:=cbchecked
    Else
            D1S1341.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S1342.State:=cbchecked
    Else
            D1S1342.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S1343.State:=cbchecked
    Else
            D1S1343.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S1344.State:=cbchecked
    Else
            D1S1344.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S1345.State:=cbchecked
    Else
            D1S1345.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S1346.State:=cbchecked
    Else
            D1S1346.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S1347.State:=cbchecked
    Else
            D1S1347.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S1348.State:=cbchecked
    Else
            D1S1348.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S1349.State:=cbchecked
    Else
            D1S1349.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S1350.State:=cbchecked
    Else
            D1S1350.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S1351.State:=cbchecked
    Else
            D1S1351.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S1352.State:=cbchecked
    Else
            D1S1352.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S1353.State:=cbchecked
    Else
            D1S1353.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S1354.State:=cbchecked
    Else
            D1S1354.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S1355.State:=cbchecked
    Else
            D1S1355.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S1356.State:=cbchecked
    Else
            D1S1356.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S1357.State:=cbchecked
    Else
            D1S1357.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S1358.State:=cbchecked
    Else
            D1S1358.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S1359.State:=cbchecked
    Else
            D1S1359.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S1360.State:=cbchecked
    Else
            D1S1360.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S1361.State:=cbchecked
    Else
            D1S1361.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S1362.State:=cbchecked
    Else
            D1S1362.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S1363.State:=cbchecked
    Else
            D1S1363.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S1364.State:=cbchecked
    Else
            D1S1364.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S1365.State:=cbchecked
    Else
            D1S1365.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S1366.State:=cbchecked
    Else
            D1S1366.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S1367.State:=cbchecked
    Else
            D1S1367.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S1368.State:=cbchecked
    Else
            D1S1368.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S1369.State:=cbchecked
    Else
            D1S1369.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S1370.State:=cbchecked
    Else
            D1S1370.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S1371.State:=cbchecked
    Else
            D1S1371.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S1372.State:=cbchecked
    Else
            D1S1372.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S1373.State:=cbchecked
    Else
            D1S1373.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S1374.State:=cbchecked
    Else
            D1S1374.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S1375.State:=cbchecked
    Else
            D1S1375.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S1376.State:=cbchecked
    Else
            D1S1376.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S1377.State:=cbchecked
    Else
            D1S1377.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S1378.State:=cbchecked
    Else
            D1S1378.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S1379.State:=cbchecked
    Else
            D1S1379.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S1380.State:=cbchecked
    Else
            D1S1380.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S1381.State:=cbchecked
    Else
            D1S1381.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S1382.State:=cbchecked
    Else
            D1S1382.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S1383.State:=cbchecked
    Else
            D1S1383.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S1384.State:=cbchecked
    Else
            D1S1384.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S1385.State:=cbchecked
    Else
            D1S1385.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S1386.State:=cbchecked
    Else
            D1S1386.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S1387.State:=cbchecked
    Else
            D1S1387.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S1388.State:=cbchecked
    Else
            D1S1388.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S1389.State:=cbchecked
    Else
            D1S1389.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S1390.State:=cbchecked
    Else
            D1S1390.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S1391.State:=cbchecked
    Else
            D1S1391.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S1392.State:=cbchecked
    Else
            D1S1392.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S1393.State:=cbchecked
    Else
            D1S1393.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S1394.State:=cbchecked
    Else
            D1S1394.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S1395.State:=cbchecked
    Else
            D1S1395.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S1396.State:=cbchecked
    Else
            D1S1396.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S1397.State:=cbchecked
    Else
            D1S1397.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S1398.State:=cbchecked
    Else
            D1S1398.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S1399.State:=cbchecked
    Else
            D1S1399.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S1400.State:=cbchecked
    Else
            D1S1400.State:=cbunchecked;
  BytesRead:=Filestream.Read(DrumP,1);
     GetBit := ((DrumP shr 0) and 1) = 1;
    If (GetBit) then
            D1S1401.State:=cbchecked
    Else
            D1S1401.State:=cbunchecked;
     GetBit := ((DrumP shr 1) and 1) = 1;
    If (GetBit) then
            D1S1402.State:=cbchecked
    Else
            D1S1402.State:=cbunchecked;
     GetBit := ((DrumP shr 2) and 1) = 1;
    If (GetBit) then
            D1S1403.State:=cbchecked
    Else
            D1S1403.State:=cbunchecked;
     GetBit := ((DrumP shr 3) and 1) = 1;
    If (GetBit) then
            D1S1404.State:=cbchecked
    Else
            D1S1404.State:=cbunchecked;
     GetBit := ((DrumP shr 4) and 1) = 1;
    If (GetBit) then
            D1S1405.State:=cbchecked
    Else
            D1S1405.State:=cbunchecked;
     GetBit := ((DrumP shr 5) and 1) = 1;
    If (GetBit) then
            D1S1406.State:=cbchecked
    Else
            D1S1406.State:=cbunchecked;
     GetBit := ((DrumP shr 6) and 1) = 1;
    If (GetBit) then
            D1S1407.State:=cbchecked
    Else
            D1S1407.State:=cbunchecked;
     GetBit := ((DrumP shr 7) and 1) = 1;
    If (GetBit) then
            D1S1408.State:=cbchecked
    Else
            D1S1408.State:=cbunchecked;
    //Ende File lesen
    FileStream.Free;
end;

procedure TMainForm.LoadSynth1Parameter(Synthname : String;Patternname : String;Bankname : String;Filename : String);
var
  Synthbase:Integer;
  Patternnummer:Integer;
  BytesRead : Integer;
  FileStream : TFileStream;
  Patternbase: Integer;
begin

  Case Synthname of
	   'Synth 1' : Synthbase := 258;
	   'Synth 2' : Synthbase := 534;
	   'Synth 3' : Synthbase := 810;
	   'Synth 4' : Synthbase := 1086;
	   'Synth 5' : Synthbase := 1362;
  end;

  Patternnummer := (strtoint(leftstr(Patternname,2))-1)*4806;

  If (Bankname='Bank A') Then Patternbase:=512+Patternnummer;
  If (Bankname='Bank B') Then Patternbase:=512+64*4806+Patternnummer;
  If (Bankname='Bank C') Then Patternbase:=512+128*4806+Patternnummer;
  If (Bankname='Bank D') Then Patternbase:=512+192*4806+Patternnummer;
  FileStream := tFileStream.Create (filename,fmShareDenyNone);
  FileStream.Position := Patternbase+Synthbase;

  // Let's Rock
  BytesRead:=Filestream.Read(Waveform,1);
  BytesRead:=Filestream.Read(Syntune,1);
  BytesRead:=Filestream.Read(Synthoscillator,1);
  SynthoscSynth1.ItemIndex:=Synthoscillator;
  WaveformSynth1Update();
  TuneSynth1.position := Syntune-50;


  BytesRead:=Filestream.Read(OscEdit1,1);
  OscEdit1Synth1.Position := OscEdit1;
  BytesRead:=Filestream.Read(OscEdit2,1);
  OscEdit2Synth1.Position:=OscEdit2;
  BytesRead:=Filestream.Read(PitchGlide ,1);
  GlideSynth1.Position:=PitchGlide;

  BytesRead:=Filestream.Read(Filtertype ,1);
  FilterTypeSynth1.ItemIndex:=Filtertype;
  BytesRead:=Filestream.Read(Cutoff ,1);
  CutoffSynth1.Position:=Cutoff;
  BytesRead:=Filestream.Read(Resonance  ,1);
  ResonanceSynth1.Position:=Resonance;
  BytesRead:=Filestream.Read(EGInt,1);
  EGIntSynth1.Position:=EGInt-64;
  BytesRead:=Filestream.Read(Drive,1);
  DriveSynth1.Position:=Drive;
  BytesRead:=Filestream.Read(DLevel,1);
  LevelSynth1.Position:=Dlevel;
  BytesRead:=Filestream.Read(DPan,1);
  PanSynth1.Position:=DPan-64;
  BytesRead:=Filestream.Read(DEGTime,1);
  EGTimeSynth1.Position:=DEGTime;

  BytesRead:=Filestream.Read(FSSSRA,1);
  AmpEGSynth1.state := cbUnchecked;
  EnvLED1_S1.Color:=clSilver;
  EnvLED2_S1.Color:=$004080FF;
  RollSynth1.State:= cbUnchecked;
  RollSynth1.Caption:='Roll Off';
  FXSendSynth1.State:= cbUnchecked;
  FXSendSynth1.Caption:='FX Send Off';
  FXSelectSynth1.ItemIndex:=0;
  If (FSSSRA > 15) Then
  begin
	  AmpEGSynth1.state := cbChecked;
          EnvLED1_S1.Color:=$004080FF;
          EnvLED2_S1.Color:=clSilver;
	  FSSSRA:=FSSSRA-16;
  End;
  If (FSSSRA > 7) Then
   begin
	  RollSynth1.State:= cbChecked;
          RollSynth1.Caption:='Roll On';
	  FSSSRA:=FSSSRA-8;
   End;
  If (FSSSRA > 3) Then
  begin
	  FXSendSynth1.State:= cbChecked;
          FXSendSynth1.Caption:='FX Send On';
	  FSSSRA:=FSSSRA-4;
 End;
 If (FSSSRA = 2) Then
 begin
	  FXSelectSynth1.ItemIndex:=2;
 End;
 If (FSSSRA = 1) Then
  begin
	  FXSelectSynth1.ItemIndex:=1;
  End;

  BytesRead:=Filestream.Read(Reserved,1); //Reserved

  BytesRead:=Filestream.Read(MTDBS,1);
  ModTypeSynth1.ItemIndex:=0;
  BPMSyncSynth1.state:=cbUnchecked;
  BPMSyncSynth1.Caption:='BPM Sync Off';

  MType :='Saw';
  MBPMSync :='Off';
  If (MTDBS > 127) Then
  begin
	  BPMSyncSynth1.state:=cbChecked;
          BPMSyncSynth1.Caption:='BPM Sync On';
	  MTDBS:=MTDBS-128;
  End;
  If (MTDBS > 63) Then
  begin
	  ModTypeSynth1.ItemIndex:=4;
	  MTDBS:=MTDBS-64;
  End;
  If (MTDBS > 47) Then
   begin
	  ModTypeSynth1.ItemIndex:=3;
	  MTDBS:=MTDBS-48;
   End;
  If (MTDBS > 31) Then
  begin
	  ModTypeSynth1.ItemIndex:=2;
	  MTDBS:=MTDBS-32;
  End;
  If (MTDBS > 15) Then
   begin
	  ModTypeSynth1.ItemIndex:=1;
	  MTDBS:=MTDBS-16;
   End;
  ModDestSynth1.ItemIndex:=MTDBS;

  BytesRead:=Filestream.Read(ModulationSpeed,1);
  ModSpeedSynth1.position:= ModulationSpeed;
  BytesRead:=Filestream.Read(ModulationDepth,1);
  ModDepthSynth1.Position:=ModulationDepth;

  BytesRead:=Filestream.Read(MotionSeqS,1);
  MotionSeqSynth1.ItemIndex:=MotionSeqS;
  WaveformSynth1.ItemIndex:= Waveform;
  //Ende File lesen
  FileStream.Free;
end;

procedure TMainForm.LoadSynth2Parameter(Synthname : String;Patternname : String;Bankname : String;Filename : String);
var
  Synthbase:Integer;
  Patternnummer:Integer;
  BytesRead : Integer;
  FileStream : TFileStream;
  Patternbase: Integer;
begin

  Case Synthname of
	   'Synth 1' : Synthbase := 258;
	   'Synth 2' : Synthbase := 534;
	   'Synth 3' : Synthbase := 810;
	   'Synth 4' : Synthbase := 1086;
	   'Synth 5' : Synthbase := 1362;
  end;

  Patternnummer := (strtoint(leftstr(Patternname,2))-1)*4806;

  If (Bankname='Bank A') Then Patternbase:=512+Patternnummer;
  If (Bankname='Bank B') Then Patternbase:=512+64*4806+Patternnummer;
  If (Bankname='Bank C') Then Patternbase:=512+128*4806+Patternnummer;
  If (Bankname='Bank D') Then Patternbase:=512+192*4806+Patternnummer;
  FileStream := tFileStream.Create (filename,fmShareDenyNone);
  FileStream.Position := Patternbase+Synthbase;

  // Let's Rock
  BytesRead:=Filestream.Read(Waveform,1);
  BytesRead:=Filestream.Read(Syntune,1);
  BytesRead:=Filestream.Read(Synthoscillator,1);
  SynthoscSynth2.ItemIndex:=Synthoscillator;
  WaveformSynth2Update();
  TuneSynth2.position := Syntune-50;


  BytesRead:=Filestream.Read(OscEdit1,1);
  OscEdit1Synth2.Position := OscEdit1;
  BytesRead:=Filestream.Read(OscEdit2,1);
  OscEdit2Synth2.Position:=OscEdit2;
  BytesRead:=Filestream.Read(PitchGlide ,1);
  GlideSynth2.Position:=PitchGlide;

  BytesRead:=Filestream.Read(Filtertype ,1);
  FilterTypeSynth2.ItemIndex:=Filtertype;
  BytesRead:=Filestream.Read(Cutoff ,1);
  CutoffSynth2.Position:=Cutoff;
  BytesRead:=Filestream.Read(Resonance  ,1);
  ResonanceSynth2.Position:=Resonance;
  BytesRead:=Filestream.Read(EGInt,1);
  EGIntSynth2.Position:=EGInt-64;
  BytesRead:=Filestream.Read(Drive,1);
  DriveSynth2.Position:=Drive;
  BytesRead:=Filestream.Read(DLevel,1);
  LevelSynth2.Position:=Dlevel;
  BytesRead:=Filestream.Read(DPan,1);
  PanSynth2.Position:=DPan-64;
  BytesRead:=Filestream.Read(DEGTime,1);
  EGTimeSynth2.Position:=DEGTime;

  BytesRead:=Filestream.Read(FSSSRA,1);
  AmpEGSynth2.state := cbUnchecked;
  EnvLED1_S2.Color:=clSilver;
  EnvLED2_S2.Color:=$004080FF;
  RollSynth2.State:= cbUnchecked;
  RollSynth2.Caption:='Roll Off';
  FXSendSynth2.State:= cbUnchecked;
  FXSendSynth2.Caption:='FX Send Off';
  FXSelectSynth2.ItemIndex:=0;
  If (FSSSRA > 15) Then
  begin
	  AmpEGSynth2.state := cbChecked;
          EnvLED1_S2.Color:=$004080FF;
          EnvLED2_S2.Color:=clSilver;
	  FSSSRA:=FSSSRA-16;
  End;
  If (FSSSRA > 7) Then
   begin
	  RollSynth2.State:= cbChecked;
          RollSynth2.Caption:='Roll On';
	  FSSSRA:=FSSSRA-8;
   End;
  If (FSSSRA > 3) Then
  begin
	  FXSendSynth2.State:= cbChecked;
          FXSendSynth2.Caption:='FX Send On';
	  FSSSRA:=FSSSRA-4;
 End;
 If (FSSSRA = 2) Then
 begin
	  FXSelectSynth2.ItemIndex:=2;
 End;
 If (FSSSRA = 1) Then
  begin
	  FXSelectSynth2.ItemIndex:=1;
  End;

  BytesRead:=Filestream.Read(Reserved,1); //Reserved

  BytesRead:=Filestream.Read(MTDBS,1);
  ModTypeSynth2.ItemIndex:=0;
  BPMSyncSynth2.state:=cbUnchecked;
  BPMSyncSynth2.Caption:='BPM Sync Off';

  MType :='Saw';
  MBPMSync :='Off';
  If (MTDBS > 127) Then
  begin
	  BPMSyncSynth2.state:=cbChecked;
          BPMSyncSynth2.Caption:='BPM Sync On';
	  MTDBS:=MTDBS-128;
  End;
  If (MTDBS > 63) Then
  begin
	  ModTypeSynth2.ItemIndex:=4;
	  MTDBS:=MTDBS-64;
  End;
  If (MTDBS > 47) Then
   begin
	  ModTypeSynth2.ItemIndex:=3;
	  MTDBS:=MTDBS-48;
   End;
  If (MTDBS > 31) Then
  begin
	  ModTypeSynth2.ItemIndex:=2;
	  MTDBS:=MTDBS-32;
  End;
  If (MTDBS > 15) Then
   begin
	  ModTypeSynth2.ItemIndex:=1;
	  MTDBS:=MTDBS-16;
   End;
  ModDestSynth2.ItemIndex:=MTDBS;

  BytesRead:=Filestream.Read(ModulationSpeed,1);
  ModSpeedSynth2.position:= ModulationSpeed;
  BytesRead:=Filestream.Read(ModulationDepth,1);
  ModDepthSynth2.Position:=ModulationDepth;

  BytesRead:=Filestream.Read(MotionSeqS,1);
  MotionSeqSynth2.ItemIndex:=MotionSeqS;
  WaveformSynth2.ItemIndex:= Waveform;
  //Ende File lesen
  FileStream.Free;
end;

procedure TMainForm.LoadSynth3Parameter(Synthname : String;Patternname : String;Bankname : String;Filename : String);
var
  Synthbase:Integer;
  Patternnummer:Integer;
  BytesRead : Integer;
  FileStream : TFileStream;
  Patternbase: Integer;
begin

  Case Synthname of
	   'Synth 1' : Synthbase := 258;
	   'Synth 2' : Synthbase := 534;
	   'Synth 3' : Synthbase := 810;
	   'Synth 4' : Synthbase := 1086;
	   'Synth 5' : Synthbase := 1362;
  end;

  Patternnummer := (strtoint(leftstr(Patternname,2))-1)*4806;

  If (Bankname='Bank A') Then Patternbase:=512+Patternnummer;
  If (Bankname='Bank B') Then Patternbase:=512+64*4806+Patternnummer;
  If (Bankname='Bank C') Then Patternbase:=512+128*4806+Patternnummer;
  If (Bankname='Bank D') Then Patternbase:=512+192*4806+Patternnummer;
  FileStream := tFileStream.Create (filename,fmShareDenyNone);
  FileStream.Position := Patternbase+Synthbase;

  // Let's Rock
  BytesRead:=Filestream.Read(Waveform,1);
  BytesRead:=Filestream.Read(Syntune,1);
  BytesRead:=Filestream.Read(Synthoscillator,1);
  SynthoscSynth3.ItemIndex:=Synthoscillator;
  WaveformSynth3Update();
  TuneSynth3.position := Syntune-50;


  BytesRead:=Filestream.Read(OscEdit1,1);
  OscEdit1Synth3.Position := OscEdit1;
  BytesRead:=Filestream.Read(OscEdit2,1);
  OscEdit2Synth3.Position:=OscEdit2;
  BytesRead:=Filestream.Read(PitchGlide ,1);
  GlideSynth3.Position:=PitchGlide;

  BytesRead:=Filestream.Read(Filtertype ,1);
  FilterTypeSynth3.ItemIndex:=Filtertype;
  BytesRead:=Filestream.Read(Cutoff ,1);
  CutoffSynth3.Position:=Cutoff;
  BytesRead:=Filestream.Read(Resonance  ,1);
  ResonanceSynth3.Position:=Resonance;
  BytesRead:=Filestream.Read(EGInt,1);
  EGIntSynth3.Position:=EGInt-64;
  BytesRead:=Filestream.Read(Drive,1);
  DriveSynth3.Position:=Drive;
  BytesRead:=Filestream.Read(DLevel,1);
  LevelSynth3.Position:=Dlevel;
  BytesRead:=Filestream.Read(DPan,1);
  PanSynth3.Position:=DPan-64;
  BytesRead:=Filestream.Read(DEGTime,1);
  EGTimeSynth3.Position:=DEGTime;

  BytesRead:=Filestream.Read(FSSSRA,1);
  AmpEGSynth3.state := cbUnchecked;
  EnvLED1_S3.Color:=clSilver;
  EnvLED2_S3.Color:=$004080FF;
  RollSynth3.State:= cbUnchecked;
  RollSynth3.Caption:='Roll Off';
  FXSendSynth3.State:= cbUnchecked;
  FXSendSynth3.Caption:='FX Send Off';
  FXSelectSynth3.ItemIndex:=0;
  If (FSSSRA > 15) Then
  begin
	  AmpEGSynth3.state := cbChecked;
          EnvLED1_S3.Color:=$004080FF;
          EnvLED2_S3.Color:=clSilver;
	  FSSSRA:=FSSSRA-16;
  End;
  If (FSSSRA > 7) Then
   begin
	  RollSynth3.State:= cbChecked;
          RollSynth3.Caption:='Roll On';
	  FSSSRA:=FSSSRA-8;
   End;
  If (FSSSRA > 3) Then
  begin
	  FXSendSynth3.State:= cbChecked;
          FXSendSynth3.Caption:='FX Send On';
	  FSSSRA:=FSSSRA-4;
 End;
 If (FSSSRA = 2) Then
 begin
	  FXSelectSynth3.ItemIndex:=2;
 End;
 If (FSSSRA = 1) Then
  begin
	  FXSelectSynth3.ItemIndex:=1;
  End;

  BytesRead:=Filestream.Read(Reserved,1); //Reserved

  BytesRead:=Filestream.Read(MTDBS,1);
  ModTypeSynth3.ItemIndex:=0;
  BPMSyncSynth3.state:=cbUnchecked;
  BPMSyncSynth3.Caption:='BPM Sync Off';

  MType :='Saw';
  MBPMSync :='Off';
  If (MTDBS > 127) Then
  begin
	  BPMSyncSynth3.state:=cbChecked;
          BPMSyncSynth3.Caption:='BPM Sync On';
	  MTDBS:=MTDBS-128;
  End;
  If (MTDBS > 63) Then
  begin
	  ModTypeSynth3.ItemIndex:=4;
	  MTDBS:=MTDBS-64;
  End;
  If (MTDBS > 47) Then
   begin
	  ModTypeSynth3.ItemIndex:=3;
	  MTDBS:=MTDBS-48;
   End;
  If (MTDBS > 31) Then
  begin
	  ModTypeSynth3.ItemIndex:=2;
	  MTDBS:=MTDBS-32;
  End;
  If (MTDBS > 15) Then
   begin
	  ModTypeSynth3.ItemIndex:=1;
	  MTDBS:=MTDBS-16;
   End;
  ModDestSynth3.ItemIndex:=MTDBS;

  BytesRead:=Filestream.Read(ModulationSpeed,1);
  ModSpeedSynth3.position:= ModulationSpeed;
  BytesRead:=Filestream.Read(ModulationDepth,1);
  ModDepthSynth3.Position:=ModulationDepth;

  BytesRead:=Filestream.Read(MotionSeqS,1);
  MotionSeqSynth3.ItemIndex:=MotionSeqS;
  WaveformSynth3.ItemIndex:= Waveform;
  //Ende File lesen
  FileStream.Free;
end;

procedure TMainForm.LoadSynth4Parameter(Synthname : String;Patternname : String;Bankname : String;Filename : String);
var
  Synthbase:Integer;
  Patternnummer:Integer;
  BytesRead : Integer;
  FileStream : TFileStream;
  Patternbase: Integer;
begin

  Case Synthname of
	   'Synth 1' : Synthbase := 258;
	   'Synth 2' : Synthbase := 534;
	   'Synth 3' : Synthbase := 810;
	   'Synth 4' : Synthbase := 1086;
	   'Synth 5' : Synthbase := 1362;
  end;

  Patternnummer := (strtoint(leftstr(Patternname,2))-1)*4806;

  If (Bankname='Bank A') Then Patternbase:=512+Patternnummer;
  If (Bankname='Bank B') Then Patternbase:=512+64*4806+Patternnummer;
  If (Bankname='Bank C') Then Patternbase:=512+128*4806+Patternnummer;
  If (Bankname='Bank D') Then Patternbase:=512+192*4806+Patternnummer;
  FileStream := tFileStream.Create (filename,fmShareDenyNone);
  FileStream.Position := Patternbase+Synthbase;

  // Let's Rock
  BytesRead:=Filestream.Read(Waveform,1);
  BytesRead:=Filestream.Read(Syntune,1);
  BytesRead:=Filestream.Read(Synthoscillator,1);
  SynthoscSynth4.ItemIndex:=Synthoscillator;
  WaveformSynth4Update();
  TuneSynth4.position := Syntune-50;


  BytesRead:=Filestream.Read(OscEdit1,1);
  OscEdit1Synth4.Position := OscEdit1;
  BytesRead:=Filestream.Read(OscEdit2,1);
  OscEdit2Synth4.Position:=OscEdit2;
  BytesRead:=Filestream.Read(PitchGlide ,1);
  GlideSynth4.Position:=PitchGlide;

  BytesRead:=Filestream.Read(Filtertype ,1);
  FilterTypeSynth4.ItemIndex:=Filtertype;
  BytesRead:=Filestream.Read(Cutoff ,1);
  CutoffSynth4.Position:=Cutoff;
  BytesRead:=Filestream.Read(Resonance  ,1);
  ResonanceSynth4.Position:=Resonance;
  BytesRead:=Filestream.Read(EGInt,1);
  EGIntSynth4.Position:=EGInt-64;
  BytesRead:=Filestream.Read(Drive,1);
  DriveSynth4.Position:=Drive;
  BytesRead:=Filestream.Read(DLevel,1);
  LevelSynth4.Position:=Dlevel;
  BytesRead:=Filestream.Read(DPan,1);
  PanSynth4.Position:=DPan-64;
  BytesRead:=Filestream.Read(DEGTime,1);
  EGTimeSynth4.Position:=DEGTime;

  BytesRead:=Filestream.Read(FSSSRA,1);
  AmpEGSynth4.state := cbUnchecked;
  EnvLED1_S4.Color:=clSilver;
  EnvLED2_S4.Color:=$004080FF;
  RollSynth4.State:= cbUnchecked;
  RollSynth4.Caption:='Roll Off';
  FXSendSynth4.State:= cbUnchecked;
  FXSendSynth4.Caption:='FX Send Off';
  FXSelectSynth4.ItemIndex:=0;
  If (FSSSRA > 15) Then
  begin
	  AmpEGSynth4.state := cbChecked;
          EnvLED1_S4.Color:=$004080FF;
          EnvLED2_S4.Color:=clSilver;
	  FSSSRA:=FSSSRA-16;
  End;
  If (FSSSRA > 7) Then
   begin
	  RollSynth4.State:= cbChecked;
          RollSynth4.Caption:='Roll On';
	  FSSSRA:=FSSSRA-8;
   End;
  If (FSSSRA > 3) Then
  begin
	  FXSendSynth4.State:= cbChecked;
          FXSendSynth4.Caption:='FX Send On';
	  FSSSRA:=FSSSRA-4;
 End;
 If (FSSSRA = 2) Then
 begin
	  FXSelectSynth4.ItemIndex:=2;
 End;
 If (FSSSRA = 1) Then
  begin
	  FXSelectSynth4.ItemIndex:=1;
  End;

  BytesRead:=Filestream.Read(Reserved,1); //Reserved

  BytesRead:=Filestream.Read(MTDBS,1);
  ModTypeSynth4.ItemIndex:=0;
  BPMSyncSynth4.state:=cbUnchecked;
  BPMSyncSynth4.Caption:='BPM Sync Off';

  MType :='Saw';
  MBPMSync :='Off';
  If (MTDBS > 127) Then
  begin
	  BPMSyncSynth4.state:=cbChecked;
          BPMSyncSynth4.Caption:='BPM Sync On';
	  MTDBS:=MTDBS-128;
  End;
  If (MTDBS > 63) Then
  begin
	  ModTypeSynth4.ItemIndex:=4;
	  MTDBS:=MTDBS-64;
  End;
  If (MTDBS > 47) Then
   begin
	  ModTypeSynth4.ItemIndex:=3;
	  MTDBS:=MTDBS-48;
   End;
  If (MTDBS > 31) Then
  begin
	  ModTypeSynth4.ItemIndex:=2;
	  MTDBS:=MTDBS-32;
  End;
  If (MTDBS > 15) Then
   begin
	  ModTypeSynth4.ItemIndex:=1;
	  MTDBS:=MTDBS-16;
   End;
  ModDestSynth4.ItemIndex:=MTDBS;

  BytesRead:=Filestream.Read(ModulationSpeed,1);
  ModSpeedSynth4.position:= ModulationSpeed;
  BytesRead:=Filestream.Read(ModulationDepth,1);
  ModDepthSynth4.Position:=ModulationDepth;

  BytesRead:=Filestream.Read(MotionSeqS,1);
  MotionSeqSynth4.ItemIndex:=MotionSeqS;
  WaveformSynth4.ItemIndex:= Waveform;
  //Ende File lesen
  FileStream.Free;
end;

procedure TMainForm.LoadSynth5Parameter(Synthname : String;Patternname : String;Bankname : String;Filename : String);
var
  Synthbase:Integer;
  Patternnummer:Integer;
  BytesRead : Integer;
  FileStream : TFileStream;
  Patternbase: Integer;
begin

  Case Synthname of
	   'Synth 1' : Synthbase := 258;
	   'Synth 2' : Synthbase := 534;
	   'Synth 3' : Synthbase := 810;
	   'Synth 4' : Synthbase := 1086;
	   'Synth 5' : Synthbase := 1362;
  end;

  Patternnummer := (strtoint(leftstr(Patternname,2))-1)*4806;

  If (Bankname='Bank A') Then Patternbase:=512+Patternnummer;
  If (Bankname='Bank B') Then Patternbase:=512+64*4806+Patternnummer;
  If (Bankname='Bank C') Then Patternbase:=512+128*4806+Patternnummer;
  If (Bankname='Bank D') Then Patternbase:=512+192*4806+Patternnummer;
  FileStream := tFileStream.Create (filename,fmShareDenyNone);
  FileStream.Position := Patternbase+Synthbase;

  // Let's Rock
  BytesRead:=Filestream.Read(Waveform,1);
  BytesRead:=Filestream.Read(Syntune,1);
  BytesRead:=Filestream.Read(Synthoscillator,1);
  SynthoscSynth5.ItemIndex:=Synthoscillator;
  WaveformSynth5Update();
  TuneSynth5.position := Syntune-50;


  BytesRead:=Filestream.Read(OscEdit1,1);
  OscEdit1Synth5.Position := OscEdit1;
  BytesRead:=Filestream.Read(OscEdit2,1);
  OscEdit2Synth5.Position:=OscEdit2;
  BytesRead:=Filestream.Read(PitchGlide ,1);
  GlideSynth5.Position:=PitchGlide;

  BytesRead:=Filestream.Read(Filtertype ,1);
  FilterTypeSynth5.ItemIndex:=Filtertype;
  BytesRead:=Filestream.Read(Cutoff ,1);
  CutoffSynth5.Position:=Cutoff;
  BytesRead:=Filestream.Read(Resonance  ,1);
  ResonanceSynth5.Position:=Resonance;
  BytesRead:=Filestream.Read(EGInt,1);
  EGIntSynth5.Position:=EGInt-64;
  BytesRead:=Filestream.Read(Drive,1);
  DriveSynth5.Position:=Drive;
  BytesRead:=Filestream.Read(DLevel,1);
  LevelSynth5.Position:=Dlevel;
  BytesRead:=Filestream.Read(DPan,1);
  PanSynth5.Position:=DPan-64;
  BytesRead:=Filestream.Read(DEGTime,1);
  EGTimeSynth5.Position:=DEGTime;

  BytesRead:=Filestream.Read(FSSSRA,1);
  AmpEGSynth5.state := cbUnchecked;
  EnvLED1_S5.Color:=clSilver;
  EnvLED2_S5.Color:=$004080FF;
  RollSynth5.State:= cbUnchecked;
  RollSynth5.Caption:='Roll Off';
  FXSendSynth5.State:= cbUnchecked;
  FXSendSynth5.Caption:='FX Send Off';
  FXSelectSynth5.ItemIndex:=0;
  If (FSSSRA > 15) Then
  begin
	  AmpEGSynth5.state := cbChecked;
          EnvLED1_S5.Color:=$004080FF;
          EnvLED2_S5.Color:=clSilver;
	  FSSSRA:=FSSSRA-16;
  End;
  If (FSSSRA > 7) Then
   begin
	  RollSynth5.State:= cbChecked;
          RollSynth5.Caption:='Roll On';
	  FSSSRA:=FSSSRA-8;
   End;
  If (FSSSRA > 3) Then
  begin
	  FXSendSynth5.State:= cbChecked;
          FXSendSynth5.Caption:='FX Send On';
	  FSSSRA:=FSSSRA-4;
 End;
 If (FSSSRA = 2) Then
 begin
	  FXSelectSynth5.ItemIndex:=2;
 End;
 If (FSSSRA = 1) Then
  begin
	  FXSelectSynth5.ItemIndex:=1;
  End;

  BytesRead:=Filestream.Read(Reserved,1); //Reserved

  BytesRead:=Filestream.Read(MTDBS,1);
  ModTypeSynth5.ItemIndex:=0;
  BPMSyncSynth5.state:=cbUnchecked;
  BPMSyncSynth5.Caption:='BPM Sync Off';

  MType :='Saw';
  MBPMSync :='Off';
  If (MTDBS > 127) Then
  begin
	  BPMSyncSynth5.state:=cbChecked;
          BPMSyncSynth5.Caption:='BPM Sync On';
	  MTDBS:=MTDBS-128;
  End;
  If (MTDBS > 63) Then
  begin
	  ModTypeSynth5.ItemIndex:=4;
	  MTDBS:=MTDBS-64;
  End;
  If (MTDBS > 47) Then
   begin
	  ModTypeSynth5.ItemIndex:=3;
	  MTDBS:=MTDBS-48;
   End;
  If (MTDBS > 31) Then
  begin
	  ModTypeSynth5.ItemIndex:=2;
	  MTDBS:=MTDBS-32;
  End;
  If (MTDBS > 15) Then
   begin
	  ModTypeSynth5.ItemIndex:=1;
	  MTDBS:=MTDBS-16;
   End;
  ModDestSynth5.ItemIndex:=MTDBS;

  BytesRead:=Filestream.Read(ModulationSpeed,1);
  ModSpeedSynth5.position:= ModulationSpeed;
  BytesRead:=Filestream.Read(ModulationDepth,1);
  ModDepthSynth5.Position:=ModulationDepth;

  BytesRead:=Filestream.Read(MotionSeqS,1);
  MotionSeqSynth5.ItemIndex:=MotionSeqS;
  WaveformSynth5.ItemIndex:= Waveform;
  //Ende File lesen
  FileStream.Free;
end;

procedure TMainForm.LoadPatternSettings(Patternname : String;Bankname : String;Filename : String);
var
  Patternnummer:Integer;
  BytesRead : Integer;
  FileStream : TFileStream;
  Patternbase: Integer;
  FXbase: Integer;
  Tempo: Integer;
  TempoK: Integer;
  TempoR: Real;
  Buffer : array [0..8] of byte;
begin
  FXbase:=1674;
  Patternnummer := (strtoint(leftstr(Patternname,2))-1)*4806;

  If (Bankname='Bank A') Then Patternbase:=512+Patternnummer;
  If (Bankname='Bank B') Then Patternbase:=512+64*4806+Patternnummer;
  If (Bankname='Bank C') Then Patternbase:=512+128*4806+Patternnummer;
  If (Bankname='Bank D') Then Patternbase:=512+192*4806+Patternnummer;
  FileStream := tFileStream.Create (filename,fmShareDenyNone);
  FileStream.Position := Patternbase;
  //FileStream.Position := Patternbase;
  BytesRead:=Filestream.Read(Buffer[0],8);
  setlength(Patternname, 8);
  move(Buffer[0], Patternname[1],8);
  PatternnameFld.text := Patternname;
  //Patternsettings
  //Tempo Float doesn't work in Pascal
  Tempo:=0;  //Tempobugfix :(
  TempoK:=0; //Tempobugfix :(
  BytesRead:=Filestream.Read(Tempo,1);
  BytesRead:=Filestream.Read(TempoK,1);
  TempoR:= Tempo*2+TempoK/128; //No idea if i calculate it right. :)
  //TempoK must have Values between 0.1 and 1.9
  //

  TempouEKnob.Position := TempoR;
  TempoLED.Caption:=floatToStr(TempoR);
  //Swing Standardwert 56
  BytesRead:=Filestream.Read(Swing,1);

  Swing:=Swing+50;
  SwinguEKnob.position := Swing;

  SwingLED.caption := inttostr(Swing);

  //Rolltype, Patternlength, Beat
  BytesRead:=Filestream.Read(RPB,1);
  Rolltype := 2;
  RolltypeSel.Index:=0;
  Beattype := 'Beat 16';
  TimeSignatureSel.Index:=0;
  If (RPB > 127) Then
	 begin
		  Rolltype := 4;
                  RolltypeSel.Index:=2;
		  RPB:=RPB-128;
	 End;
  If (RPB > 63) Then
	 begin
		  Rolltype := 3;
                  RolltypeSel.Index:=1;
                  RPB:=RPB-64;
	 End;
  If (RPB > 47) Then
	 begin
		  Beattype := '16Tri';
                  TimeSignatureSel.index :=3;
		  RPB:=RPB-48;
	 End;
  If (RPB > 31) Then
	 begin
		  Beattype := '8Tri';
                  TimeSignatureSel.index :=2;
		  RPB:=RPB-32;
	 End;
   If (RPB > 15) Then
	 begin
		  Beattype := 'Beat 32';
                  TimeSignatureSel.index :=3;
		  RPB:=RPB-16;
	 End;
   PatternlengthSel.index := RPB;

   //Effect Chain
   BytesRead:=Filestream.Read(FXC,1);
   FXChainCB.itemindex:=FXC;

   //Laststep (Patternlength per Beat)
   BytesRead:=Filestream.Read(Laststep,1);
   Laststep := Laststep + 1;
   LaststepFld.Text:=inttostr(Laststep);

   // ArpScale (00 Chroma,01 Ionian, 02 Dorian, ..., 0F Raga 2, ..., 1E Octave)
   BytesRead:=Filestream.Read(ArpScale,1);
   ArpScaleCombobox.ItemIndex:=ArpScale;

   // Arp Center Note
   BytesRead:=Filestream.Read(ArpCenterNote,1);
   //

   // Mute Status
   BytesRead:=Filestream.Read(MuteStatusP1,1);
   BytesRead:=Filestream.Read(MuteStatusP2,1);
   GetBit := ((MuteStatusP2 shr 0) and 1) = 1; //Drum1
   If (GetBit) then
	  MuteStatus1.state:=cbChecked
   Else
	  MuteStatus1.state:=cbUnchecked;
   GetBit := ((MuteStatusP2 shr 1) and 1) = 1; //Drum2
   If (GetBit) then
	  MuteStatus2.state:=cbChecked
   Else
	  MuteStatus2.state:=cbUnchecked;

   GetBit := ((MuteStatusP2 shr 2) and 1) = 1; //Drum3
   If (GetBit) then
	  MuteStatus3.state:=cbChecked
   Else
	  MuteStatus3.state:=cbUnchecked;

   GetBit := ((MuteStatusP2 shr 3) and 1) = 1;  //Drum4
   If (GetBit) then
	  MuteStatus4.state:=cbChecked
   Else
	  MuteStatus4.state:=cbUnchecked;

   GetBit := ((MuteStatusP2 shr 4) and 1) = 1; //Drum5
   If (GetBit) then
	  MuteStatus5.state:=cbChecked
   Else
	  MuteStatus5.state:=cbUnchecked;

   GetBit := ((MuteStatusP2 shr 5) and 1) = 1;  //Drum6A
   If (GetBit) then
	  MuteStatus6.state:=cbChecked
   Else
	  MuteStatus6.state:=cbUnchecked;

   GetBit := ((MuteStatusP2 shr 6) and 1) = 1;  //Drum6B
   If (GetBit) then
	  MuteStatus7.state:=cbChecked
   Else
	  MuteStatus7.state:=cbUnchecked;

   GetBit := ((MuteStatusP2 shr 7) and 1) = 1;  //Drum7A
   If (GetBit) then
	  MuteStatus8.state:=cbChecked
   Else
	  MuteStatus8.state:=cbUnchecked;

   GetBit := ((MuteStatusP1 shr 0) and 1) = 1; //Drum7B
   If (GetBit) then
	  MuteStatus9.state:=cbChecked
   Else
	  MuteStatus9.state:=cbUnchecked;

   GetBit := ((MuteStatusP1 shr 1) and 1) = 1; //Synth1
   If (GetBit) then
	  MuteStatus10.state:=cbChecked
   Else
	  MuteStatus10.state:=cbUnchecked;

   GetBit := ((MuteStatusP1 shr 2) and 1) = 1; //Synth2
   If (GetBit) then
	  MuteStatus11.state:=cbChecked
   Else
	  MuteStatus11.state:=cbUnchecked;

   GetBit := ((MuteStatusP1 shr 3) and 1) = 1;  //Synth3
   If (GetBit) then
	  MuteStatus12.state:=cbChecked
   Else
	  MuteStatus12.state:=cbUnchecked;
   GetBit := ((MuteStatusP1 shr 4) and 1) = 1;  //Synth4
   If (GetBit) then
	  MuteStatus13.state:=cbChecked
   Else
	  MuteStatus13.state:=cbUnchecked;
   GetBit := ((MuteStatusP1 shr 5) and 1) = 1;  //Synth5
   If (GetBit) then
	  MuteStatus14.state:=cbChecked
   Else
	  MuteStatus14.state:=cbUnchecked;

   // Swing Status
   BytesRead:=Filestream.Read(SwingStatusP1,1);
   BytesRead:=Filestream.Read(SwingStatusP2,1);

   //function GetBit(Value: QWord; Index: Byte): Boolean;
   GetBit := ((SwingStatusP2 shr 0) and 1) = 1;
   If (GetBit) then
	  SwingStatus1.state:=cbChecked
   Else
	  SwingStatus1.state:=cbUnchecked;

   GetBit := ((SwingStatusP2 shr 1) and 1) = 1;
   If (GetBit) then
	  SwingStatus2.state:=cbChecked
   Else
	  SwingStatus2.state:=cbUnchecked;

   GetBit := ((SwingStatusP2 shr 2) and 1) = 1;
   If (GetBit) then
	  SwingStatus3.state:=cbChecked
   Else
	  SwingStatus3.state:=cbUnchecked;

   GetBit := ((SwingStatusP2 shr 3) and 1) = 1;
   If (GetBit) then
	  SwingStatus4.state:=cbChecked
   Else
	  SwingStatus4.state:=cbUnchecked;

   GetBit := ((SwingStatusP2 shr 4) and 1) = 1;
   If (GetBit) then
	  SwingStatus5.state:=cbChecked
   Else
	  SwingStatus5.state:=cbUnchecked;

   GetBit := ((SwingStatusP2 shr 5) and 1) = 1;
   If (GetBit) then
	  SwingStatus6.state:=cbChecked
   Else
	  SwingStatus6.state:=cbUnchecked;

   GetBit := ((SwingStatusP2 shr 6) and 1) = 1;
   If (GetBit) then
	  SwingStatus7.state:=cbChecked
   Else
	  SwingStatus7.state:=cbUnchecked;

   GetBit := ((SwingStatusP2 shr 7) and 1) = 1;
   If (GetBit) then
	  SwingStatus8.state:=cbChecked
   Else
	  SwingStatus8.state:=cbUnchecked;

   GetBit := ((SwingStatusP1 shr 0) and 1) = 1;
   If (GetBit) then
	  SwingStatus9.state:=cbChecked
   Else
	  SwingStatus9.state:=cbUnchecked;

   GetBit := ((SwingStatusP1 shr 1) and 1) = 1;
   If (GetBit) then
	  SwingStatus10.state:=cbChecked
   Else
	  SwingStatus10.state:=cbUnchecked;

   GetBit := ((SwingStatusP1 shr 2) and 1) = 1;
   If (GetBit) then
	  SwingStatus11.state:=cbChecked
   Else
	  SwingStatus11.state:=cbUnchecked;

   GetBit := ((SwingStatusP1 shr 3) and 1) = 1;
   If (GetBit) then
	  SwingStatus12.state:=cbChecked
   Else
	  SwingStatus12.state:=cbUnchecked;

   GetBit := ((SwingStatusP1 shr 4) and 1) = 1;
   If (GetBit) then
	  SwingStatus13.state:=cbChecked
   Else
	  SwingStatus13.state:=cbUnchecked;

   GetBit := ((SwingStatusP1 shr 5) and 1) = 1;
   If (GetBit) then
	  SwingStatus14.state:=cbChecked
   Else
	  SwingStatus14.state:=cbUnchecked;

   // Output L/R or 3/4 (1 Word) 0=Output 3/4 1=Output L/R
   BytesRead:=Filestream.Read(OutputStatusP1,1);
   BytesRead:=Filestream.Read(OutputStatusP2,1);

   //functiOutput L/R GetBit(Value: QWord; Index: Byte): Boolean;
   GetBit := ((OutputStatusP2 shr 0) and 1) = 1;
   If (GetBit) then
	  ComboBox1.ItemIndex:=1
   Else
	  ComboBox1.ItemIndex:=0;

   GetBit := ((OutputStatusP2 shr 1) and 1) = 1;
   If (GetBit) then
	  ComboBox2.ItemIndex:=1
   Else
	  ComboBox2.ItemIndex:=0;

   GetBit := ((OutputStatusP2 shr 2) and 1) = 1;
   If (GetBit) then
	  ComboBox3.ItemIndex:=1
   Else
	  ComboBox3.ItemIndex:=0;

   GetBit := ((OutputStatusP2 shr 3) and 1) = 1;
   If (GetBit) then
	  ComboBox4.ItemIndex:=1
   Else
	  ComboBox4.ItemIndex:=0;

   GetBit := ((OutputStatusP2 shr 4) and 1) = 1;
   If (GetBit) then
	  ComboBox5.ItemIndex:=1
   Else
	  ComboBox5.ItemIndex:=0;

   GetBit := ((OutputStatusP2 shr 5) and 1) = 1;
   If (GetBit) then
	  ComboBox6.ItemIndex:=1
   Else
	  ComboBox6.ItemIndex:=0;

   GetBit := ((OutputStatusP2 shr 6) and 1) = 1;
   If (GetBit) then
	  ComboBox7.ItemIndex:=1
   Else
	  ComboBox7.ItemIndex:=0;

   GetBit := ((OutputStatusP2 shr 7) and 1) = 1;
   If (GetBit) then
	  ComboBox8.ItemIndex:=1
   Else
	  ComboBox8.ItemIndex:=0;

   GetBit := ((OutputStatusP1 shr 0) and 1) = 1;
   If (GetBit) then
	  ComboBox9.ItemIndex:=1
   Else
	  ComboBox9.ItemIndex:=0;

   GetBit := ((OutputStatusP1 shr 1) and 1) = 1;
   If (GetBit) then
	  ComboBox10.ItemIndex:=1
   Else
	  ComboBox10.ItemIndex:=0;

   GetBit := ((OutputStatusP1 shr 2) and 1) = 1;
   If (GetBit) then
	  ComboBox11.ItemIndex:=1
   Else
	  ComboBox11.ItemIndex:=0;

   GetBit := ((OutputStatusP1 shr 3) and 1) = 1;
   If (GetBit) then
	  ComboBox12.ItemIndex:=1
   Else
	  ComboBox12.ItemIndex:=0;

   GetBit := ((OutputStatusP1 shr 4) and 1) = 1;
   If (GetBit) then
	  ComboBox13.ItemIndex:=1
   Else
	  ComboBox13.ItemIndex:=0;

   GetBit := ((OutputStatusP1 shr 5) and 1) = 1;
   If (GetBit) then
	  ComboBox14.ItemIndex:=1
   Else
	  ComboBox14.ItemIndex:=0;

   // AccentSw Status (1 Word) 0=AccentSw off 1=AccentSw On
   BytesRead:=Filestream.Read(AccentSwStatusP1,1);
   BytesRead:=Filestream.Read(AccentSwStatusP2,1);

   //function GetBit(Value: QWord; Index: Byte): Boolean;
   GetBit := ((AccentSwStatusP2 shr 0) and 1) = 1;
   If (GetBit) then
	  SwingSWStatus1.state:=cbChecked
   Else
	  SwingSWStatus1.state:=cbUnchecked;

   GetBit := ((AccentSwStatusP2 shr 1) and 1) = 1;
   If (GetBit) then
	  SwingSWStatus2.state:=cbChecked
   Else
	  SwingSWStatus2.state:=cbUnchecked;

   GetBit := ((AccentSwStatusP2 shr 2) and 1) = 1;
   If (GetBit) then
	  SwingSWStatus3.state:=cbChecked
   Else
	  SwingSWStatus3.state:=cbUnchecked;

   GetBit := ((AccentSwStatusP2 shr 3) and 1) = 1;
   If (GetBit) then
	  SwingSWStatus4.state:=cbChecked
   Else
	  SwingSWStatus4.state:=cbUnchecked;

   GetBit := ((AccentSwStatusP2 shr 4) and 1) = 1;
   If (GetBit) then
	  SwingSWStatus5.state:=cbChecked
   Else
	  SwingSWStatus5.state:=cbUnchecked;

   GetBit := ((AccentSwStatusP2 shr 5) and 1) = 1;
   If (GetBit) then
	  SwingSWStatus6.state:=cbChecked
   Else
	  SwingSWStatus6.state:=cbUnchecked;

   GetBit := ((AccentSwStatusP2 shr 6) and 1) = 1;
   If (GetBit) then
	  SwingSWStatus7.state:=cbChecked
   Else
	  SwingSWStatus7.state:=cbUnchecked;

   GetBit := ((AccentSwStatusP2 shr 7) and 1) = 1;
   If (GetBit) then
	  SwingSWStatus8.state:=cbChecked
   Else
	  SwingSWStatus8.state:=cbUnchecked;

   GetBit := ((AccentSwStatusP1 shr 0) and 1) = 1;
   If (GetBit) then
         If (GetBit) then
      	  SwingSWStatus9.state:=cbChecked
         Else
      	  SwingSWStatus9.state:=cbUnchecked;

   GetBit := ((AccentSwStatusP1 shr 1) and 1) = 1;
   If (GetBit) then
	  SwingSWStatus10.state:=cbChecked
   Else
	  SwingSWStatus10.state:=cbUnchecked;

   GetBit := ((AccentSwStatusP1 shr 2) and 1) = 1;
   If (GetBit) then
	  SwingSWStatus11.state:=cbChecked
   Else
	  SwingSWStatus11.state:=cbUnchecked;

   GetBit := ((AccentSwStatusP1 shr 3) and 1) = 1;
   If (GetBit) then
	  SwingSWStatus12.state:=cbChecked
   Else
	  SwingSWStatus12.state:=cbUnchecked;

   GetBit := ((AccentSwStatusP1 shr 4) and 1) = 1;
   If (GetBit) then
	  SwingSWStatus13.state:=cbChecked
   Else
	  SwingSWStatus13.state:=cbUnchecked;

   GetBit := ((AccentSwStatusP1 shr 5) and 1) = 1;
   If (GetBit) then
	  SwingSWStatus14.state:=cbChecked
   Else
	  SwingSWStatus14.state:=cbUnchecked;



   // The FX Section 88A
   FileStream.Position := Patternbase+FXbase;
   BytesRead:=Filestream.Read(SelectedFX,1);
   FX1EffectSelectCB.ItemIndex:=SelectedFX;
   BytesRead:=Filestream.Read(FXParameter1,1);
   FX1Parameter1.position :=FXParameter1;
   FX1VParameter1.Text:=inttostr(FXParameter1);
   BytesRead:=Filestream.Read(FXParameter2,1);
   FX1Parameter2.position :=FXParameter2;
   FX1VParameter2.Text:=inttostr(FXParameter2);
   BytesRead:=Filestream.Read(FX1MotionSeq,1);
   //If (FX1MotionSeq=1) then
   //s:='On'
   //Else
   //s:='Off';
   //Treeview1.Items.AddChild(ParameterNode,'FX 1 Motion Seq. is ' + s);

   BytesRead:=Filestream.Read(SelectedFX,1);
   FX2EffectSelectCB.ItemIndex:=SelectedFX;
   BytesRead:=Filestream.Read(FXParameter1,1);
   FX2Parameter1.position :=FXParameter1;
   FX2VParameter1.Text:=inttostr(FXParameter1);
   BytesRead:=Filestream.Read(FXParameter2,1);
   FX2Parameter2.position :=FXParameter2;
   FX2VParameter2.Text:=inttostr(FXParameter2);
   BytesRead:=Filestream.Read(FX1MotionSeq,1);
   //If (FX1MotionSeq=1) then
   //s:='On'
   //Else
   //s:='Off';
   //Treeview1.Items.AddChild(ParameterNode,'FX 2 Motion Seq. is ' + s);



   BytesRead:=Filestream.Read(SelectedFX,1);
   FX3EffectSelectCB.ItemIndex:=SelectedFX;
   BytesRead:=Filestream.Read(FXParameter1,1);
   FX3Parameter1.position :=FXParameter1;
   FX3VParameter1.Text:=inttostr(FXParameter1);
   BytesRead:=Filestream.Read(FXParameter2,1);
   FX3Parameter2.position :=FXParameter2;
   FX3VParameter2.Text:=inttostr(FXParameter2);
   BytesRead:=Filestream.Read(FX1MotionSeq,1);
   //If (FX1MotionSeq=1) then
   //s:='On'
   //Else
   //s:='Off';
   //Treeview1.Items.AddChild(ParameterNode,'FX 3 Motion Seq. is ' + s);



  //Ende File lesen
  FileStream.Free;
  showmessage('Loaded. Have Fun :)');
end;

procedure TMainform.SaveDrum1Parameter(Patternbase: Integer);
var
  BytesWrite : Integer;
  FileStream : TFileStream;
  MTypeI:Integer;

begin

  FileStream := tFileStream.Create (filename,fmOpenWrite);
  FileStream.Position := patternbase+24;


  //Sample 1
  Samplebanknumber:= D1Sample.ItemIndex;
  BytesWrite:=Filestream.Write(Samplebanknumber,1);
  Pitch:=Round(D1Pitch.Position)+64;
  BytesWrite:=Filestream.Write(Pitch,1);
  DLevel:=Round(D1Level.Position);
  BytesWrite:=Filestream.Write(DLevel,1);
  DPan:=Round(D1Pan.Position)+64;
  BytesWrite:=Filestream.Write(DPan,1);
  DEGTime:=Round(D1EGTime.Position);
  BytesWrite:=Filestream.Write(DEGTime,1);
  FSSSRA:=0;
  If (D1AmpEGB.checked) then FSSSRA:=FSSSRA+16;
  If (D1RollB.checked) then FSSSRA:=FSSSRA+8;
  If (D1FXSend.checked) then FSSSRA:=FSSSRA+4;
  FSSSRA:=FSSSRA+D1FXSelect.ItemIndex;
  BytesWrite:=Filestream.Write(FSSSRA,1);

  MTDBS:=0;
  If (D1BPMSync.checked) then MTDBS:=MTDBS+128;
  MTypeI := D1ModType.ItemIndex;
  Case MTypeI of
       1 : MTDBS:=MTDBS+16;
       2 : MTDBS:=MTDBS+32;
       3 : MTDBS:=MTDBS+48;
       4 : MTDBS:=MTDBS+64;
       end;
  MTDBS:=MTDBS+D1ModDest.ItemIndex;
  BytesWrite:=Filestream.Write(MTDBS,1);

  ModulationSpeed:=Round(D1ModSpeed.Position);
  BytesWrite:=Filestream.Write(ModulationSpeed,1);
  ModulationDepth:=Round(D1ModDepth.Position)+64;
  BytesWrite:=Filestream.Write(ModulationDepth,1);
  MotionSeqS:=D1MotionSeq.ItemIndex;
  BytesWrite:=Filestream.Write(MotionSeqS,1);
  //Ende File
  FileStream.Free;
end;
procedure TMainForm.SaveDrum1Sequence(Patternbase: Integer);
var

  BytesWrite : Integer;
  FileStream : TFileStream;

begin

  FileStream := tFileStream.Create (filename,fmOpenWrite);
  FileStream.Position := patternbase+24+10;
  //The Pattern
  DrumP :=0;
  DrumP := DrumP + BoolToInt(D1S1.checked)*1;
  DrumP := DrumP + BoolToInt(D1S2.checked)*2;
  DrumP := DrumP + BoolToInt(D1S3.checked)*4;
  DrumP := DrumP + BoolToInt(D1S4.checked)*8;
  DrumP := DrumP + BoolToInt(D1S5.checked)*16;
  DrumP := DrumP + BoolToInt(D1S6.checked)*32;
  DrumP := DrumP + BoolToInt(D1S7.checked)*64;
  DrumP := DrumP + BoolToInt(D1S8.checked)*128;
  BytesWrite:=Filestream.Write(DrumP,1);
  DrumP :=0;
  DrumP := DrumP + BoolToInt(D1S9.checked)*1;
  DrumP := DrumP + BoolToInt(D1S10.checked)*2;
  DrumP := DrumP + BoolToInt(D1S11.checked)*4;
  DrumP := DrumP + BoolToInt(D1S12.checked)*8;
  DrumP := DrumP + BoolToInt(D1S13.checked)*16;
  DrumP := DrumP + BoolToInt(D1S14.checked)*32;
  DrumP := DrumP + BoolToInt(D1S15.checked)*64;
  DrumP := DrumP + BoolToInt(D1S16.checked)*128;
  BytesWrite:=Filestream.Write(DrumP,1);
  DrumP :=0;
  DrumP := DrumP + BoolToInt(D1S17.checked)*1;
  DrumP := DrumP + BoolToInt(D1S18.checked)*2;
  DrumP := DrumP + BoolToInt(D1S19.checked)*4;
  DrumP := DrumP + BoolToInt(D1S20.checked)*8;
  DrumP := DrumP + BoolToInt(D1S21.checked)*16;
  DrumP := DrumP + BoolToInt(D1S22.checked)*32;
  DrumP := DrumP + BoolToInt(D1S23.checked)*64;
  DrumP := DrumP + BoolToInt(D1S24.checked)*128;
  BytesWrite:=Filestream.Write(DrumP,1);
  DrumP :=0;
  DrumP := DrumP + BoolToInt(D1S25.checked)*1;
  DrumP := DrumP + BoolToInt(D1S26.checked)*2;
  DrumP := DrumP + BoolToInt(D1S27.checked)*4;
  DrumP := DrumP + BoolToInt(D1S28.checked)*8;
  DrumP := DrumP + BoolToInt(D1S29.checked)*16;
  DrumP := DrumP + BoolToInt(D1S30.checked)*32;
  DrumP := DrumP + BoolToInt(D1S31.checked)*64;
  DrumP := DrumP + BoolToInt(D1S32.checked)*128;
  BytesWrite:=Filestream.Write(DrumP,1);
  DrumP :=0;
  DrumP := DrumP + BoolToInt(D1S33.checked)*1;
  DrumP := DrumP + BoolToInt(D1S34.checked)*2;
  DrumP := DrumP + BoolToInt(D1S35.checked)*4;
  DrumP := DrumP + BoolToInt(D1S36.checked)*8;
  DrumP := DrumP + BoolToInt(D1S37.checked)*16;
  DrumP := DrumP + BoolToInt(D1S38.checked)*32;
  DrumP := DrumP + BoolToInt(D1S39.checked)*64;
  DrumP := DrumP + BoolToInt(D1S40.checked)*128;
  BytesWrite:=Filestream.Write(DrumP,1);
  DrumP :=0;
  DrumP := DrumP + BoolToInt(D1S41.checked)*1;
  DrumP := DrumP + BoolToInt(D1S42.checked)*2;
  DrumP := DrumP + BoolToInt(D1S43.checked)*4;
  DrumP := DrumP + BoolToInt(D1S44.checked)*8;
  DrumP := DrumP + BoolToInt(D1S45.checked)*16;
  DrumP := DrumP + BoolToInt(D1S46.checked)*32;
  DrumP := DrumP + BoolToInt(D1S47.checked)*64;
  DrumP := DrumP + BoolToInt(D1S48.checked)*128;
  BytesWrite:=Filestream.Write(DrumP,1);
  DrumP :=0;
  DrumP := DrumP + BoolToInt(D1S49.checked)*1;
  DrumP := DrumP + BoolToInt(D1S50.checked)*2;
  DrumP := DrumP + BoolToInt(D1S51.checked)*4;
  DrumP := DrumP + BoolToInt(D1S52.checked)*8;
  DrumP := DrumP + BoolToInt(D1S53.checked)*16;
  DrumP := DrumP + BoolToInt(D1S54.checked)*32;
  DrumP := DrumP + BoolToInt(D1S55.checked)*64;
  DrumP := DrumP + BoolToInt(D1S56.checked)*128;
  BytesWrite:=Filestream.Write(DrumP,1);
  DrumP :=0;
  DrumP := DrumP + BoolToInt(D1S57.checked)*1;
  DrumP := DrumP + BoolToInt(D1S58.checked)*2;
  DrumP := DrumP + BoolToInt(D1S59.checked)*4;
  DrumP := DrumP + BoolToInt(D1S60.checked)*8;
  DrumP := DrumP + BoolToInt(D1S61.checked)*16;
  DrumP := DrumP + BoolToInt(D1S62.checked)*32;
  DrumP := DrumP + BoolToInt(D1S63.checked)*64;
  DrumP := DrumP + BoolToInt(D1S64.checked)*128;
  BytesWrite:=Filestream.Write(DrumP,1);
  DrumP :=0;
  DrumP := DrumP + BoolToInt(D1S65.checked)*1;
  DrumP := DrumP + BoolToInt(D1S66.checked)*2;
  DrumP := DrumP + BoolToInt(D1S67.checked)*4;
  DrumP := DrumP + BoolToInt(D1S68.checked)*8;
  DrumP := DrumP + BoolToInt(D1S69.checked)*16;
  DrumP := DrumP + BoolToInt(D1S70.checked)*32;
  DrumP := DrumP + BoolToInt(D1S71.checked)*64;
  DrumP := DrumP + BoolToInt(D1S72.checked)*128;
  BytesWrite:=Filestream.Write(DrumP,1);
  DrumP :=0;
  DrumP := DrumP + BoolToInt(D1S73.checked)*1;
  DrumP := DrumP + BoolToInt(D1S74.checked)*2;
  DrumP := DrumP + BoolToInt(D1S75.checked)*4;
  DrumP := DrumP + BoolToInt(D1S76.checked)*8;
  DrumP := DrumP + BoolToInt(D1S77.checked)*16;
  DrumP := DrumP + BoolToInt(D1S78.checked)*32;
  DrumP := DrumP + BoolToInt(D1S79.checked)*64;
  DrumP := DrumP + BoolToInt(D1S80.checked)*128;
  BytesWrite:=Filestream.Write(DrumP,1);
  DrumP :=0;
  DrumP := DrumP + BoolToInt(D1S81.checked)*1;
  DrumP := DrumP + BoolToInt(D1S82.checked)*2;
  DrumP := DrumP + BoolToInt(D1S83.checked)*4;
  DrumP := DrumP + BoolToInt(D1S84.checked)*8;
  DrumP := DrumP + BoolToInt(D1S85.checked)*16;
  DrumP := DrumP + BoolToInt(D1S86.checked)*32;
  DrumP := DrumP + BoolToInt(D1S87.checked)*64;
  DrumP := DrumP + BoolToInt(D1S88.checked)*128;
  BytesWrite:=Filestream.Write(DrumP,1);
  DrumP :=0;
  DrumP := DrumP + BoolToInt(D1S89.checked)*1;
  DrumP := DrumP + BoolToInt(D1S90.checked)*2;
  DrumP := DrumP + BoolToInt(D1S91.checked)*4;
  DrumP := DrumP + BoolToInt(D1S92.checked)*8;
  DrumP := DrumP + BoolToInt(D1S93.checked)*16;
  DrumP := DrumP + BoolToInt(D1S94.checked)*32;
  DrumP := DrumP + BoolToInt(D1S95.checked)*64;
  DrumP := DrumP + BoolToInt(D1S96.checked)*128;
  BytesWrite:=Filestream.Write(DrumP,1);
  DrumP :=0;
  DrumP := DrumP + BoolToInt(D1S97.checked)*1;
  DrumP := DrumP + BoolToInt(D1S98.checked)*2;
  DrumP := DrumP + BoolToInt(D1S99.checked)*4;
  DrumP := DrumP + BoolToInt(D1S100.checked)*8;
  DrumP := DrumP + BoolToInt(D1S101.checked)*16;
  DrumP := DrumP + BoolToInt(D1S102.checked)*32;
  DrumP := DrumP + BoolToInt(D1S103.checked)*64;
  DrumP := DrumP + BoolToInt(D1S104.checked)*128;
  BytesWrite:=Filestream.Write(DrumP,1);
  DrumP :=0;
  DrumP := DrumP + BoolToInt(D1S105.checked)*1;
  DrumP := DrumP + BoolToInt(D1S106.checked)*2;
  DrumP := DrumP + BoolToInt(D1S107.checked)*4;
  DrumP := DrumP + BoolToInt(D1S108.checked)*8;
  DrumP := DrumP + BoolToInt(D1S109.checked)*16;
  DrumP := DrumP + BoolToInt(D1S110.checked)*32;
  DrumP := DrumP + BoolToInt(D1S111.checked)*64;
  DrumP := DrumP + BoolToInt(D1S112.checked)*128;
  BytesWrite:=Filestream.Write(DrumP,1);
  DrumP :=0;
  DrumP := DrumP + BoolToInt(D1S113.checked)*1;
  DrumP := DrumP + BoolToInt(D1S114.checked)*2;
  DrumP := DrumP + BoolToInt(D1S115.checked)*4;
  DrumP := DrumP + BoolToInt(D1S116.checked)*8;
  DrumP := DrumP + BoolToInt(D1S117.checked)*16;
  DrumP := DrumP + BoolToInt(D1S118.checked)*32;
  DrumP := DrumP + BoolToInt(D1S119.checked)*64;
  DrumP := DrumP + BoolToInt(D1S120.checked)*128;
  BytesWrite:=Filestream.Write(DrumP,1);
  DrumP :=0;
  DrumP := DrumP + BoolToInt(D1S121.checked)*1;
  DrumP := DrumP + BoolToInt(D1S122.checked)*2;
  DrumP := DrumP + BoolToInt(D1S123.checked)*4;
  DrumP := DrumP + BoolToInt(D1S124.checked)*8;
  DrumP := DrumP + BoolToInt(D1S125.checked)*16;
  DrumP := DrumP + BoolToInt(D1S126.checked)*32;
  DrumP := DrumP + BoolToInt(D1S127.checked)*64;
  DrumP := DrumP + BoolToInt(D1S128.checked)*128;
  BytesWrite:=Filestream.Write(DrumP,1);
  //Ende File
  FileStream.Free;
end;
procedure TMainform.SaveDrum2Parameter(Patternbase: Integer);
var
  BytesWrite : Integer;
  FileStream : TFileStream;
  MTypeI:Integer;

begin

  FileStream := tFileStream.Create (filename,fmOpenWrite);
  FileStream.Position := patternbase+50;
          //Sample 2
        Samplebanknumber:= D1Sample1.ItemIndex;
        BytesWrite:=Filestream.Write(Samplebanknumber,1);
        Pitch:=Round(D1Pitch1.Position)+64;
        BytesWrite:=Filestream.Write(Pitch,1);
        DLevel:=Round(D1Level1.Position);
        BytesWrite:=Filestream.Write(DLevel,1);
        DPan:=Round(D1Pan1.Position)+64;
        BytesWrite:=Filestream.Write(DPan,1);
        DEGTime:=Round(D1EGTime1.Position);
        BytesWrite:=Filestream.Write(DEGTime,1);
        FSSSRA:=0;
        If (D1AmpEGB1.checked) then FSSSRA:=FSSSRA+16;
        If (D1RollB1.checked) then FSSSRA:=FSSSRA+8;
        If (D1FXSend1.checked) then FSSSRA:=FSSSRA+4;
        FSSSRA:=FSSSRA+D1FXSelect1.ItemIndex;
        BytesWrite:=Filestream.Write(FSSSRA,1);

        MTDBS:=0;
        If (D1BPMSync1.checked) then MTDBS:=MTDBS+128;
        MTypeI := D1ModType1.ItemIndex;
        Case MTypeI of
             1 : MTDBS:=MTDBS+16;
             2 : MTDBS:=MTDBS+32;
             3 : MTDBS:=MTDBS+48;
             4 : MTDBS:=MTDBS+64;
             end;
        MTDBS:=MTDBS+D1ModDest1.ItemIndex;
        BytesWrite:=Filestream.Write(MTDBS,1);

        ModulationSpeed:=Round(D1ModSpeed1.Position);
        BytesWrite:=Filestream.Write(ModulationSpeed,1);
        ModulationDepth:=Round(D1ModDepth1.Position)+64;
        BytesWrite:=Filestream.Write(ModulationDepth,1);
        MotionSeqS:=D1MotionSeq1.ItemIndex;
        BytesWrite:=Filestream.Write(MotionSeqS,1);
        //Ende File
        FileStream.Free;
end;
procedure TMainform.SaveDrum2Sequence(Patternbase: Integer);
var
  BytesWrite : Integer;
  FileStream : TFileStream;

begin

  FileStream := tFileStream.Create (filename,fmOpenWrite);
  FileStream.Position := patternbase+50+10;
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S129.checked)*1;
        DrumP := DrumP + BoolToInt(D1S130.checked)*2;
        DrumP := DrumP + BoolToInt(D1S131.checked)*4;
        DrumP := DrumP + BoolToInt(D1S132.checked)*8;
        DrumP := DrumP + BoolToInt(D1S133.checked)*16;
        DrumP := DrumP + BoolToInt(D1S134.checked)*32;
        DrumP := DrumP + BoolToInt(D1S135.checked)*64;
        DrumP := DrumP + BoolToInt(D1S136.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S137.checked)*1;
        DrumP := DrumP + BoolToInt(D1S138.checked)*2;
        DrumP := DrumP + BoolToInt(D1S139.checked)*4;
        DrumP := DrumP + BoolToInt(D1S140.checked)*8;
        DrumP := DrumP + BoolToInt(D1S141.checked)*16;
        DrumP := DrumP + BoolToInt(D1S142.checked)*32;
        DrumP := DrumP + BoolToInt(D1S143.checked)*64;
        DrumP := DrumP + BoolToInt(D1S144.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S145.checked)*1;
        DrumP := DrumP + BoolToInt(D1S146.checked)*2;
        DrumP := DrumP + BoolToInt(D1S147.checked)*4;
        DrumP := DrumP + BoolToInt(D1S148.checked)*8;
        DrumP := DrumP + BoolToInt(D1S149.checked)*16;
        DrumP := DrumP + BoolToInt(D1S150.checked)*32;
        DrumP := DrumP + BoolToInt(D1S151.checked)*64;
        DrumP := DrumP + BoolToInt(D1S152.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S153.checked)*1;
        DrumP := DrumP + BoolToInt(D1S154.checked)*2;
        DrumP := DrumP + BoolToInt(D1S155.checked)*4;
        DrumP := DrumP + BoolToInt(D1S156.checked)*8;
        DrumP := DrumP + BoolToInt(D1S157.checked)*16;
        DrumP := DrumP + BoolToInt(D1S158.checked)*32;
        DrumP := DrumP + BoolToInt(D1S159.checked)*64;
        DrumP := DrumP + BoolToInt(D1S160.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S161.checked)*1;
        DrumP := DrumP + BoolToInt(D1S162.checked)*2;
        DrumP := DrumP + BoolToInt(D1S163.checked)*4;
        DrumP := DrumP + BoolToInt(D1S164.checked)*8;
        DrumP := DrumP + BoolToInt(D1S165.checked)*16;
        DrumP := DrumP + BoolToInt(D1S166.checked)*32;
        DrumP := DrumP + BoolToInt(D1S167.checked)*64;
        DrumP := DrumP + BoolToInt(D1S168.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S169.checked)*1;
        DrumP := DrumP + BoolToInt(D1S170.checked)*2;
        DrumP := DrumP + BoolToInt(D1S171.checked)*4;
        DrumP := DrumP + BoolToInt(D1S172.checked)*8;
        DrumP := DrumP + BoolToInt(D1S173.checked)*16;
        DrumP := DrumP + BoolToInt(D1S174.checked)*32;
        DrumP := DrumP + BoolToInt(D1S175.checked)*64;
        DrumP := DrumP + BoolToInt(D1S176.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S177.checked)*1;
        DrumP := DrumP + BoolToInt(D1S178.checked)*2;
        DrumP := DrumP + BoolToInt(D1S179.checked)*4;
        DrumP := DrumP + BoolToInt(D1S180.checked)*8;
        DrumP := DrumP + BoolToInt(D1S181.checked)*16;
        DrumP := DrumP + BoolToInt(D1S182.checked)*32;
        DrumP := DrumP + BoolToInt(D1S183.checked)*64;
        DrumP := DrumP + BoolToInt(D1S184.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S185.checked)*1;
        DrumP := DrumP + BoolToInt(D1S186.checked)*2;
        DrumP := DrumP + BoolToInt(D1S187.checked)*4;
        DrumP := DrumP + BoolToInt(D1S188.checked)*8;
        DrumP := DrumP + BoolToInt(D1S189.checked)*16;
        DrumP := DrumP + BoolToInt(D1S190.checked)*32;
        DrumP := DrumP + BoolToInt(D1S191.checked)*64;
        DrumP := DrumP + BoolToInt(D1S192.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S193.checked)*1;
        DrumP := DrumP + BoolToInt(D1S194.checked)*2;
        DrumP := DrumP + BoolToInt(D1S195.checked)*4;
        DrumP := DrumP + BoolToInt(D1S196.checked)*8;
        DrumP := DrumP + BoolToInt(D1S197.checked)*16;
        DrumP := DrumP + BoolToInt(D1S198.checked)*32;
        DrumP := DrumP + BoolToInt(D1S199.checked)*64;
        DrumP := DrumP + BoolToInt(D1S200.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S201.checked)*1;
        DrumP := DrumP + BoolToInt(D1S202.checked)*2;
        DrumP := DrumP + BoolToInt(D1S203.checked)*4;
        DrumP := DrumP + BoolToInt(D1S204.checked)*8;
        DrumP := DrumP + BoolToInt(D1S205.checked)*16;
        DrumP := DrumP + BoolToInt(D1S206.checked)*32;
        DrumP := DrumP + BoolToInt(D1S207.checked)*64;
        DrumP := DrumP + BoolToInt(D1S208.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S209.checked)*1;
        DrumP := DrumP + BoolToInt(D1S210.checked)*2;
        DrumP := DrumP + BoolToInt(D1S211.checked)*4;
        DrumP := DrumP + BoolToInt(D1S212.checked)*8;
        DrumP := DrumP + BoolToInt(D1S213.checked)*16;
        DrumP := DrumP + BoolToInt(D1S214.checked)*32;
        DrumP := DrumP + BoolToInt(D1S215.checked)*64;
        DrumP := DrumP + BoolToInt(D1S216.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S217.checked)*1;
        DrumP := DrumP + BoolToInt(D1S218.checked)*2;
        DrumP := DrumP + BoolToInt(D1S219.checked)*4;
        DrumP := DrumP + BoolToInt(D1S220.checked)*8;
        DrumP := DrumP + BoolToInt(D1S221.checked)*16;
        DrumP := DrumP + BoolToInt(D1S222.checked)*32;
        DrumP := DrumP + BoolToInt(D1S223.checked)*64;
        DrumP := DrumP + BoolToInt(D1S224.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S225.checked)*1;
        DrumP := DrumP + BoolToInt(D1S226.checked)*2;
        DrumP := DrumP + BoolToInt(D1S227.checked)*4;
        DrumP := DrumP + BoolToInt(D1S228.checked)*8;
        DrumP := DrumP + BoolToInt(D1S229.checked)*16;
        DrumP := DrumP + BoolToInt(D1S230.checked)*32;
        DrumP := DrumP + BoolToInt(D1S231.checked)*64;
        DrumP := DrumP + BoolToInt(D1S232.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S233.checked)*1;
        DrumP := DrumP + BoolToInt(D1S234.checked)*2;
        DrumP := DrumP + BoolToInt(D1S235.checked)*4;
        DrumP := DrumP + BoolToInt(D1S236.checked)*8;
        DrumP := DrumP + BoolToInt(D1S237.checked)*16;
        DrumP := DrumP + BoolToInt(D1S238.checked)*32;
        DrumP := DrumP + BoolToInt(D1S239.checked)*64;
        DrumP := DrumP + BoolToInt(D1S240.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S241.checked)*1;
        DrumP := DrumP + BoolToInt(D1S242.checked)*2;
        DrumP := DrumP + BoolToInt(D1S243.checked)*4;
        DrumP := DrumP + BoolToInt(D1S244.checked)*8;
        DrumP := DrumP + BoolToInt(D1S245.checked)*16;
        DrumP := DrumP + BoolToInt(D1S246.checked)*32;
        DrumP := DrumP + BoolToInt(D1S247.checked)*64;
        DrumP := DrumP + BoolToInt(D1S248.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S249.checked)*1;
        DrumP := DrumP + BoolToInt(D1S250.checked)*2;
        DrumP := DrumP + BoolToInt(D1S251.checked)*4;
        DrumP := DrumP + BoolToInt(D1S252.checked)*8;
        DrumP := DrumP + BoolToInt(D1S253.checked)*16;
        DrumP := DrumP + BoolToInt(D1S254.checked)*32;
        DrumP := DrumP + BoolToInt(D1S255.checked)*64;
        DrumP := DrumP + BoolToInt(D1S256.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        //Ende File
        FileStream.Free;
end;
procedure TMainForm.SaveDrum3Parameter(Patternbase: Integer);
var
  BytesWrite : Integer;
  FileStream : TFileStream;
  MTypeI:Integer;

begin

  FileStream := tFileStream.Create (filename,fmOpenWrite);
  FileStream.Position := patternbase+76;
        //Sample 3
         Samplebanknumber:= D1Sample2.ItemIndex;
         BytesWrite:=Filestream.Write(Samplebanknumber,1);
         Pitch:=Round(D1Pitch2.Position)+64;
         BytesWrite:=Filestream.Write(Pitch,1);
         DLevel:=Round(D1Level2.Position);
         BytesWrite:=Filestream.Write(DLevel,1);
         DPan:=Round(D1Pan2.Position)+64;
         BytesWrite:=Filestream.Write(DPan,1);
         DEGTime:=Round(D1EGTime2.Position);
         BytesWrite:=Filestream.Write(DEGTime,1);
         FSSSRA:=0;
         If (D1AmpEGB2.checked) then FSSSRA:=FSSSRA+16;
         If (D1RollB2.checked) then FSSSRA:=FSSSRA+8;
         If (D1FXSend2.checked) then FSSSRA:=FSSSRA+4;
         FSSSRA:=FSSSRA+D1FXSelect2.ItemIndex;
         BytesWrite:=Filestream.Write(FSSSRA,1);

         MTDBS:=0;
         If (D1BPMSync2.checked) then MTDBS:=MTDBS+128;
         MTypeI := D1ModType2.ItemIndex;
         Case MTypeI of
              1 : MTDBS:=MTDBS+16;
              2 : MTDBS:=MTDBS+32;
              3 : MTDBS:=MTDBS+48;
              4 : MTDBS:=MTDBS+64;
              end;
         MTDBS:=MTDBS+D1ModDest2.ItemIndex;
         BytesWrite:=Filestream.Write(MTDBS,1);

         ModulationSpeed:=Round(D1ModSpeed2.Position);
         BytesWrite:=Filestream.Write(ModulationSpeed,1);
         ModulationDepth:=Round(D1ModDepth2.Position)+64;
         BytesWrite:=Filestream.Write(ModulationDepth,1);
         MotionSeqS:=D1MotionSeq2.ItemIndex;
         BytesWrite:=Filestream.Write(MotionSeqS,1);
         //Ende File
         FileStream.Free;
end;
procedure TMainForm.SaveDrum3Sequence(Patternbase: Integer);
var
  BytesWrite : Integer;
  FileStream : TFileStream;

begin

  FileStream := tFileStream.Create (filename,fmOpenWrite);
  FileStream.Position := patternbase+76+10;
        //The Pattern
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S257.checked)*1;
        DrumP := DrumP + BoolToInt(D1S258.checked)*2;
        DrumP := DrumP + BoolToInt(D1S259.checked)*4;
        DrumP := DrumP + BoolToInt(D1S260.checked)*8;
        DrumP := DrumP + BoolToInt(D1S261.checked)*16;
        DrumP := DrumP + BoolToInt(D1S262.checked)*32;
        DrumP := DrumP + BoolToInt(D1S263.checked)*64;
        DrumP := DrumP + BoolToInt(D1S264.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S265.checked)*1;
        DrumP := DrumP + BoolToInt(D1S266.checked)*2;
        DrumP := DrumP + BoolToInt(D1S267.checked)*4;
        DrumP := DrumP + BoolToInt(D1S268.checked)*8;
        DrumP := DrumP + BoolToInt(D1S269.checked)*16;
        DrumP := DrumP + BoolToInt(D1S270.checked)*32;
        DrumP := DrumP + BoolToInt(D1S271.checked)*64;
        DrumP := DrumP + BoolToInt(D1S272.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S273.checked)*1;
        DrumP := DrumP + BoolToInt(D1S274.checked)*2;
        DrumP := DrumP + BoolToInt(D1S275.checked)*4;
        DrumP := DrumP + BoolToInt(D1S276.checked)*8;
        DrumP := DrumP + BoolToInt(D1S277.checked)*16;
        DrumP := DrumP + BoolToInt(D1S278.checked)*32;
        DrumP := DrumP + BoolToInt(D1S279.checked)*64;
        DrumP := DrumP + BoolToInt(D1S280.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S281.checked)*1;
        DrumP := DrumP + BoolToInt(D1S282.checked)*2;
        DrumP := DrumP + BoolToInt(D1S283.checked)*4;
        DrumP := DrumP + BoolToInt(D1S284.checked)*8;
        DrumP := DrumP + BoolToInt(D1S285.checked)*16;
        DrumP := DrumP + BoolToInt(D1S286.checked)*32;
        DrumP := DrumP + BoolToInt(D1S287.checked)*64;
        DrumP := DrumP + BoolToInt(D1S288.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S289.checked)*1;
        DrumP := DrumP + BoolToInt(D1S290.checked)*2;
        DrumP := DrumP + BoolToInt(D1S291.checked)*4;
        DrumP := DrumP + BoolToInt(D1S292.checked)*8;
        DrumP := DrumP + BoolToInt(D1S293.checked)*16;
        DrumP := DrumP + BoolToInt(D1S294.checked)*32;
        DrumP := DrumP + BoolToInt(D1S295.checked)*64;
        DrumP := DrumP + BoolToInt(D1S296.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S297.checked)*1;
        DrumP := DrumP + BoolToInt(D1S298.checked)*2;
        DrumP := DrumP + BoolToInt(D1S299.checked)*4;
        DrumP := DrumP + BoolToInt(D1S300.checked)*8;
        DrumP := DrumP + BoolToInt(D1S301.checked)*16;
        DrumP := DrumP + BoolToInt(D1S302.checked)*32;
        DrumP := DrumP + BoolToInt(D1S303.checked)*64;
        DrumP := DrumP + BoolToInt(D1S304.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S305.checked)*1;
        DrumP := DrumP + BoolToInt(D1S306.checked)*2;
        DrumP := DrumP + BoolToInt(D1S307.checked)*4;
        DrumP := DrumP + BoolToInt(D1S308.checked)*8;
        DrumP := DrumP + BoolToInt(D1S309.checked)*16;
        DrumP := DrumP + BoolToInt(D1S310.checked)*32;
        DrumP := DrumP + BoolToInt(D1S311.checked)*64;
        DrumP := DrumP + BoolToInt(D1S312.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S313.checked)*1;
        DrumP := DrumP + BoolToInt(D1S314.checked)*2;
        DrumP := DrumP + BoolToInt(D1S315.checked)*4;
        DrumP := DrumP + BoolToInt(D1S316.checked)*8;
        DrumP := DrumP + BoolToInt(D1S317.checked)*16;
        DrumP := DrumP + BoolToInt(D1S318.checked)*32;
        DrumP := DrumP + BoolToInt(D1S319.checked)*64;
        DrumP := DrumP + BoolToInt(D1S320.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S321.checked)*1;
        DrumP := DrumP + BoolToInt(D1S322.checked)*2;
        DrumP := DrumP + BoolToInt(D1S323.checked)*4;
        DrumP := DrumP + BoolToInt(D1S324.checked)*8;
        DrumP := DrumP + BoolToInt(D1S325.checked)*16;
        DrumP := DrumP + BoolToInt(D1S326.checked)*32;
        DrumP := DrumP + BoolToInt(D1S327.checked)*64;
        DrumP := DrumP + BoolToInt(D1S328.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S329.checked)*1;
        DrumP := DrumP + BoolToInt(D1S330.checked)*2;
        DrumP := DrumP + BoolToInt(D1S331.checked)*4;
        DrumP := DrumP + BoolToInt(D1S332.checked)*8;
        DrumP := DrumP + BoolToInt(D1S333.checked)*16;
        DrumP := DrumP + BoolToInt(D1S334.checked)*32;
        DrumP := DrumP + BoolToInt(D1S335.checked)*64;
        DrumP := DrumP + BoolToInt(D1S336.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S337.checked)*1;
        DrumP := DrumP + BoolToInt(D1S338.checked)*2;
        DrumP := DrumP + BoolToInt(D1S339.checked)*4;
        DrumP := DrumP + BoolToInt(D1S340.checked)*8;
        DrumP := DrumP + BoolToInt(D1S341.checked)*16;
        DrumP := DrumP + BoolToInt(D1S342.checked)*32;
        DrumP := DrumP + BoolToInt(D1S343.checked)*64;
        DrumP := DrumP + BoolToInt(D1S344.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S345.checked)*1;
        DrumP := DrumP + BoolToInt(D1S346.checked)*2;
        DrumP := DrumP + BoolToInt(D1S347.checked)*4;
        DrumP := DrumP + BoolToInt(D1S348.checked)*8;
        DrumP := DrumP + BoolToInt(D1S349.checked)*16;
        DrumP := DrumP + BoolToInt(D1S350.checked)*32;
        DrumP := DrumP + BoolToInt(D1S351.checked)*64;
        DrumP := DrumP + BoolToInt(D1S352.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S353.checked)*1;
        DrumP := DrumP + BoolToInt(D1S354.checked)*2;
        DrumP := DrumP + BoolToInt(D1S355.checked)*4;
        DrumP := DrumP + BoolToInt(D1S356.checked)*8;
        DrumP := DrumP + BoolToInt(D1S357.checked)*16;
        DrumP := DrumP + BoolToInt(D1S358.checked)*32;
        DrumP := DrumP + BoolToInt(D1S359.checked)*64;
        DrumP := DrumP + BoolToInt(D1S360.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S361.checked)*1;
        DrumP := DrumP + BoolToInt(D1S362.checked)*2;
        DrumP := DrumP + BoolToInt(D1S363.checked)*4;
        DrumP := DrumP + BoolToInt(D1S364.checked)*8;
        DrumP := DrumP + BoolToInt(D1S365.checked)*16;
        DrumP := DrumP + BoolToInt(D1S366.checked)*32;
        DrumP := DrumP + BoolToInt(D1S367.checked)*64;
        DrumP := DrumP + BoolToInt(D1S368.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S369.checked)*1;
        DrumP := DrumP + BoolToInt(D1S370.checked)*2;
        DrumP := DrumP + BoolToInt(D1S371.checked)*4;
        DrumP := DrumP + BoolToInt(D1S372.checked)*8;
        DrumP := DrumP + BoolToInt(D1S373.checked)*16;
        DrumP := DrumP + BoolToInt(D1S374.checked)*32;
        DrumP := DrumP + BoolToInt(D1S375.checked)*64;
        DrumP := DrumP + BoolToInt(D1S376.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S377.checked)*1;
        DrumP := DrumP + BoolToInt(D1S378.checked)*2;
        DrumP := DrumP + BoolToInt(D1S379.checked)*4;
        DrumP := DrumP + BoolToInt(D1S380.checked)*8;
        DrumP := DrumP + BoolToInt(D1S381.checked)*16;
        DrumP := DrumP + BoolToInt(D1S382.checked)*32;
        DrumP := DrumP + BoolToInt(D1S383.checked)*64;
        DrumP := DrumP + BoolToInt(D1S384.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        //Ende File
        FileStream.Free;
end;
procedure TMainForm.SaveDrum4Parameter(Patternbase: Integer);
var
  BytesWrite : Integer;
  FileStream : TFileStream;
  MTypeI:Integer;

begin

  FileStream := tFileStream.Create (filename,fmOpenWrite);
  FileStream.Position := patternbase+102;
        //Sample 4
        Samplebanknumber:= D1Sample3.ItemIndex;
        BytesWrite:=Filestream.Write(Samplebanknumber,1);
        Pitch:=Round(D1Pitch3.Position)+64;
        BytesWrite:=Filestream.Write(Pitch,1);
        DLevel:=Round(D1Level3.Position);
        BytesWrite:=Filestream.Write(DLevel,1);
        DPan:=Round(D1Pan3.Position)+64;
        BytesWrite:=Filestream.Write(DPan,1);
        DEGTime:=Round(D1EGTime3.Position);
        BytesWrite:=Filestream.Write(DEGTime,1);
        FSSSRA:=0;
        If (D1AmpEGB3.checked) then FSSSRA:=FSSSRA+16;
        If (D1RollB3.checked) then FSSSRA:=FSSSRA+8;
        If (D1FXSend3.checked) then FSSSRA:=FSSSRA+4;
        FSSSRA:=FSSSRA+D1FXSelect3.ItemIndex;
        BytesWrite:=Filestream.Write(FSSSRA,1);

        MTDBS:=0;
        If (D1BPMSync3.checked) then MTDBS:=MTDBS+128;
        MTypeI := D1ModType3.ItemIndex;
        Case MTypeI of
             1 : MTDBS:=MTDBS+16;
             2 : MTDBS:=MTDBS+32;
             3 : MTDBS:=MTDBS+48;
             4 : MTDBS:=MTDBS+64;
             end;
        MTDBS:=MTDBS+D1ModDest3.ItemIndex;
        BytesWrite:=Filestream.Write(MTDBS,1);

        ModulationSpeed:=Round(D1ModSpeed3.Position);
        BytesWrite:=Filestream.Write(ModulationSpeed,1);
        ModulationDepth:=Round(D1ModDepth3.Position)+64;
        BytesWrite:=Filestream.Write(ModulationDepth,1);
        MotionSeqS:=D1MotionSeq3.ItemIndex;
        BytesWrite:=Filestream.Write(MotionSeqS,1);
        //Ende File
        FileStream.Free;
end;
procedure TMainForm.SaveDrum4Sequence(Patternbase: Integer);
var
  BytesWrite : Integer;
  FileStream : TFileStream;

begin

  FileStream := tFileStream.Create (filename,fmOpenWrite);
  FileStream.Position := patternbase+102+10;
        //The Pattern
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S385.checked)*1;
        DrumP := DrumP + BoolToInt(D1S386.checked)*2;
        DrumP := DrumP + BoolToInt(D1S387.checked)*4;
        DrumP := DrumP + BoolToInt(D1S388.checked)*8;
        DrumP := DrumP + BoolToInt(D1S389.checked)*16;
        DrumP := DrumP + BoolToInt(D1S390.checked)*32;
        DrumP := DrumP + BoolToInt(D1S391.checked)*64;
        DrumP := DrumP + BoolToInt(D1S392.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S393.checked)*1;
        DrumP := DrumP + BoolToInt(D1S394.checked)*2;
        DrumP := DrumP + BoolToInt(D1S395.checked)*4;
        DrumP := DrumP + BoolToInt(D1S396.checked)*8;
        DrumP := DrumP + BoolToInt(D1S397.checked)*16;
        DrumP := DrumP + BoolToInt(D1S398.checked)*32;
        DrumP := DrumP + BoolToInt(D1S399.checked)*64;
        DrumP := DrumP + BoolToInt(D1S400.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S401.checked)*1;
        DrumP := DrumP + BoolToInt(D1S402.checked)*2;
        DrumP := DrumP + BoolToInt(D1S403.checked)*4;
        DrumP := DrumP + BoolToInt(D1S404.checked)*8;
        DrumP := DrumP + BoolToInt(D1S405.checked)*16;
        DrumP := DrumP + BoolToInt(D1S406.checked)*32;
        DrumP := DrumP + BoolToInt(D1S407.checked)*64;
        DrumP := DrumP + BoolToInt(D1S408.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S409.checked)*1;
        DrumP := DrumP + BoolToInt(D1S410.checked)*2;
        DrumP := DrumP + BoolToInt(D1S411.checked)*4;
        DrumP := DrumP + BoolToInt(D1S412.checked)*8;
        DrumP := DrumP + BoolToInt(D1S413.checked)*16;
        DrumP := DrumP + BoolToInt(D1S414.checked)*32;
        DrumP := DrumP + BoolToInt(D1S415.checked)*64;
        DrumP := DrumP + BoolToInt(D1S416.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S417.checked)*1;
        DrumP := DrumP + BoolToInt(D1S418.checked)*2;
        DrumP := DrumP + BoolToInt(D1S419.checked)*4;
        DrumP := DrumP + BoolToInt(D1S420.checked)*8;
        DrumP := DrumP + BoolToInt(D1S421.checked)*16;
        DrumP := DrumP + BoolToInt(D1S422.checked)*32;
        DrumP := DrumP + BoolToInt(D1S423.checked)*64;
        DrumP := DrumP + BoolToInt(D1S424.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S425.checked)*1;
        DrumP := DrumP + BoolToInt(D1S426.checked)*2;
        DrumP := DrumP + BoolToInt(D1S427.checked)*4;
        DrumP := DrumP + BoolToInt(D1S428.checked)*8;
        DrumP := DrumP + BoolToInt(D1S429.checked)*16;
        DrumP := DrumP + BoolToInt(D1S430.checked)*32;
        DrumP := DrumP + BoolToInt(D1S431.checked)*64;
        DrumP := DrumP + BoolToInt(D1S432.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S433.checked)*1;
        DrumP := DrumP + BoolToInt(D1S434.checked)*2;
        DrumP := DrumP + BoolToInt(D1S435.checked)*4;
        DrumP := DrumP + BoolToInt(D1S436.checked)*8;
        DrumP := DrumP + BoolToInt(D1S437.checked)*16;
        DrumP := DrumP + BoolToInt(D1S438.checked)*32;
        DrumP := DrumP + BoolToInt(D1S439.checked)*64;
        DrumP := DrumP + BoolToInt(D1S440.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S441.checked)*1;
        DrumP := DrumP + BoolToInt(D1S442.checked)*2;
        DrumP := DrumP + BoolToInt(D1S443.checked)*4;
        DrumP := DrumP + BoolToInt(D1S444.checked)*8;
        DrumP := DrumP + BoolToInt(D1S445.checked)*16;
        DrumP := DrumP + BoolToInt(D1S446.checked)*32;
        DrumP := DrumP + BoolToInt(D1S447.checked)*64;
        DrumP := DrumP + BoolToInt(D1S448.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S449.checked)*1;
        DrumP := DrumP + BoolToInt(D1S450.checked)*2;
        DrumP := DrumP + BoolToInt(D1S451.checked)*4;
        DrumP := DrumP + BoolToInt(D1S452.checked)*8;
        DrumP := DrumP + BoolToInt(D1S453.checked)*16;
        DrumP := DrumP + BoolToInt(D1S454.checked)*32;
        DrumP := DrumP + BoolToInt(D1S455.checked)*64;
        DrumP := DrumP + BoolToInt(D1S456.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S457.checked)*1;
        DrumP := DrumP + BoolToInt(D1S458.checked)*2;
        DrumP := DrumP + BoolToInt(D1S459.checked)*4;
        DrumP := DrumP + BoolToInt(D1S460.checked)*8;
        DrumP := DrumP + BoolToInt(D1S461.checked)*16;
        DrumP := DrumP + BoolToInt(D1S462.checked)*32;
        DrumP := DrumP + BoolToInt(D1S463.checked)*64;
        DrumP := DrumP + BoolToInt(D1S464.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S465.checked)*1;
        DrumP := DrumP + BoolToInt(D1S466.checked)*2;
        DrumP := DrumP + BoolToInt(D1S467.checked)*4;
        DrumP := DrumP + BoolToInt(D1S468.checked)*8;
        DrumP := DrumP + BoolToInt(D1S469.checked)*16;
        DrumP := DrumP + BoolToInt(D1S470.checked)*32;
        DrumP := DrumP + BoolToInt(D1S471.checked)*64;
        DrumP := DrumP + BoolToInt(D1S472.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S473.checked)*1;
        DrumP := DrumP + BoolToInt(D1S474.checked)*2;
        DrumP := DrumP + BoolToInt(D1S475.checked)*4;
        DrumP := DrumP + BoolToInt(D1S476.checked)*8;
        DrumP := DrumP + BoolToInt(D1S477.checked)*16;
        DrumP := DrumP + BoolToInt(D1S478.checked)*32;
        DrumP := DrumP + BoolToInt(D1S479.checked)*64;
        DrumP := DrumP + BoolToInt(D1S480.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S481.checked)*1;
        DrumP := DrumP + BoolToInt(D1S482.checked)*2;
        DrumP := DrumP + BoolToInt(D1S483.checked)*4;
        DrumP := DrumP + BoolToInt(D1S484.checked)*8;
        DrumP := DrumP + BoolToInt(D1S485.checked)*16;
        DrumP := DrumP + BoolToInt(D1S486.checked)*32;
        DrumP := DrumP + BoolToInt(D1S487.checked)*64;
        DrumP := DrumP + BoolToInt(D1S488.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S489.checked)*1;
        DrumP := DrumP + BoolToInt(D1S490.checked)*2;
        DrumP := DrumP + BoolToInt(D1S491.checked)*4;
        DrumP := DrumP + BoolToInt(D1S492.checked)*8;
        DrumP := DrumP + BoolToInt(D1S493.checked)*16;
        DrumP := DrumP + BoolToInt(D1S494.checked)*32;
        DrumP := DrumP + BoolToInt(D1S495.checked)*64;
        DrumP := DrumP + BoolToInt(D1S496.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S497.checked)*1;
        DrumP := DrumP + BoolToInt(D1S498.checked)*2;
        DrumP := DrumP + BoolToInt(D1S499.checked)*4;
        DrumP := DrumP + BoolToInt(D1S500.checked)*8;
        DrumP := DrumP + BoolToInt(D1S501.checked)*16;
        DrumP := DrumP + BoolToInt(D1S502.checked)*32;
        DrumP := DrumP + BoolToInt(D1S503.checked)*64;
        DrumP := DrumP + BoolToInt(D1S504.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S505.checked)*1;
        DrumP := DrumP + BoolToInt(D1S506.checked)*2;
        DrumP := DrumP + BoolToInt(D1S507.checked)*4;
        DrumP := DrumP + BoolToInt(D1S508.checked)*8;
        DrumP := DrumP + BoolToInt(D1S509.checked)*16;
        DrumP := DrumP + BoolToInt(D1S510.checked)*32;
        DrumP := DrumP + BoolToInt(D1S511.checked)*64;
        DrumP := DrumP + BoolToInt(D1S512.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        //Ende File
        FileStream.Free;
end;
procedure TMainform.SaveDrum5Parameter(Patternbase: Integer);
var
  BytesWrite : Integer;
  FileStream : TFileStream;
  MTypeI:Integer;

begin

  FileStream := tFileStream.Create (filename,fmOpenWrite);
  FileStream.Position := patternbase+128;
        //Sample 5
        Samplebanknumber:= D1Sample4.ItemIndex;
        BytesWrite:=Filestream.Write(Samplebanknumber,1);
        Pitch:=Round(D1Pitch4.Position)+64;
        BytesWrite:=Filestream.Write(Pitch,1);
        DLevel:=Round(D1Level4.Position);
        BytesWrite:=Filestream.Write(DLevel,1);
        DPan:=Round(D1Pan4.Position)+64;
        BytesWrite:=Filestream.Write(DPan,1);
        DEGTime:=Round(D1EGTime4.Position);
        BytesWrite:=Filestream.Write(DEGTime,1);
        FSSSRA:=0;
        If (D1AmpEGB4.checked) then FSSSRA:=FSSSRA+16;
        If (D1RollB4.checked) then FSSSRA:=FSSSRA+8;
        If (D1FXSend4.checked) then FSSSRA:=FSSSRA+4;
        FSSSRA:=FSSSRA+D1FXSelect4.ItemIndex;
        BytesWrite:=Filestream.Write(FSSSRA,1);

        MTDBS:=0;
        If (D1BPMSync4.checked) then MTDBS:=MTDBS+128;
        MTypeI := D1ModType4.ItemIndex;
        Case MTypeI of
             1 : MTDBS:=MTDBS+16;
             2 : MTDBS:=MTDBS+32;
             3 : MTDBS:=MTDBS+48;
             4 : MTDBS:=MTDBS+64;
             end;
        MTDBS:=MTDBS+D1ModDest4.ItemIndex;
        BytesWrite:=Filestream.Write(MTDBS,1);

        ModulationSpeed:=Round(D1ModSpeed4.Position);
        BytesWrite:=Filestream.Write(ModulationSpeed,1);
        ModulationDepth:=Round(D1ModDepth4.Position)+64;
        BytesWrite:=Filestream.Write(ModulationDepth,1);
        MotionSeqS:=D1MotionSeq4.ItemIndex;
        BytesWrite:=Filestream.Write(MotionSeqS,1);
        //Ende File
        FileStream.Free;
end;
procedure TMainForm.SaveDrum5Sequence(Patternbase: Integer);
var
  BytesWrite : Integer;
  FileStream : TFileStream;

begin

  FileStream := tFileStream.Create (filename,fmOpenWrite);
  FileStream.Position := patternbase+128+10;
        //The Pattern
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S513.checked)*1;
        DrumP := DrumP + BoolToInt(D1S514.checked)*2;
        DrumP := DrumP + BoolToInt(D1S515.checked)*4;
        DrumP := DrumP + BoolToInt(D1S516.checked)*8;
        DrumP := DrumP + BoolToInt(D1S517.checked)*16;
        DrumP := DrumP + BoolToInt(D1S518.checked)*32;
        DrumP := DrumP + BoolToInt(D1S519.checked)*64;
        DrumP := DrumP + BoolToInt(D1S520.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S521.checked)*1;
        DrumP := DrumP + BoolToInt(D1S522.checked)*2;
        DrumP := DrumP + BoolToInt(D1S523.checked)*4;
        DrumP := DrumP + BoolToInt(D1S524.checked)*8;
        DrumP := DrumP + BoolToInt(D1S525.checked)*16;
        DrumP := DrumP + BoolToInt(D1S526.checked)*32;
        DrumP := DrumP + BoolToInt(D1S527.checked)*64;
        DrumP := DrumP + BoolToInt(D1S528.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S529.checked)*1;
        DrumP := DrumP + BoolToInt(D1S530.checked)*2;
        DrumP := DrumP + BoolToInt(D1S531.checked)*4;
        DrumP := DrumP + BoolToInt(D1S532.checked)*8;
        DrumP := DrumP + BoolToInt(D1S533.checked)*16;
        DrumP := DrumP + BoolToInt(D1S534.checked)*32;
        DrumP := DrumP + BoolToInt(D1S535.checked)*64;
        DrumP := DrumP + BoolToInt(D1S536.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S537.checked)*1;
        DrumP := DrumP + BoolToInt(D1S538.checked)*2;
        DrumP := DrumP + BoolToInt(D1S539.checked)*4;
        DrumP := DrumP + BoolToInt(D1S540.checked)*8;
        DrumP := DrumP + BoolToInt(D1S541.checked)*16;
        DrumP := DrumP + BoolToInt(D1S542.checked)*32;
        DrumP := DrumP + BoolToInt(D1S543.checked)*64;
        DrumP := DrumP + BoolToInt(D1S544.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S545.checked)*1;
        DrumP := DrumP + BoolToInt(D1S546.checked)*2;
        DrumP := DrumP + BoolToInt(D1S547.checked)*4;
        DrumP := DrumP + BoolToInt(D1S548.checked)*8;
        DrumP := DrumP + BoolToInt(D1S549.checked)*16;
        DrumP := DrumP + BoolToInt(D1S550.checked)*32;
        DrumP := DrumP + BoolToInt(D1S551.checked)*64;
        DrumP := DrumP + BoolToInt(D1S552.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S553.checked)*1;
        DrumP := DrumP + BoolToInt(D1S554.checked)*2;
        DrumP := DrumP + BoolToInt(D1S555.checked)*4;
        DrumP := DrumP + BoolToInt(D1S556.checked)*8;
        DrumP := DrumP + BoolToInt(D1S557.checked)*16;
        DrumP := DrumP + BoolToInt(D1S558.checked)*32;
        DrumP := DrumP + BoolToInt(D1S559.checked)*64;
        DrumP := DrumP + BoolToInt(D1S560.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S561.checked)*1;
        DrumP := DrumP + BoolToInt(D1S562.checked)*2;
        DrumP := DrumP + BoolToInt(D1S563.checked)*4;
        DrumP := DrumP + BoolToInt(D1S564.checked)*8;
        DrumP := DrumP + BoolToInt(D1S565.checked)*16;
        DrumP := DrumP + BoolToInt(D1S566.checked)*32;
        DrumP := DrumP + BoolToInt(D1S567.checked)*64;
        DrumP := DrumP + BoolToInt(D1S568.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S569.checked)*1;
        DrumP := DrumP + BoolToInt(D1S570.checked)*2;
        DrumP := DrumP + BoolToInt(D1S571.checked)*4;
        DrumP := DrumP + BoolToInt(D1S572.checked)*8;
        DrumP := DrumP + BoolToInt(D1S573.checked)*16;
        DrumP := DrumP + BoolToInt(D1S574.checked)*32;
        DrumP := DrumP + BoolToInt(D1S575.checked)*64;
        DrumP := DrumP + BoolToInt(D1S576.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S577.checked)*1;
        DrumP := DrumP + BoolToInt(D1S578.checked)*2;
        DrumP := DrumP + BoolToInt(D1S579.checked)*4;
        DrumP := DrumP + BoolToInt(D1S580.checked)*8;
        DrumP := DrumP + BoolToInt(D1S581.checked)*16;
        DrumP := DrumP + BoolToInt(D1S582.checked)*32;
        DrumP := DrumP + BoolToInt(D1S583.checked)*64;
        DrumP := DrumP + BoolToInt(D1S584.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S585.checked)*1;
        DrumP := DrumP + BoolToInt(D1S586.checked)*2;
        DrumP := DrumP + BoolToInt(D1S587.checked)*4;
        DrumP := DrumP + BoolToInt(D1S588.checked)*8;
        DrumP := DrumP + BoolToInt(D1S589.checked)*16;
        DrumP := DrumP + BoolToInt(D1S590.checked)*32;
        DrumP := DrumP + BoolToInt(D1S591.checked)*64;
        DrumP := DrumP + BoolToInt(D1S592.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S593.checked)*1;
        DrumP := DrumP + BoolToInt(D1S594.checked)*2;
        DrumP := DrumP + BoolToInt(D1S595.checked)*4;
        DrumP := DrumP + BoolToInt(D1S596.checked)*8;
        DrumP := DrumP + BoolToInt(D1S597.checked)*16;
        DrumP := DrumP + BoolToInt(D1S598.checked)*32;
        DrumP := DrumP + BoolToInt(D1S599.checked)*64;
        DrumP := DrumP + BoolToInt(D1S600.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S601.checked)*1;
        DrumP := DrumP + BoolToInt(D1S602.checked)*2;
        DrumP := DrumP + BoolToInt(D1S603.checked)*4;
        DrumP := DrumP + BoolToInt(D1S604.checked)*8;
        DrumP := DrumP + BoolToInt(D1S605.checked)*16;
        DrumP := DrumP + BoolToInt(D1S606.checked)*32;
        DrumP := DrumP + BoolToInt(D1S607.checked)*64;
        DrumP := DrumP + BoolToInt(D1S608.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S609.checked)*1;
        DrumP := DrumP + BoolToInt(D1S610.checked)*2;
        DrumP := DrumP + BoolToInt(D1S611.checked)*4;
        DrumP := DrumP + BoolToInt(D1S612.checked)*8;
        DrumP := DrumP + BoolToInt(D1S613.checked)*16;
        DrumP := DrumP + BoolToInt(D1S614.checked)*32;
        DrumP := DrumP + BoolToInt(D1S615.checked)*64;
        DrumP := DrumP + BoolToInt(D1S616.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S617.checked)*1;
        DrumP := DrumP + BoolToInt(D1S618.checked)*2;
        DrumP := DrumP + BoolToInt(D1S619.checked)*4;
        DrumP := DrumP + BoolToInt(D1S620.checked)*8;
        DrumP := DrumP + BoolToInt(D1S621.checked)*16;
        DrumP := DrumP + BoolToInt(D1S622.checked)*32;
        DrumP := DrumP + BoolToInt(D1S623.checked)*64;
        DrumP := DrumP + BoolToInt(D1S624.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S625.checked)*1;
        DrumP := DrumP + BoolToInt(D1S626.checked)*2;
        DrumP := DrumP + BoolToInt(D1S627.checked)*4;
        DrumP := DrumP + BoolToInt(D1S628.checked)*8;
        DrumP := DrumP + BoolToInt(D1S629.checked)*16;
        DrumP := DrumP + BoolToInt(D1S630.checked)*32;
        DrumP := DrumP + BoolToInt(D1S631.checked)*64;
        DrumP := DrumP + BoolToInt(D1S632.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S633.checked)*1;
        DrumP := DrumP + BoolToInt(D1S634.checked)*2;
        DrumP := DrumP + BoolToInt(D1S635.checked)*4;
        DrumP := DrumP + BoolToInt(D1S636.checked)*8;
        DrumP := DrumP + BoolToInt(D1S637.checked)*16;
        DrumP := DrumP + BoolToInt(D1S638.checked)*32;
        DrumP := DrumP + BoolToInt(D1S639.checked)*64;
        DrumP := DrumP + BoolToInt(D1S640.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        //Ende File
        FileStream.Free;
end;
procedure TMainForm.SaveDrum6AParameter(Patternbase: Integer);
var
  BytesWrite : Integer;
  FileStream : TFileStream;
  MTypeI:Integer;

begin

  FileStream := tFileStream.Create (filename,fmOpenWrite);
  FileStream.Position := patternbase+154;
        //Sample 6A
        Samplebanknumber:= D1Sample5.ItemIndex;
        BytesWrite:=Filestream.Write(Samplebanknumber,1);
        Pitch:=Round(D1Pitch5.Position)+64;
        BytesWrite:=Filestream.Write(Pitch,1);
        DLevel:=Round(D1Level5.Position);
        BytesWrite:=Filestream.Write(DLevel,1);
        DPan:=Round(D1Pan5.Position)+64;
        BytesWrite:=Filestream.Write(DPan,1);
        DEGTime:=Round(D1EGTime5.Position);
        BytesWrite:=Filestream.Write(DEGTime,1);
        FSSSRA:=0;
        If (D1AmpEGB5.checked) then FSSSRA:=FSSSRA+16;
        If (D1RollB5.checked) then FSSSRA:=FSSSRA+8;
        If (D1FXSend5.checked) then FSSSRA:=FSSSRA+4;
        FSSSRA:=FSSSRA+D1FXSelect5.ItemIndex;
        BytesWrite:=Filestream.Write(FSSSRA,1);

        MTDBS:=0;
        If (D1BPMSync5.checked) then MTDBS:=MTDBS+128;
        MTypeI := D1ModType5.ItemIndex;
        Case MTypeI of
             1 : MTDBS:=MTDBS+16;
             2 : MTDBS:=MTDBS+32;
             3 : MTDBS:=MTDBS+48;
             4 : MTDBS:=MTDBS+64;
             end;
        MTDBS:=MTDBS+D1ModDest5.ItemIndex;
        BytesWrite:=Filestream.Write(MTDBS,1);

        ModulationSpeed:=Round(D1ModSpeed5.Position);
        BytesWrite:=Filestream.Write(ModulationSpeed,1);
        ModulationDepth:=Round(D1ModDepth5.Position)+64;
        BytesWrite:=Filestream.Write(ModulationDepth,1);
        MotionSeqS:=D1MotionSeq5.ItemIndex;
        BytesWrite:=Filestream.Write(MotionSeqS,1);
        //Ende File
        FileStream.Free;
end;
procedure TMainForm.SaveDrum6ASequence(Patternbase: Integer);
var
  BytesWrite : Integer;
  FileStream : TFileStream;

begin

  FileStream := tFileStream.Create (filename,fmOpenWrite);
  FileStream.Position := patternbase+154+10;
        //The Pattern
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S641.checked)*1;
        DrumP := DrumP + BoolToInt(D1S642.checked)*2;
        DrumP := DrumP + BoolToInt(D1S643.checked)*4;
        DrumP := DrumP + BoolToInt(D1S644.checked)*8;
        DrumP := DrumP + BoolToInt(D1S645.checked)*16;
        DrumP := DrumP + BoolToInt(D1S646.checked)*32;
        DrumP := DrumP + BoolToInt(D1S647.checked)*64;
        DrumP := DrumP + BoolToInt(D1S648.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S649.checked)*1;
        DrumP := DrumP + BoolToInt(D1S650.checked)*2;
        DrumP := DrumP + BoolToInt(D1S651.checked)*4;
        DrumP := DrumP + BoolToInt(D1S652.checked)*8;
        DrumP := DrumP + BoolToInt(D1S653.checked)*16;
        DrumP := DrumP + BoolToInt(D1S654.checked)*32;
        DrumP := DrumP + BoolToInt(D1S655.checked)*64;
        DrumP := DrumP + BoolToInt(D1S656.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S657.checked)*1;
        DrumP := DrumP + BoolToInt(D1S658.checked)*2;
        DrumP := DrumP + BoolToInt(D1S659.checked)*4;
        DrumP := DrumP + BoolToInt(D1S660.checked)*8;
        DrumP := DrumP + BoolToInt(D1S661.checked)*16;
        DrumP := DrumP + BoolToInt(D1S662.checked)*32;
        DrumP := DrumP + BoolToInt(D1S663.checked)*64;
        DrumP := DrumP + BoolToInt(D1S664.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S665.checked)*1;
        DrumP := DrumP + BoolToInt(D1S666.checked)*2;
        DrumP := DrumP + BoolToInt(D1S667.checked)*4;
        DrumP := DrumP + BoolToInt(D1S668.checked)*8;
        DrumP := DrumP + BoolToInt(D1S669.checked)*16;
        DrumP := DrumP + BoolToInt(D1S670.checked)*32;
        DrumP := DrumP + BoolToInt(D1S671.checked)*64;
        DrumP := DrumP + BoolToInt(D1S672.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S673.checked)*1;
        DrumP := DrumP + BoolToInt(D1S674.checked)*2;
        DrumP := DrumP + BoolToInt(D1S675.checked)*4;
        DrumP := DrumP + BoolToInt(D1S676.checked)*8;
        DrumP := DrumP + BoolToInt(D1S677.checked)*16;
        DrumP := DrumP + BoolToInt(D1S678.checked)*32;
        DrumP := DrumP + BoolToInt(D1S679.checked)*64;
        DrumP := DrumP + BoolToInt(D1S680.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S681.checked)*1;
        DrumP := DrumP + BoolToInt(D1S682.checked)*2;
        DrumP := DrumP + BoolToInt(D1S683.checked)*4;
        DrumP := DrumP + BoolToInt(D1S684.checked)*8;
        DrumP := DrumP + BoolToInt(D1S685.checked)*16;
        DrumP := DrumP + BoolToInt(D1S686.checked)*32;
        DrumP := DrumP + BoolToInt(D1S687.checked)*64;
        DrumP := DrumP + BoolToInt(D1S688.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S689.checked)*1;
        DrumP := DrumP + BoolToInt(D1S690.checked)*2;
        DrumP := DrumP + BoolToInt(D1S691.checked)*4;
        DrumP := DrumP + BoolToInt(D1S692.checked)*8;
        DrumP := DrumP + BoolToInt(D1S693.checked)*16;
        DrumP := DrumP + BoolToInt(D1S694.checked)*32;
        DrumP := DrumP + BoolToInt(D1S695.checked)*64;
        DrumP := DrumP + BoolToInt(D1S696.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S697.checked)*1;
        DrumP := DrumP + BoolToInt(D1S698.checked)*2;
        DrumP := DrumP + BoolToInt(D1S699.checked)*4;
        DrumP := DrumP + BoolToInt(D1S700.checked)*8;
        DrumP := DrumP + BoolToInt(D1S701.checked)*16;
        DrumP := DrumP + BoolToInt(D1S702.checked)*32;
        DrumP := DrumP + BoolToInt(D1S703.checked)*64;
        DrumP := DrumP + BoolToInt(D1S704.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S705.checked)*1;
        DrumP := DrumP + BoolToInt(D1S706.checked)*2;
        DrumP := DrumP + BoolToInt(D1S707.checked)*4;
        DrumP := DrumP + BoolToInt(D1S708.checked)*8;
        DrumP := DrumP + BoolToInt(D1S709.checked)*16;
        DrumP := DrumP + BoolToInt(D1S710.checked)*32;
        DrumP := DrumP + BoolToInt(D1S711.checked)*64;
        DrumP := DrumP + BoolToInt(D1S712.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S713.checked)*1;
        DrumP := DrumP + BoolToInt(D1S714.checked)*2;
        DrumP := DrumP + BoolToInt(D1S715.checked)*4;
        DrumP := DrumP + BoolToInt(D1S716.checked)*8;
        DrumP := DrumP + BoolToInt(D1S717.checked)*16;
        DrumP := DrumP + BoolToInt(D1S718.checked)*32;
        DrumP := DrumP + BoolToInt(D1S719.checked)*64;
        DrumP := DrumP + BoolToInt(D1S720.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S721.checked)*1;
        DrumP := DrumP + BoolToInt(D1S722.checked)*2;
        DrumP := DrumP + BoolToInt(D1S723.checked)*4;
        DrumP := DrumP + BoolToInt(D1S724.checked)*8;
        DrumP := DrumP + BoolToInt(D1S725.checked)*16;
        DrumP := DrumP + BoolToInt(D1S726.checked)*32;
        DrumP := DrumP + BoolToInt(D1S727.checked)*64;
        DrumP := DrumP + BoolToInt(D1S728.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S729.checked)*1;
        DrumP := DrumP + BoolToInt(D1S730.checked)*2;
        DrumP := DrumP + BoolToInt(D1S731.checked)*4;
        DrumP := DrumP + BoolToInt(D1S732.checked)*8;
        DrumP := DrumP + BoolToInt(D1S733.checked)*16;
        DrumP := DrumP + BoolToInt(D1S734.checked)*32;
        DrumP := DrumP + BoolToInt(D1S735.checked)*64;
        DrumP := DrumP + BoolToInt(D1S736.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S737.checked)*1;
        DrumP := DrumP + BoolToInt(D1S738.checked)*2;
        DrumP := DrumP + BoolToInt(D1S739.checked)*4;
        DrumP := DrumP + BoolToInt(D1S740.checked)*8;
        DrumP := DrumP + BoolToInt(D1S741.checked)*16;
        DrumP := DrumP + BoolToInt(D1S742.checked)*32;
        DrumP := DrumP + BoolToInt(D1S743.checked)*64;
        DrumP := DrumP + BoolToInt(D1S744.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S745.checked)*1;
        DrumP := DrumP + BoolToInt(D1S746.checked)*2;
        DrumP := DrumP + BoolToInt(D1S747.checked)*4;
        DrumP := DrumP + BoolToInt(D1S748.checked)*8;
        DrumP := DrumP + BoolToInt(D1S749.checked)*16;
        DrumP := DrumP + BoolToInt(D1S750.checked)*32;
        DrumP := DrumP + BoolToInt(D1S751.checked)*64;
        DrumP := DrumP + BoolToInt(D1S752.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S753.checked)*1;
        DrumP := DrumP + BoolToInt(D1S754.checked)*2;
        DrumP := DrumP + BoolToInt(D1S755.checked)*4;
        DrumP := DrumP + BoolToInt(D1S756.checked)*8;
        DrumP := DrumP + BoolToInt(D1S757.checked)*16;
        DrumP := DrumP + BoolToInt(D1S758.checked)*32;
        DrumP := DrumP + BoolToInt(D1S759.checked)*64;
        DrumP := DrumP + BoolToInt(D1S760.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S761.checked)*1;
        DrumP := DrumP + BoolToInt(D1S762.checked)*2;
        DrumP := DrumP + BoolToInt(D1S763.checked)*4;
        DrumP := DrumP + BoolToInt(D1S764.checked)*8;
        DrumP := DrumP + BoolToInt(D1S765.checked)*16;
        DrumP := DrumP + BoolToInt(D1S766.checked)*32;
        DrumP := DrumP + BoolToInt(D1S767.checked)*64;
        DrumP := DrumP + BoolToInt(D1S768.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        //Ende File
        FileStream.Free;
end;
procedure TMainForm.SaveDrum6BParameter(Patternbase: Integer);
var
  BytesWrite : Integer;
  FileStream : TFileStream;
  MTypeI:Integer;

begin

  FileStream := tFileStream.Create (filename,fmOpenWrite);
  FileStream.Position := patternbase+180;
        //Sample 6B
        Samplebanknumber:= D1Sample6.ItemIndex;
        BytesWrite:=Filestream.Write(Samplebanknumber,1);
        Pitch:=Round(D1Pitch6.Position)+64;
        BytesWrite:=Filestream.Write(Pitch,1);
        DLevel:=Round(D1Level6.Position);
        BytesWrite:=Filestream.Write(DLevel,1);
        DPan:=Round(D1Pan6.Position)+64;
        BytesWrite:=Filestream.Write(DPan,1);
        DEGTime:=Round(D1EGTime6.Position);
        BytesWrite:=Filestream.Write(DEGTime,1);
        FSSSRA:=0;
        If (D1AmpEGB6.checked) then FSSSRA:=FSSSRA+16;
        If (D1RollB6.checked) then FSSSRA:=FSSSRA+8;
        If (D1FXSend6.checked) then FSSSRA:=FSSSRA+4;
        FSSSRA:=FSSSRA+D1FXSelect6.ItemIndex;
        BytesWrite:=Filestream.Write(FSSSRA,1);

        MTDBS:=0;
        If (D1BPMSync6.checked) then MTDBS:=MTDBS+128;
        MTypeI := D1ModType6.ItemIndex;
        Case MTypeI of
             1 : MTDBS:=MTDBS+16;
             2 : MTDBS:=MTDBS+32;
             3 : MTDBS:=MTDBS+48;
             4 : MTDBS:=MTDBS+64;
             end;
        MTDBS:=MTDBS+D1ModDest6.ItemIndex;
        BytesWrite:=Filestream.Write(MTDBS,1);

        ModulationSpeed:=Round(D1ModSpeed6.Position);
        BytesWrite:=Filestream.Write(ModulationSpeed,1);
        ModulationDepth:=Round(D1ModDepth6.Position)+64;
        BytesWrite:=Filestream.Write(ModulationDepth,1);
        MotionSeqS:=D1MotionSeq6.ItemIndex;
        BytesWrite:=Filestream.Write(MotionSeqS,1);
        //Ende File
        FileStream.Free;
end;
procedure TMainform.SaveDrum6BSequence(Patternbase: Integer);
var
  BytesWrite : Integer;
  FileStream : TFileStream;

begin

  FileStream := tFileStream.Create (filename,fmOpenWrite);
  FileStream.Position := patternbase+180+10;
        //The Pattern
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S769.checked)*1;
        DrumP := DrumP + BoolToInt(D1S770.checked)*2;
        DrumP := DrumP + BoolToInt(D1S771.checked)*4;
        DrumP := DrumP + BoolToInt(D1S772.checked)*8;
        DrumP := DrumP + BoolToInt(D1S773.checked)*16;
        DrumP := DrumP + BoolToInt(D1S774.checked)*32;
        DrumP := DrumP + BoolToInt(D1S775.checked)*64;
        DrumP := DrumP + BoolToInt(D1S776.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S777.checked)*1;
        DrumP := DrumP + BoolToInt(D1S778.checked)*2;
        DrumP := DrumP + BoolToInt(D1S779.checked)*4;
        DrumP := DrumP + BoolToInt(D1S780.checked)*8;
        DrumP := DrumP + BoolToInt(D1S781.checked)*16;
        DrumP := DrumP + BoolToInt(D1S782.checked)*32;
        DrumP := DrumP + BoolToInt(D1S783.checked)*64;
        DrumP := DrumP + BoolToInt(D1S784.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S785.checked)*1;
        DrumP := DrumP + BoolToInt(D1S786.checked)*2;
        DrumP := DrumP + BoolToInt(D1S787.checked)*4;
        DrumP := DrumP + BoolToInt(D1S788.checked)*8;
        DrumP := DrumP + BoolToInt(D1S789.checked)*16;
        DrumP := DrumP + BoolToInt(D1S790.checked)*32;
        DrumP := DrumP + BoolToInt(D1S791.checked)*64;
        DrumP := DrumP + BoolToInt(D1S792.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S793.checked)*1;
        DrumP := DrumP + BoolToInt(D1S794.checked)*2;
        DrumP := DrumP + BoolToInt(D1S795.checked)*4;
        DrumP := DrumP + BoolToInt(D1S796.checked)*8;
        DrumP := DrumP + BoolToInt(D1S797.checked)*16;
        DrumP := DrumP + BoolToInt(D1S798.checked)*32;
        DrumP := DrumP + BoolToInt(D1S799.checked)*64;
        DrumP := DrumP + BoolToInt(D1S800.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S801.checked)*1;
        DrumP := DrumP + BoolToInt(D1S802.checked)*2;
        DrumP := DrumP + BoolToInt(D1S803.checked)*4;
        DrumP := DrumP + BoolToInt(D1S804.checked)*8;
        DrumP := DrumP + BoolToInt(D1S805.checked)*16;
        DrumP := DrumP + BoolToInt(D1S806.checked)*32;
        DrumP := DrumP + BoolToInt(D1S807.checked)*64;
        DrumP := DrumP + BoolToInt(D1S808.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S809.checked)*1;
        DrumP := DrumP + BoolToInt(D1S810.checked)*2;
        DrumP := DrumP + BoolToInt(D1S811.checked)*4;
        DrumP := DrumP + BoolToInt(D1S812.checked)*8;
        DrumP := DrumP + BoolToInt(D1S813.checked)*16;
        DrumP := DrumP + BoolToInt(D1S814.checked)*32;
        DrumP := DrumP + BoolToInt(D1S815.checked)*64;
        DrumP := DrumP + BoolToInt(D1S816.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S817.checked)*1;
        DrumP := DrumP + BoolToInt(D1S818.checked)*2;
        DrumP := DrumP + BoolToInt(D1S819.checked)*4;
        DrumP := DrumP + BoolToInt(D1S820.checked)*8;
        DrumP := DrumP + BoolToInt(D1S821.checked)*16;
        DrumP := DrumP + BoolToInt(D1S822.checked)*32;
        DrumP := DrumP + BoolToInt(D1S823.checked)*64;
        DrumP := DrumP + BoolToInt(D1S824.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S825.checked)*1;
        DrumP := DrumP + BoolToInt(D1S826.checked)*2;
        DrumP := DrumP + BoolToInt(D1S827.checked)*4;
        DrumP := DrumP + BoolToInt(D1S828.checked)*8;
        DrumP := DrumP + BoolToInt(D1S829.checked)*16;
        DrumP := DrumP + BoolToInt(D1S830.checked)*32;
        DrumP := DrumP + BoolToInt(D1S831.checked)*64;
        DrumP := DrumP + BoolToInt(D1S832.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S833.checked)*1;
        DrumP := DrumP + BoolToInt(D1S834.checked)*2;
        DrumP := DrumP + BoolToInt(D1S835.checked)*4;
        DrumP := DrumP + BoolToInt(D1S836.checked)*8;
        DrumP := DrumP + BoolToInt(D1S837.checked)*16;
        DrumP := DrumP + BoolToInt(D1S838.checked)*32;
        DrumP := DrumP + BoolToInt(D1S839.checked)*64;
        DrumP := DrumP + BoolToInt(D1S840.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S841.checked)*1;
        DrumP := DrumP + BoolToInt(D1S842.checked)*2;
        DrumP := DrumP + BoolToInt(D1S843.checked)*4;
        DrumP := DrumP + BoolToInt(D1S844.checked)*8;
        DrumP := DrumP + BoolToInt(D1S845.checked)*16;
        DrumP := DrumP + BoolToInt(D1S846.checked)*32;
        DrumP := DrumP + BoolToInt(D1S847.checked)*64;
        DrumP := DrumP + BoolToInt(D1S848.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S849.checked)*1;
        DrumP := DrumP + BoolToInt(D1S850.checked)*2;
        DrumP := DrumP + BoolToInt(D1S851.checked)*4;
        DrumP := DrumP + BoolToInt(D1S852.checked)*8;
        DrumP := DrumP + BoolToInt(D1S853.checked)*16;
        DrumP := DrumP + BoolToInt(D1S854.checked)*32;
        DrumP := DrumP + BoolToInt(D1S855.checked)*64;
        DrumP := DrumP + BoolToInt(D1S856.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S857.checked)*1;
        DrumP := DrumP + BoolToInt(D1S858.checked)*2;
        DrumP := DrumP + BoolToInt(D1S859.checked)*4;
        DrumP := DrumP + BoolToInt(D1S860.checked)*8;
        DrumP := DrumP + BoolToInt(D1S861.checked)*16;
        DrumP := DrumP + BoolToInt(D1S862.checked)*32;
        DrumP := DrumP + BoolToInt(D1S863.checked)*64;
        DrumP := DrumP + BoolToInt(D1S864.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S865.checked)*1;
        DrumP := DrumP + BoolToInt(D1S866.checked)*2;
        DrumP := DrumP + BoolToInt(D1S867.checked)*4;
        DrumP := DrumP + BoolToInt(D1S868.checked)*8;
        DrumP := DrumP + BoolToInt(D1S869.checked)*16;
        DrumP := DrumP + BoolToInt(D1S870.checked)*32;
        DrumP := DrumP + BoolToInt(D1S871.checked)*64;
        DrumP := DrumP + BoolToInt(D1S872.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S873.checked)*1;
        DrumP := DrumP + BoolToInt(D1S874.checked)*2;
        DrumP := DrumP + BoolToInt(D1S875.checked)*4;
        DrumP := DrumP + BoolToInt(D1S876.checked)*8;
        DrumP := DrumP + BoolToInt(D1S877.checked)*16;
        DrumP := DrumP + BoolToInt(D1S878.checked)*32;
        DrumP := DrumP + BoolToInt(D1S879.checked)*64;
        DrumP := DrumP + BoolToInt(D1S880.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S881.checked)*1;
        DrumP := DrumP + BoolToInt(D1S882.checked)*2;
        DrumP := DrumP + BoolToInt(D1S883.checked)*4;
        DrumP := DrumP + BoolToInt(D1S884.checked)*8;
        DrumP := DrumP + BoolToInt(D1S885.checked)*16;
        DrumP := DrumP + BoolToInt(D1S886.checked)*32;
        DrumP := DrumP + BoolToInt(D1S887.checked)*64;
        DrumP := DrumP + BoolToInt(D1S888.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S889.checked)*1;
        DrumP := DrumP + BoolToInt(D1S890.checked)*2;
        DrumP := DrumP + BoolToInt(D1S891.checked)*4;
        DrumP := DrumP + BoolToInt(D1S892.checked)*8;
        DrumP := DrumP + BoolToInt(D1S893.checked)*16;
        DrumP := DrumP + BoolToInt(D1S894.checked)*32;
        DrumP := DrumP + BoolToInt(D1S895.checked)*64;
        DrumP := DrumP + BoolToInt(D1S896.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        //Ende File
        FileStream.Free;
end;
procedure TMainForm.SaveDrum7AParameter(Patternbase: Integer);
var
  BytesWrite : Integer;
  FileStream : TFileStream;
  MTypeI:Integer;

begin

  FileStream := tFileStream.Create (filename,fmOpenWrite);
  FileStream.Position := patternbase+206;
        //Sample 7A
        Samplebanknumber:= D1Sample7.ItemIndex;
        BytesWrite:=Filestream.Write(Samplebanknumber,1);
        Pitch:=Round(D1Pitch7.Position)+64;
        BytesWrite:=Filestream.Write(Pitch,1);
        DLevel:=Round(D1Level7.Position);
        BytesWrite:=Filestream.Write(DLevel,1);
        DPan:=Round(D1Pan7.Position)+64;
        BytesWrite:=Filestream.Write(DPan,1);
        DEGTime:=Round(D1EGTime7.Position);
        BytesWrite:=Filestream.Write(DEGTime,1);
        FSSSRA:=0;
        If (D1AmpEGB7.checked) then FSSSRA:=FSSSRA+16;
        If (D1RollB7.checked) then FSSSRA:=FSSSRA+8;
        If (D1FXSend7.checked) then FSSSRA:=FSSSRA+4;
        FSSSRA:=FSSSRA+D1FXSelect7.ItemIndex;
        BytesWrite:=Filestream.Write(FSSSRA,1);

        MTDBS:=0;
        If (D1BPMSync7.checked) then MTDBS:=MTDBS+128;
        MTypeI := D1ModType7.ItemIndex;
        Case MTypeI of
             1 : MTDBS:=MTDBS+16;
             2 : MTDBS:=MTDBS+32;
             3 : MTDBS:=MTDBS+48;
             4 : MTDBS:=MTDBS+64;
             end;
        MTDBS:=MTDBS+D1ModDest7.ItemIndex;
        BytesWrite:=Filestream.Write(MTDBS,1);

        ModulationSpeed:=Round(D1ModSpeed7.Position);
        BytesWrite:=Filestream.Write(ModulationSpeed,1);
        ModulationDepth:=Round(D1ModDepth7.Position)+64;
        BytesWrite:=Filestream.Write(ModulationDepth,1);
        MotionSeqS:=D1MotionSeq7.ItemIndex;
        BytesWrite:=Filestream.Write(MotionSeqS,1);
        //Ende File
        FileStream.Free;
end;
procedure TMainForm.SaveDrum7ASequence(Patternbase: Integer);
var
  BytesWrite : Integer;
  FileStream : TFileStream;

begin

  FileStream := tFileStream.Create (filename,fmOpenWrite);
  FileStream.Position := patternbase+206+10;
        //The Pattern
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S897.checked)*1;
        DrumP := DrumP + BoolToInt(D1S898.checked)*2;
        DrumP := DrumP + BoolToInt(D1S899.checked)*4;
        DrumP := DrumP + BoolToInt(D1S900.checked)*8;
        DrumP := DrumP + BoolToInt(D1S901.checked)*16;
        DrumP := DrumP + BoolToInt(D1S902.checked)*32;
        DrumP := DrumP + BoolToInt(D1S903.checked)*64;
        DrumP := DrumP + BoolToInt(D1S904.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S905.checked)*1;
        DrumP := DrumP + BoolToInt(D1S906.checked)*2;
        DrumP := DrumP + BoolToInt(D1S907.checked)*4;
        DrumP := DrumP + BoolToInt(D1S908.checked)*8;
        DrumP := DrumP + BoolToInt(D1S909.checked)*16;
        DrumP := DrumP + BoolToInt(D1S910.checked)*32;
        DrumP := DrumP + BoolToInt(D1S911.checked)*64;
        DrumP := DrumP + BoolToInt(D1S912.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S913.checked)*1;
        DrumP := DrumP + BoolToInt(D1S914.checked)*2;
        DrumP := DrumP + BoolToInt(D1S915.checked)*4;
        DrumP := DrumP + BoolToInt(D1S916.checked)*8;
        DrumP := DrumP + BoolToInt(D1S917.checked)*16;
        DrumP := DrumP + BoolToInt(D1S918.checked)*32;
        DrumP := DrumP + BoolToInt(D1S919.checked)*64;
        DrumP := DrumP + BoolToInt(D1S920.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S921.checked)*1;
        DrumP := DrumP + BoolToInt(D1S922.checked)*2;
        DrumP := DrumP + BoolToInt(D1S923.checked)*4;
        DrumP := DrumP + BoolToInt(D1S924.checked)*8;
        DrumP := DrumP + BoolToInt(D1S925.checked)*16;
        DrumP := DrumP + BoolToInt(D1S926.checked)*32;
        DrumP := DrumP + BoolToInt(D1S927.checked)*64;
        DrumP := DrumP + BoolToInt(D1S928.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S929.checked)*1;
        DrumP := DrumP + BoolToInt(D1S930.checked)*2;
        DrumP := DrumP + BoolToInt(D1S931.checked)*4;
        DrumP := DrumP + BoolToInt(D1S932.checked)*8;
        DrumP := DrumP + BoolToInt(D1S933.checked)*16;
        DrumP := DrumP + BoolToInt(D1S934.checked)*32;
        DrumP := DrumP + BoolToInt(D1S935.checked)*64;
        DrumP := DrumP + BoolToInt(D1S936.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S937.checked)*1;
        DrumP := DrumP + BoolToInt(D1S938.checked)*2;
        DrumP := DrumP + BoolToInt(D1S939.checked)*4;
        DrumP := DrumP + BoolToInt(D1S940.checked)*8;
        DrumP := DrumP + BoolToInt(D1S941.checked)*16;
        DrumP := DrumP + BoolToInt(D1S942.checked)*32;
        DrumP := DrumP + BoolToInt(D1S943.checked)*64;
        DrumP := DrumP + BoolToInt(D1S944.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S945.checked)*1;
        DrumP := DrumP + BoolToInt(D1S946.checked)*2;
        DrumP := DrumP + BoolToInt(D1S947.checked)*4;
        DrumP := DrumP + BoolToInt(D1S948.checked)*8;
        DrumP := DrumP + BoolToInt(D1S949.checked)*16;
        DrumP := DrumP + BoolToInt(D1S950.checked)*32;
        DrumP := DrumP + BoolToInt(D1S951.checked)*64;
        DrumP := DrumP + BoolToInt(D1S952.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S953.checked)*1;
        DrumP := DrumP + BoolToInt(D1S954.checked)*2;
        DrumP := DrumP + BoolToInt(D1S955.checked)*4;
        DrumP := DrumP + BoolToInt(D1S956.checked)*8;
        DrumP := DrumP + BoolToInt(D1S957.checked)*16;
        DrumP := DrumP + BoolToInt(D1S958.checked)*32;
        DrumP := DrumP + BoolToInt(D1S959.checked)*64;
        DrumP := DrumP + BoolToInt(D1S960.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S961.checked)*1;
        DrumP := DrumP + BoolToInt(D1S962.checked)*2;
        DrumP := DrumP + BoolToInt(D1S963.checked)*4;
        DrumP := DrumP + BoolToInt(D1S964.checked)*8;
        DrumP := DrumP + BoolToInt(D1S965.checked)*16;
        DrumP := DrumP + BoolToInt(D1S966.checked)*32;
        DrumP := DrumP + BoolToInt(D1S967.checked)*64;
        DrumP := DrumP + BoolToInt(D1S968.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S969.checked)*1;
        DrumP := DrumP + BoolToInt(D1S970.checked)*2;
        DrumP := DrumP + BoolToInt(D1S971.checked)*4;
        DrumP := DrumP + BoolToInt(D1S972.checked)*8;
        DrumP := DrumP + BoolToInt(D1S973.checked)*16;
        DrumP := DrumP + BoolToInt(D1S974.checked)*32;
        DrumP := DrumP + BoolToInt(D1S975.checked)*64;
        DrumP := DrumP + BoolToInt(D1S976.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S977.checked)*1;
        DrumP := DrumP + BoolToInt(D1S978.checked)*2;
        DrumP := DrumP + BoolToInt(D1S979.checked)*4;
        DrumP := DrumP + BoolToInt(D1S980.checked)*8;
        DrumP := DrumP + BoolToInt(D1S981.checked)*16;
        DrumP := DrumP + BoolToInt(D1S982.checked)*32;
        DrumP := DrumP + BoolToInt(D1S983.checked)*64;
        DrumP := DrumP + BoolToInt(D1S984.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S985.checked)*1;
        DrumP := DrumP + BoolToInt(D1S986.checked)*2;
        DrumP := DrumP + BoolToInt(D1S987.checked)*4;
        DrumP := DrumP + BoolToInt(D1S988.checked)*8;
        DrumP := DrumP + BoolToInt(D1S989.checked)*16;
        DrumP := DrumP + BoolToInt(D1S990.checked)*32;
        DrumP := DrumP + BoolToInt(D1S991.checked)*64;
        DrumP := DrumP + BoolToInt(D1S992.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S993.checked)*1;
        DrumP := DrumP + BoolToInt(D1S994.checked)*2;
        DrumP := DrumP + BoolToInt(D1S995.checked)*4;
        DrumP := DrumP + BoolToInt(D1S996.checked)*8;
        DrumP := DrumP + BoolToInt(D1S997.checked)*16;
        DrumP := DrumP + BoolToInt(D1S998.checked)*32;
        DrumP := DrumP + BoolToInt(D1S999.checked)*64;
        DrumP := DrumP + BoolToInt(D1S1000.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S1001.checked)*1;
        DrumP := DrumP + BoolToInt(D1S1002.checked)*2;
        DrumP := DrumP + BoolToInt(D1S1003.checked)*4;
        DrumP := DrumP + BoolToInt(D1S1004.checked)*8;
        DrumP := DrumP + BoolToInt(D1S1005.checked)*16;
        DrumP := DrumP + BoolToInt(D1S1006.checked)*32;
        DrumP := DrumP + BoolToInt(D1S1007.checked)*64;
        DrumP := DrumP + BoolToInt(D1S1008.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S1009.checked)*1;
        DrumP := DrumP + BoolToInt(D1S1010.checked)*2;
        DrumP := DrumP + BoolToInt(D1S1011.checked)*4;
        DrumP := DrumP + BoolToInt(D1S1012.checked)*8;
        DrumP := DrumP + BoolToInt(D1S1013.checked)*16;
        DrumP := DrumP + BoolToInt(D1S1014.checked)*32;
        DrumP := DrumP + BoolToInt(D1S1015.checked)*64;
        DrumP := DrumP + BoolToInt(D1S1016.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S1017.checked)*1;
        DrumP := DrumP + BoolToInt(D1S1018.checked)*2;
        DrumP := DrumP + BoolToInt(D1S1019.checked)*4;
        DrumP := DrumP + BoolToInt(D1S1020.checked)*8;
        DrumP := DrumP + BoolToInt(D1S1021.checked)*16;
        DrumP := DrumP + BoolToInt(D1S1022.checked)*32;
        DrumP := DrumP + BoolToInt(D1S1023.checked)*64;
        DrumP := DrumP + BoolToInt(D1S1024.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        //Ende File
        FileStream.Free;
end;

procedure TMainForm.SaveDrum7BParameter(Patternbase: Integer);
var
  BytesWrite : Integer;
  FileStream : TFileStream;
  MTypeI:Integer;

begin

  FileStream := tFileStream.Create (filename,fmOpenWrite);
  FileStream.Position := patternbase+232;
        //Sample 7B
        Samplebanknumber:= D1Sample8.ItemIndex;
        BytesWrite:=Filestream.Write(Samplebanknumber,1);
        Pitch:=Round(D1Pitch8.Position)+64;
        BytesWrite:=Filestream.Write(Pitch,1);
        DLevel:=Round(D1Level8.Position);
        BytesWrite:=Filestream.Write(DLevel,1);
        DPan:=Round(D1Pan8.Position)+64;
        BytesWrite:=Filestream.Write(DPan,1);
        DEGTime:=Round(D1EGTime8.Position);
        BytesWrite:=Filestream.Write(DEGTime,1);
        FSSSRA:=0;
        If (D1AmpEGB8.checked) then FSSSRA:=FSSSRA+16;
        If (D1RollB8.checked) then FSSSRA:=FSSSRA+8;
        If (D1FXSend8.checked) then FSSSRA:=FSSSRA+4;
        FSSSRA:=FSSSRA+D1FXSelect8.ItemIndex;
        BytesWrite:=Filestream.Write(FSSSRA,1);

        MTDBS:=0;
        If (D1BPMSync8.checked) then MTDBS:=MTDBS+128;
        MTypeI := D1ModType8.ItemIndex;
        Case MTypeI of
             1 : MTDBS:=MTDBS+16;
             2 : MTDBS:=MTDBS+32;
             3 : MTDBS:=MTDBS+48;
             4 : MTDBS:=MTDBS+64;
             end;
        MTDBS:=MTDBS+D1ModDest8.ItemIndex;
        BytesWrite:=Filestream.Write(MTDBS,1);

        ModulationSpeed:=Round(D1ModSpeed8.Position);
        BytesWrite:=Filestream.Write(ModulationSpeed,1);
        ModulationDepth:=Round(D1ModDepth8.Position)+64;
        BytesWrite:=Filestream.Write(ModulationDepth,1);
        MotionSeqS:=D1MotionSeq8.ItemIndex;
        BytesWrite:=Filestream.Write(MotionSeqS,1);
        //Ende File
        FileStream.Free;
end;
procedure TMainForm.SaveDrum7BSequence(Patternbase: Integer);
var
  BytesWrite : Integer;
  FileStream : TFileStream;
begin

  FileStream := tFileStream.Create (filename,fmOpenWrite);
  FileStream.Position := patternbase+232+10;
        //The Pattern
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S1025.checked)*1;
        DrumP := DrumP + BoolToInt(D1S1026.checked)*2;
        DrumP := DrumP + BoolToInt(D1S1027.checked)*4;
        DrumP := DrumP + BoolToInt(D1S1028.checked)*8;
        DrumP := DrumP + BoolToInt(D1S1029.checked)*16;
        DrumP := DrumP + BoolToInt(D1S1030.checked)*32;
        DrumP := DrumP + BoolToInt(D1S1031.checked)*64;
        DrumP := DrumP + BoolToInt(D1S1032.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S1033.checked)*1;
        DrumP := DrumP + BoolToInt(D1S1034.checked)*2;
        DrumP := DrumP + BoolToInt(D1S1035.checked)*4;
        DrumP := DrumP + BoolToInt(D1S1036.checked)*8;
        DrumP := DrumP + BoolToInt(D1S1037.checked)*16;
        DrumP := DrumP + BoolToInt(D1S1038.checked)*32;
        DrumP := DrumP + BoolToInt(D1S1039.checked)*64;
        DrumP := DrumP + BoolToInt(D1S1040.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S1041.checked)*1;
        DrumP := DrumP + BoolToInt(D1S1042.checked)*2;
        DrumP := DrumP + BoolToInt(D1S1043.checked)*4;
        DrumP := DrumP + BoolToInt(D1S1044.checked)*8;
        DrumP := DrumP + BoolToInt(D1S1045.checked)*16;
        DrumP := DrumP + BoolToInt(D1S1046.checked)*32;
        DrumP := DrumP + BoolToInt(D1S1047.checked)*64;
        DrumP := DrumP + BoolToInt(D1S1048.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S1049.checked)*1;
        DrumP := DrumP + BoolToInt(D1S1050.checked)*2;
        DrumP := DrumP + BoolToInt(D1S1051.checked)*4;
        DrumP := DrumP + BoolToInt(D1S1052.checked)*8;
        DrumP := DrumP + BoolToInt(D1S1053.checked)*16;
        DrumP := DrumP + BoolToInt(D1S1054.checked)*32;
        DrumP := DrumP + BoolToInt(D1S1055.checked)*64;
        DrumP := DrumP + BoolToInt(D1S1056.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S1057.checked)*1;
        DrumP := DrumP + BoolToInt(D1S1058.checked)*2;
        DrumP := DrumP + BoolToInt(D1S1059.checked)*4;
        DrumP := DrumP + BoolToInt(D1S1060.checked)*8;
        DrumP := DrumP + BoolToInt(D1S1061.checked)*16;
        DrumP := DrumP + BoolToInt(D1S1062.checked)*32;
        DrumP := DrumP + BoolToInt(D1S1063.checked)*64;
        DrumP := DrumP + BoolToInt(D1S1064.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S1065.checked)*1;
        DrumP := DrumP + BoolToInt(D1S1066.checked)*2;
        DrumP := DrumP + BoolToInt(D1S1067.checked)*4;
        DrumP := DrumP + BoolToInt(D1S1068.checked)*8;
        DrumP := DrumP + BoolToInt(D1S1069.checked)*16;
        DrumP := DrumP + BoolToInt(D1S1070.checked)*32;
        DrumP := DrumP + BoolToInt(D1S1071.checked)*64;
        DrumP := DrumP + BoolToInt(D1S1072.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S1073.checked)*1;
        DrumP := DrumP + BoolToInt(D1S1074.checked)*2;
        DrumP := DrumP + BoolToInt(D1S1075.checked)*4;
        DrumP := DrumP + BoolToInt(D1S1076.checked)*8;
        DrumP := DrumP + BoolToInt(D1S1077.checked)*16;
        DrumP := DrumP + BoolToInt(D1S1078.checked)*32;
        DrumP := DrumP + BoolToInt(D1S1079.checked)*64;
        DrumP := DrumP + BoolToInt(D1S1080.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S1081.checked)*1;
        DrumP := DrumP + BoolToInt(D1S1082.checked)*2;
        DrumP := DrumP + BoolToInt(D1S1083.checked)*4;
        DrumP := DrumP + BoolToInt(D1S1084.checked)*8;
        DrumP := DrumP + BoolToInt(D1S1085.checked)*16;
        DrumP := DrumP + BoolToInt(D1S1086.checked)*32;
        DrumP := DrumP + BoolToInt(D1S1087.checked)*64;
        DrumP := DrumP + BoolToInt(D1S1088.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S1089.checked)*1;
        DrumP := DrumP + BoolToInt(D1S1090.checked)*2;
        DrumP := DrumP + BoolToInt(D1S1091.checked)*4;
        DrumP := DrumP + BoolToInt(D1S1092.checked)*8;
        DrumP := DrumP + BoolToInt(D1S1093.checked)*16;
        DrumP := DrumP + BoolToInt(D1S1094.checked)*32;
        DrumP := DrumP + BoolToInt(D1S1095.checked)*64;
        DrumP := DrumP + BoolToInt(D1S1096.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S1097.checked)*1;
        DrumP := DrumP + BoolToInt(D1S1098.checked)*2;
        DrumP := DrumP + BoolToInt(D1S1099.checked)*4;
        DrumP := DrumP + BoolToInt(D1S1100.checked)*8;
        DrumP := DrumP + BoolToInt(D1S1101.checked)*16;
        DrumP := DrumP + BoolToInt(D1S1102.checked)*32;
        DrumP := DrumP + BoolToInt(D1S1103.checked)*64;
        DrumP := DrumP + BoolToInt(D1S1104.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S1105.checked)*1;
        DrumP := DrumP + BoolToInt(D1S1106.checked)*2;
        DrumP := DrumP + BoolToInt(D1S1107.checked)*4;
        DrumP := DrumP + BoolToInt(D1S1108.checked)*8;
        DrumP := DrumP + BoolToInt(D1S1109.checked)*16;
        DrumP := DrumP + BoolToInt(D1S1110.checked)*32;
        DrumP := DrumP + BoolToInt(D1S1111.checked)*64;
        DrumP := DrumP + BoolToInt(D1S1112.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S1113.checked)*1;
        DrumP := DrumP + BoolToInt(D1S1114.checked)*2;
        DrumP := DrumP + BoolToInt(D1S1115.checked)*4;
        DrumP := DrumP + BoolToInt(D1S1116.checked)*8;
        DrumP := DrumP + BoolToInt(D1S1117.checked)*16;
        DrumP := DrumP + BoolToInt(D1S1118.checked)*32;
        DrumP := DrumP + BoolToInt(D1S1119.checked)*64;
        DrumP := DrumP + BoolToInt(D1S1120.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S1121.checked)*1;
        DrumP := DrumP + BoolToInt(D1S1122.checked)*2;
        DrumP := DrumP + BoolToInt(D1S1123.checked)*4;
        DrumP := DrumP + BoolToInt(D1S1124.checked)*8;
        DrumP := DrumP + BoolToInt(D1S1125.checked)*16;
        DrumP := DrumP + BoolToInt(D1S1126.checked)*32;
        DrumP := DrumP + BoolToInt(D1S1127.checked)*64;
        DrumP := DrumP + BoolToInt(D1S1128.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S1129.checked)*1;
        DrumP := DrumP + BoolToInt(D1S1130.checked)*2;
        DrumP := DrumP + BoolToInt(D1S1131.checked)*4;
        DrumP := DrumP + BoolToInt(D1S1132.checked)*8;
        DrumP := DrumP + BoolToInt(D1S1133.checked)*16;
        DrumP := DrumP + BoolToInt(D1S1134.checked)*32;
        DrumP := DrumP + BoolToInt(D1S1135.checked)*64;
        DrumP := DrumP + BoolToInt(D1S1136.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S1137.checked)*1;
        DrumP := DrumP + BoolToInt(D1S1138.checked)*2;
        DrumP := DrumP + BoolToInt(D1S1139.checked)*4;
        DrumP := DrumP + BoolToInt(D1S1140.checked)*8;
        DrumP := DrumP + BoolToInt(D1S1141.checked)*16;
        DrumP := DrumP + BoolToInt(D1S1142.checked)*32;
        DrumP := DrumP + BoolToInt(D1S1143.checked)*64;
        DrumP := DrumP + BoolToInt(D1S1144.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S1145.checked)*1;
        DrumP := DrumP + BoolToInt(D1S1146.checked)*2;
        DrumP := DrumP + BoolToInt(D1S1147.checked)*4;
        DrumP := DrumP + BoolToInt(D1S1148.checked)*8;
        DrumP := DrumP + BoolToInt(D1S1149.checked)*16;
        DrumP := DrumP + BoolToInt(D1S1150.checked)*32;
        DrumP := DrumP + BoolToInt(D1S1151.checked)*64;
        DrumP := DrumP + BoolToInt(D1S1152.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        //Ende File
        FileStream.Free;
end;
procedure TMainForm.SaveSynth1Parameter(Patternbase: Integer);
var
  BytesWrite : Integer;
  FileStream : TFileStream;
  MTypeI:Integer;

begin

  FileStream := tFileStream.Create (filename,fmOpenWrite);
  FileStream.Position := patternbase+258;
        // Synth1
         Waveform:= WaveformSynth1.ItemIndex;
         Synthoscillator:=SynthoscSynth1.ItemIndex;
         Syntune := round(TuneSynth1.position)+50;

         BytesWrite:=Filestream.Write(Waveform,1);
         BytesWrite:=Filestream.Write(Syntune,1);
         BytesWrite:=Filestream.Write(Synthoscillator,1);

         OscEdit1 := round(OscEdit1Synth1.Position);
         BytesWrite:=Filestream.Write(OscEdit1,1);
         OscEdit2 := round(OscEdit2Synth1.Position);
         BytesWrite:=Filestream.Write(OscEdit2,1);
         PitchGlide:=round(GlideSynth1.Position);
         BytesWrite:=Filestream.Write(PitchGlide ,1);

         Filtertype:=FilterTypeSynth1.ItemIndex;
         BytesWrite:=Filestream.Write(Filtertype ,1);
         Cutoff:=round(CutoffSynth1.Position);
         BytesWrite:=Filestream.Write(Cutoff ,1);
         Resonance:=round(ResonanceSynth1.Position);
         BytesWrite:=Filestream.Write(Resonance  ,1);
         EGInt:=round(EGIntSynth1.Position)+64;
         BytesWrite:=Filestream.Write(EGInt,1);
         Drive:=round(DriveSynth1.Position);
         BytesWrite:=Filestream.Write(Drive,1);
         DLevel:=round(LevelSynth1.Position);
         BytesWrite:=Filestream.Write(DLevel,1);
         DPan:=round(PanSynth1.Position)+64;
         BytesWrite:=Filestream.Write(DPan,1);
         DEGTime:=round(EGTimeSynth1.Position);
         BytesWrite:=Filestream.Write(DEGTime,1);

         FSSSRA:=0;
         If (AmpEGSynth1.checked) then FSSSRA:=FSSSRA+16;
         If (RollSynth1.checked) then FSSSRA:=FSSSRA+8;
         If (FXSendSynth1.checked) then FSSSRA:=FSSSRA+4;
         FSSSRA:=FSSSRA+FXSelectSynth1.ItemIndex;
         BytesWrite:=Filestream.Write(FSSSRA,1);
         MTDBS:=0;
         BytesWrite:=Filestream.Write(MTDBS,1); //Reserved (MTDBS used because it doesn't write the number 0, variable expected
         MTDBS:=0;
         If (BPMSyncSynth1.checked) then MTDBS:=MTDBS+128;
         MTypeI := ModTypeSynth1.ItemIndex;
         Case MTypeI of
       	 1 : MTDBS:=MTDBS+16;
       	 2 : MTDBS:=MTDBS+32;
       	 3 : MTDBS:=MTDBS+48;
       	 4 : MTDBS:=MTDBS+64;
       	 end;
         MTDBS:=MTDBS+ModDestSynth1.ItemIndex;
         BytesWrite:=Filestream.Write(MTDBS,1);

         ModulationSpeed:= round(ModSpeedSynth1.Position);
         BytesWrite:=Filestream.Write(ModulationSpeed,1);
         ModulationDepth:=round(ModDepthSynth1.Position)+64;
         BytesWrite:=Filestream.Write(ModulationDepth,1);

         MotionSeqS:=MotionSeqSynth1.ItemIndex;
         BytesWrite:=Filestream.Write(MotionSeqS,1);
         //Ende File
         FileStream.Free;
end;

procedure TMainForm.SaveSynth2Parameter(Patternbase: Integer);
var
  BytesWrite : Integer;
  FileStream : TFileStream;
  MTypeI:Integer;

begin

  FileStream := tFileStream.Create (filename,fmOpenWrite);
  FileStream.Position := patternbase+534;
        // Synth2
         Waveform:= WaveformSynth2.ItemIndex;
         Synthoscillator:=SynthoscSynth2.ItemIndex;
         Syntune := round(TuneSynth2.position)+50;

         BytesWrite:=Filestream.Write(Waveform,1);
         BytesWrite:=Filestream.Write(Syntune,1);
         BytesWrite:=Filestream.Write(Synthoscillator,1);

         OscEdit1 := round(OscEdit1Synth2.Position);
         BytesWrite:=Filestream.Write(OscEdit1,1);
         OscEdit2 := round(OscEdit2Synth2.Position);
         BytesWrite:=Filestream.Write(OscEdit2,1);
         PitchGlide:=round(GlideSynth2.Position);
         BytesWrite:=Filestream.Write(PitchGlide ,1);

         Filtertype:=FilterTypeSynth2.ItemIndex;
         BytesWrite:=Filestream.Write(Filtertype ,1);
         Cutoff:=round(CutoffSynth2.Position);
         BytesWrite:=Filestream.Write(Cutoff ,1);
         Resonance:=round(ResonanceSynth2.Position);
         BytesWrite:=Filestream.Write(Resonance  ,1);
         EGInt:=round(EGIntSynth2.Position)+64;
         BytesWrite:=Filestream.Write(EGInt,1);
         Drive:=round(DriveSynth2.Position);
         BytesWrite:=Filestream.Write(Drive,1);
         DLevel:=round(LevelSynth2.Position);
         BytesWrite:=Filestream.Write(DLevel,1);
         DPan:=round(PanSynth2.Position)+64;
         BytesWrite:=Filestream.Write(DPan,1);
         DEGTime:=round(EGTimeSynth2.Position);
         BytesWrite:=Filestream.Write(DEGTime,1);

         FSSSRA:=0;
         If (AmpEGSynth2.checked) then FSSSRA:=FSSSRA+16;
         If (RollSynth2.checked) then FSSSRA:=FSSSRA+8;
         If (FXSendSynth2.checked) then FSSSRA:=FSSSRA+4;
         FSSSRA:=FSSSRA+FXSelectSynth2.ItemIndex;
         BytesWrite:=Filestream.Write(FSSSRA,1);
         MTDBS:=0;
         BytesWrite:=Filestream.Write(MTDBS,1); //Reserved (MTDBS used because it doesn't write the number 0, variable expected
         MTDBS:=0;
         If (BPMSyncSynth2.checked) then MTDBS:=MTDBS+128;
         MTypeI := ModTypeSynth2.ItemIndex;
         Case MTypeI of
       	 1 : MTDBS:=MTDBS+16;
       	 2 : MTDBS:=MTDBS+32;
       	 3 : MTDBS:=MTDBS+48;
       	 4 : MTDBS:=MTDBS+64;
       	 end;
         MTDBS:=MTDBS+ModDestSynth2.ItemIndex;
         BytesWrite:=Filestream.Write(MTDBS,1);

         ModulationSpeed:= round(ModSpeedSynth2.Position);
         BytesWrite:=Filestream.Write(ModulationSpeed,1);
         ModulationDepth:=round(ModDepthSynth2.Position)+64;
         BytesWrite:=Filestream.Write(ModulationDepth,1);

         MotionSeqS:=MotionSeqSynth2.ItemIndex;
         BytesWrite:=Filestream.Write(MotionSeqS,1);
         //Ende File
         FileStream.Free;
end;

procedure TMainForm.SaveSynth3Parameter(Patternbase: Integer);
var

  BytesWrite : Integer;
  FileStream : TFileStream;
  MTypeI :Integer;

begin

  FileStream := tFileStream.Create (filename,fmOpenWrite);
  FileStream.Position := patternbase+810;
       // Synth3
       Waveform:= WaveformSynth3.ItemIndex;
       Synthoscillator:=SynthoscSynth3.ItemIndex;
       Syntune := round(TuneSynth3.position)+50;

       BytesWrite:=Filestream.Write(Waveform,1);
       BytesWrite:=Filestream.Write(Syntune,1);
       BytesWrite:=Filestream.Write(Synthoscillator,1);

       OscEdit1 := round(OscEdit1Synth3.Position);
       BytesWrite:=Filestream.Write(OscEdit1,1);
       OscEdit2 := round(OscEdit2Synth3.Position);
       BytesWrite:=Filestream.Write(OscEdit2,1);
       PitchGlide:=round(GlideSynth3.Position);
       BytesWrite:=Filestream.Write(PitchGlide ,1);

       Filtertype:=FilterTypeSynth3.ItemIndex;
       BytesWrite:=Filestream.Write(Filtertype ,1);
       Cutoff:=round(CutoffSynth3.Position);
       BytesWrite:=Filestream.Write(Cutoff ,1);
       Resonance:=round(ResonanceSynth3.Position);
       BytesWrite:=Filestream.Write(Resonance  ,1);
       EGInt:=round(EGIntSynth3.Position)+64;
       BytesWrite:=Filestream.Write(EGInt,1);
       Drive:=round(DriveSynth3.Position);
       BytesWrite:=Filestream.Write(Drive,1);
       DLevel:=round(LevelSynth3.Position);
       BytesWrite:=Filestream.Write(DLevel,1);
       DPan:=round(PanSynth3.Position)+64;
       BytesWrite:=Filestream.Write(DPan,1);
       DEGTime:=round(EGTimeSynth3.Position);
       BytesWrite:=Filestream.Write(DEGTime,1);

       FSSSRA:=0;
       If (AmpEGSynth3.checked) then FSSSRA:=FSSSRA+16;
       If (RollSynth3.checked) then FSSSRA:=FSSSRA+8;
       If (FXSendSynth3.checked) then FSSSRA:=FSSSRA+4;
       FSSSRA:=FSSSRA+FXSelectSynth3.ItemIndex;
       BytesWrite:=Filestream.Write(FSSSRA,1);
       MTDBS:=0;
       BytesWrite:=Filestream.Write(MTDBS,1); //Reserved (MTDBS used because it doesn't write the number 0, variable expected
       MTDBS:=0;
       If (BPMSyncSynth3.checked) then MTDBS:=MTDBS+128;
       MTypeI := ModTypeSynth3.ItemIndex;
       Case MTypeI of
     	 1 : MTDBS:=MTDBS+16;
     	 2 : MTDBS:=MTDBS+32;
     	 3 : MTDBS:=MTDBS+48;
     	 4 : MTDBS:=MTDBS+64;
     	 end;
       MTDBS:=MTDBS+ModDestSynth3.ItemIndex;
       BytesWrite:=Filestream.Write(MTDBS,1);

       ModulationSpeed:= round(ModSpeedSynth3.Position);
       BytesWrite:=Filestream.Write(ModulationSpeed,1);
       ModulationDepth:=round(ModDepthSynth3.Position)+64;
       BytesWrite:=Filestream.Write(ModulationDepth,1);

       MotionSeqS:=MotionSeqSynth3.ItemIndex;
       BytesWrite:=Filestream.Write(MotionSeqS,1);
      //Ende File
      FileStream.Free;
end;
procedure TMainForm.SaveSynth4Parameter(Patternbase: Integer);
var
  BytesWrite : Integer;
  FileStream : TFileStream;
  MTypeI :Integer;


begin

  FileStream := tFileStream.Create (filename,fmOpenWrite);
  FileStream.Position := patternbase+1086;
       // Synth4
       Waveform:= WaveformSynth4.ItemIndex;
       Synthoscillator:=SynthoscSynth4.ItemIndex;
       Syntune := round(TuneSynth4.position)+50;

       BytesWrite:=Filestream.Write(Waveform,1);
       BytesWrite:=Filestream.Write(Syntune,1);
       BytesWrite:=Filestream.Write(Synthoscillator,1);

       OscEdit1 := round(OscEdit1Synth4.Position);
       BytesWrite:=Filestream.Write(OscEdit1,1);
       OscEdit2 := round(OscEdit2Synth4.Position);
       BytesWrite:=Filestream.Write(OscEdit2,1);
       PitchGlide:=round(GlideSynth4.Position);
       BytesWrite:=Filestream.Write(PitchGlide ,1);

       Filtertype:=FilterTypeSynth4.ItemIndex;
       BytesWrite:=Filestream.Write(Filtertype ,1);
       Cutoff:=round(CutoffSynth4.Position);
       BytesWrite:=Filestream.Write(Cutoff ,1);
       Resonance:=round(ResonanceSynth4.Position);
       BytesWrite:=Filestream.Write(Resonance  ,1);
       EGInt:=round(EGIntSynth4.Position)+64;
       BytesWrite:=Filestream.Write(EGInt,1);
       Drive:=round(DriveSynth4.Position);
       BytesWrite:=Filestream.Write(Drive,1);
       DLevel:=round(LevelSynth4.Position);
       BytesWrite:=Filestream.Write(DLevel,1);
       DPan:=round(PanSynth4.Position)+64;
       BytesWrite:=Filestream.Write(DPan,1);
       DEGTime:=round(EGTimeSynth4.Position);
       BytesWrite:=Filestream.Write(DEGTime,1);

       FSSSRA:=0;
       If (AmpEGSynth4.checked) then FSSSRA:=FSSSRA+16;
       If (RollSynth4.checked) then FSSSRA:=FSSSRA+8;
       If (FXSendSynth4.checked) then FSSSRA:=FSSSRA+4;
       FSSSRA:=FSSSRA+FXSelectSynth4.ItemIndex;
       BytesWrite:=Filestream.Write(FSSSRA,1);
       MTDBS:=0;
       BytesWrite:=Filestream.Write(MTDBS,1); //Reserved (MTDBS used because it doesn't write the number 0, variable expected
       MTDBS:=0;
       If (BPMSyncSynth4.checked) then MTDBS:=MTDBS+128;
       MTypeI := ModTypeSynth4.ItemIndex;
       Case MTypeI of
     	 1 : MTDBS:=MTDBS+16;
     	 2 : MTDBS:=MTDBS+32;
     	 3 : MTDBS:=MTDBS+48;
     	 4 : MTDBS:=MTDBS+64;
     	 end;
       MTDBS:=MTDBS+ModDestSynth4.ItemIndex;
       BytesWrite:=Filestream.Write(MTDBS,1);

       ModulationSpeed:= round(ModSpeedSynth4.Position);
       BytesWrite:=Filestream.Write(ModulationSpeed,1);
       ModulationDepth:=round(ModDepthSynth4.Position)+64;
       BytesWrite:=Filestream.Write(ModulationDepth,1);

       MotionSeqS:=MotionSeqSynth4.ItemIndex;
       BytesWrite:=Filestream.Write(MotionSeqS,1);
       //Ende File
       FileStream.Free;

end;
procedure TMainForm.SaveSynth5Parameter(Patternbase: Integer);
var
  BytesWrite : Integer;
  FileStream : TFileStream;
  MTypeI :Integer;

begin

  FileStream := tFileStream.Create (filename,fmOpenWrite);
  FileStream.Position := patternbase+1362;
       // Synth5
        Waveform:= WaveformSynth5.ItemIndex;
        Synthoscillator:=SynthoscSynth5.ItemIndex;
        Syntune := round(TuneSynth5.position)+50;

        BytesWrite:=Filestream.Write(Waveform,1);
        BytesWrite:=Filestream.Write(Syntune,1);
        BytesWrite:=Filestream.Write(Synthoscillator,1);

        OscEdit1 := round(OscEdit1Synth5.Position);
        BytesWrite:=Filestream.Write(OscEdit1,1);
        OscEdit2 := round(OscEdit2Synth5.Position);
        BytesWrite:=Filestream.Write(OscEdit2,1);
        PitchGlide:=round(GlideSynth5.Position);
        BytesWrite:=Filestream.Write(PitchGlide ,1);

        Filtertype:=FilterTypeSynth5.ItemIndex;
        BytesWrite:=Filestream.Write(Filtertype ,1);
        Cutoff:=round(CutoffSynth5.Position);
        BytesWrite:=Filestream.Write(Cutoff ,1);
        Resonance:=round(ResonanceSynth5.Position);
        BytesWrite:=Filestream.Write(Resonance  ,1);
        EGInt:=round(EGIntSynth5.Position)+64;
        BytesWrite:=Filestream.Write(EGInt,1);
        Drive:=round(DriveSynth5.Position);
        BytesWrite:=Filestream.Write(Drive,1);
        DLevel:=round(LevelSynth5.Position);
        BytesWrite:=Filestream.Write(DLevel,1);
        DPan:=round(PanSynth5.Position)+64;
        BytesWrite:=Filestream.Write(DPan,1);
        DEGTime:=round(EGTimeSynth5.Position);
        BytesWrite:=Filestream.Write(DEGTime,1);

        FSSSRA:=0;
        If (AmpEGSynth5.checked) then FSSSRA:=FSSSRA+16;
        If (RollSynth5.checked) then FSSSRA:=FSSSRA+8;
        If (FXSendSynth5.checked) then FSSSRA:=FSSSRA+4;
        FSSSRA:=FSSSRA+FXSelectSynth5.ItemIndex;
        BytesWrite:=Filestream.Write(FSSSRA,1);
        MTDBS:=0;
        BytesWrite:=Filestream.Write(MTDBS,1); //Reserved (MTDBS used because it doesn't write the number 0, variable expected
        MTDBS:=0;
        If (BPMSyncSynth5.checked) then MTDBS:=MTDBS+128;
        MTypeI := ModTypeSynth5.ItemIndex;
        Case MTypeI of
      	 1 : MTDBS:=MTDBS+16;
      	 2 : MTDBS:=MTDBS+32;
      	 3 : MTDBS:=MTDBS+48;
      	 4 : MTDBS:=MTDBS+64;
      	 end;
        MTDBS:=MTDBS+ModDestSynth5.ItemIndex;
        BytesWrite:=Filestream.Write(MTDBS,1);

        ModulationSpeed:= round(ModSpeedSynth5.Position);
        BytesWrite:=Filestream.Write(ModulationSpeed,1);
        ModulationDepth:=round(ModDepthSynth5.Position)+64;
        BytesWrite:=Filestream.Write(ModulationDepth,1);

        MotionSeqS:=MotionSeqSynth5.ItemIndex;
        BytesWrite:=Filestream.Write(MotionSeqS,1);
        //Ende File
        FileStream.Free;
end;
procedure TMainForm.SaveDrumAccentSequence(Patternbase: Integer);
var
  BytesWrite : Integer;
  FileStream : TFileStream;
begin

  FileStream := tFileStream.Create (filename,fmOpenWrite);
  FileStream.Position := patternbase+1640;
        //Drum Accent Pattern
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S1153.checked)*1;
        DrumP := DrumP + BoolToInt(D1S1154.checked)*2;
        DrumP := DrumP + BoolToInt(D1S1155.checked)*4;
        DrumP := DrumP + BoolToInt(D1S1156.checked)*8;
        DrumP := DrumP + BoolToInt(D1S1157.checked)*16;
        DrumP := DrumP + BoolToInt(D1S1158.checked)*32;
        DrumP := DrumP + BoolToInt(D1S1159.checked)*64;
        DrumP := DrumP + BoolToInt(D1S1160.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S1161.checked)*1;
        DrumP := DrumP + BoolToInt(D1S1162.checked)*2;
        DrumP := DrumP + BoolToInt(D1S1163.checked)*4;
        DrumP := DrumP + BoolToInt(D1S1164.checked)*8;
        DrumP := DrumP + BoolToInt(D1S1165.checked)*16;
        DrumP := DrumP + BoolToInt(D1S1166.checked)*32;
        DrumP := DrumP + BoolToInt(D1S1167.checked)*64;
        DrumP := DrumP + BoolToInt(D1S1168.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S1169.checked)*1;
        DrumP := DrumP + BoolToInt(D1S1170.checked)*2;
        DrumP := DrumP + BoolToInt(D1S1171.checked)*4;
        DrumP := DrumP + BoolToInt(D1S1172.checked)*8;
        DrumP := DrumP + BoolToInt(D1S1173.checked)*16;
        DrumP := DrumP + BoolToInt(D1S1174.checked)*32;
        DrumP := DrumP + BoolToInt(D1S1175.checked)*64;
        DrumP := DrumP + BoolToInt(D1S1176.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S1177.checked)*1;
        DrumP := DrumP + BoolToInt(D1S1178.checked)*2;
        DrumP := DrumP + BoolToInt(D1S1179.checked)*4;
        DrumP := DrumP + BoolToInt(D1S1180.checked)*8;
        DrumP := DrumP + BoolToInt(D1S1181.checked)*16;
        DrumP := DrumP + BoolToInt(D1S1182.checked)*32;
        DrumP := DrumP + BoolToInt(D1S1183.checked)*64;
        DrumP := DrumP + BoolToInt(D1S1184.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S1185.checked)*1;
        DrumP := DrumP + BoolToInt(D1S1186.checked)*2;
        DrumP := DrumP + BoolToInt(D1S1187.checked)*4;
        DrumP := DrumP + BoolToInt(D1S1188.checked)*8;
        DrumP := DrumP + BoolToInt(D1S1189.checked)*16;
        DrumP := DrumP + BoolToInt(D1S1190.checked)*32;
        DrumP := DrumP + BoolToInt(D1S1191.checked)*64;
        DrumP := DrumP + BoolToInt(D1S1192.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S1193.checked)*1;
        DrumP := DrumP + BoolToInt(D1S1194.checked)*2;
        DrumP := DrumP + BoolToInt(D1S1195.checked)*4;
        DrumP := DrumP + BoolToInt(D1S1196.checked)*8;
        DrumP := DrumP + BoolToInt(D1S1197.checked)*16;
        DrumP := DrumP + BoolToInt(D1S1198.checked)*32;
        DrumP := DrumP + BoolToInt(D1S1199.checked)*64;
        DrumP := DrumP + BoolToInt(D1S1200.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S1201.checked)*1;
        DrumP := DrumP + BoolToInt(D1S1202.checked)*2;
        DrumP := DrumP + BoolToInt(D1S1203.checked)*4;
        DrumP := DrumP + BoolToInt(D1S1204.checked)*8;
        DrumP := DrumP + BoolToInt(D1S1205.checked)*16;
        DrumP := DrumP + BoolToInt(D1S1206.checked)*32;
        DrumP := DrumP + BoolToInt(D1S1207.checked)*64;
        DrumP := DrumP + BoolToInt(D1S1208.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S1209.checked)*1;
        DrumP := DrumP + BoolToInt(D1S1210.checked)*2;
        DrumP := DrumP + BoolToInt(D1S1211.checked)*4;
        DrumP := DrumP + BoolToInt(D1S1212.checked)*8;
        DrumP := DrumP + BoolToInt(D1S1213.checked)*16;
        DrumP := DrumP + BoolToInt(D1S1214.checked)*32;
        DrumP := DrumP + BoolToInt(D1S1215.checked)*64;
        DrumP := DrumP + BoolToInt(D1S1216.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S1217.checked)*1;
        DrumP := DrumP + BoolToInt(D1S1218.checked)*2;
        DrumP := DrumP + BoolToInt(D1S1219.checked)*4;
        DrumP := DrumP + BoolToInt(D1S1220.checked)*8;
        DrumP := DrumP + BoolToInt(D1S1221.checked)*16;
        DrumP := DrumP + BoolToInt(D1S1222.checked)*32;
        DrumP := DrumP + BoolToInt(D1S1223.checked)*64;
        DrumP := DrumP + BoolToInt(D1S1224.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S1225.checked)*1;
        DrumP := DrumP + BoolToInt(D1S1226.checked)*2;
        DrumP := DrumP + BoolToInt(D1S1227.checked)*4;
        DrumP := DrumP + BoolToInt(D1S1228.checked)*8;
        DrumP := DrumP + BoolToInt(D1S1229.checked)*16;
        DrumP := DrumP + BoolToInt(D1S1230.checked)*32;
        DrumP := DrumP + BoolToInt(D1S1231.checked)*64;
        DrumP := DrumP + BoolToInt(D1S1232.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S1233.checked)*1;
        DrumP := DrumP + BoolToInt(D1S1234.checked)*2;
        DrumP := DrumP + BoolToInt(D1S1235.checked)*4;
        DrumP := DrumP + BoolToInt(D1S1236.checked)*8;
        DrumP := DrumP + BoolToInt(D1S1237.checked)*16;
        DrumP := DrumP + BoolToInt(D1S1238.checked)*32;
        DrumP := DrumP + BoolToInt(D1S1239.checked)*64;
        DrumP := DrumP + BoolToInt(D1S1240.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S1241.checked)*1;
        DrumP := DrumP + BoolToInt(D1S1242.checked)*2;
        DrumP := DrumP + BoolToInt(D1S1243.checked)*4;
        DrumP := DrumP + BoolToInt(D1S1244.checked)*8;
        DrumP := DrumP + BoolToInt(D1S1245.checked)*16;
        DrumP := DrumP + BoolToInt(D1S1246.checked)*32;
        DrumP := DrumP + BoolToInt(D1S1247.checked)*64;
        DrumP := DrumP + BoolToInt(D1S1248.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S1249.checked)*1;
        DrumP := DrumP + BoolToInt(D1S1250.checked)*2;
        DrumP := DrumP + BoolToInt(D1S1251.checked)*4;
        DrumP := DrumP + BoolToInt(D1S1252.checked)*8;
        DrumP := DrumP + BoolToInt(D1S1253.checked)*16;
        DrumP := DrumP + BoolToInt(D1S1254.checked)*32;
        DrumP := DrumP + BoolToInt(D1S1255.checked)*64;
        DrumP := DrumP + BoolToInt(D1S1256.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S1257.checked)*1;
        DrumP := DrumP + BoolToInt(D1S1258.checked)*2;
        DrumP := DrumP + BoolToInt(D1S1259.checked)*4;
        DrumP := DrumP + BoolToInt(D1S1260.checked)*8;
        DrumP := DrumP + BoolToInt(D1S1261.checked)*16;
        DrumP := DrumP + BoolToInt(D1S1262.checked)*32;
        DrumP := DrumP + BoolToInt(D1S1263.checked)*64;
        DrumP := DrumP + BoolToInt(D1S1264.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S1265.checked)*1;
        DrumP := DrumP + BoolToInt(D1S1266.checked)*2;
        DrumP := DrumP + BoolToInt(D1S1267.checked)*4;
        DrumP := DrumP + BoolToInt(D1S1268.checked)*8;
        DrumP := DrumP + BoolToInt(D1S1269.checked)*16;
        DrumP := DrumP + BoolToInt(D1S1270.checked)*32;
        DrumP := DrumP + BoolToInt(D1S1271.checked)*64;
        DrumP := DrumP + BoolToInt(D1S1272.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S1273.checked)*1;
        DrumP := DrumP + BoolToInt(D1S1274.checked)*2;
        DrumP := DrumP + BoolToInt(D1S1275.checked)*4;
        DrumP := DrumP + BoolToInt(D1S1276.checked)*8;
        DrumP := DrumP + BoolToInt(D1S1277.checked)*16;
        DrumP := DrumP + BoolToInt(D1S1278.checked)*32;
        DrumP := DrumP + BoolToInt(D1S1279.checked)*64;
        DrumP := DrumP + BoolToInt(D1S1280.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        //Ende File
        FileStream.Free;
end;

procedure TMainForm.SaveSynthAccentSequence(Patternbase: Integer);
var
  BytesWrite : Integer;
  FileStream : TFileStream;
begin

  FileStream := tFileStream.Create (filename,fmOpenWrite);
  FileStream.Position := patternbase+1658;
        //Synth Accent Pattern
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S1281.checked)*1;
        DrumP := DrumP + BoolToInt(D1S1282.checked)*2;
        DrumP := DrumP + BoolToInt(D1S1283.checked)*4;
        DrumP := DrumP + BoolToInt(D1S1284.checked)*8;
        DrumP := DrumP + BoolToInt(D1S1285.checked)*16;
        DrumP := DrumP + BoolToInt(D1S1286.checked)*32;
        DrumP := DrumP + BoolToInt(D1S1287.checked)*64;
        DrumP := DrumP + BoolToInt(D1S1288.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S1289.checked)*1;
        DrumP := DrumP + BoolToInt(D1S1290.checked)*2;
        DrumP := DrumP + BoolToInt(D1S1291.checked)*4;
        DrumP := DrumP + BoolToInt(D1S1292.checked)*8;
        DrumP := DrumP + BoolToInt(D1S1293.checked)*16;
        DrumP := DrumP + BoolToInt(D1S1294.checked)*32;
        DrumP := DrumP + BoolToInt(D1S1295.checked)*64;
        DrumP := DrumP + BoolToInt(D1S1296.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S1297.checked)*1;
        DrumP := DrumP + BoolToInt(D1S1298.checked)*2;
        DrumP := DrumP + BoolToInt(D1S1299.checked)*4;
        DrumP := DrumP + BoolToInt(D1S1300.checked)*8;
        DrumP := DrumP + BoolToInt(D1S1301.checked)*16;
        DrumP := DrumP + BoolToInt(D1S1302.checked)*32;
        DrumP := DrumP + BoolToInt(D1S1303.checked)*64;
        DrumP := DrumP + BoolToInt(D1S1304.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S1305.checked)*1;
        DrumP := DrumP + BoolToInt(D1S1306.checked)*2;
        DrumP := DrumP + BoolToInt(D1S1307.checked)*4;
        DrumP := DrumP + BoolToInt(D1S1308.checked)*8;
        DrumP := DrumP + BoolToInt(D1S1309.checked)*16;
        DrumP := DrumP + BoolToInt(D1S1310.checked)*32;
        DrumP := DrumP + BoolToInt(D1S1311.checked)*64;
        DrumP := DrumP + BoolToInt(D1S1312.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S1313.checked)*1;
        DrumP := DrumP + BoolToInt(D1S1314.checked)*2;
        DrumP := DrumP + BoolToInt(D1S1315.checked)*4;
        DrumP := DrumP + BoolToInt(D1S1316.checked)*8;
        DrumP := DrumP + BoolToInt(D1S1317.checked)*16;
        DrumP := DrumP + BoolToInt(D1S1318.checked)*32;
        DrumP := DrumP + BoolToInt(D1S1319.checked)*64;
        DrumP := DrumP + BoolToInt(D1S1320.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S1321.checked)*1;
        DrumP := DrumP + BoolToInt(D1S1322.checked)*2;
        DrumP := DrumP + BoolToInt(D1S1323.checked)*4;
        DrumP := DrumP + BoolToInt(D1S1324.checked)*8;
        DrumP := DrumP + BoolToInt(D1S1325.checked)*16;
        DrumP := DrumP + BoolToInt(D1S1326.checked)*32;
        DrumP := DrumP + BoolToInt(D1S1327.checked)*64;
        DrumP := DrumP + BoolToInt(D1S1328.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S1329.checked)*1;
        DrumP := DrumP + BoolToInt(D1S1330.checked)*2;
        DrumP := DrumP + BoolToInt(D1S1331.checked)*4;
        DrumP := DrumP + BoolToInt(D1S1332.checked)*8;
        DrumP := DrumP + BoolToInt(D1S1333.checked)*16;
        DrumP := DrumP + BoolToInt(D1S1334.checked)*32;
        DrumP := DrumP + BoolToInt(D1S1335.checked)*64;
        DrumP := DrumP + BoolToInt(D1S1336.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S1337.checked)*1;
        DrumP := DrumP + BoolToInt(D1S1338.checked)*2;
        DrumP := DrumP + BoolToInt(D1S1339.checked)*4;
        DrumP := DrumP + BoolToInt(D1S1340.checked)*8;
        DrumP := DrumP + BoolToInt(D1S1341.checked)*16;
        DrumP := DrumP + BoolToInt(D1S1342.checked)*32;
        DrumP := DrumP + BoolToInt(D1S1343.checked)*64;
        DrumP := DrumP + BoolToInt(D1S1344.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S1345.checked)*1;
        DrumP := DrumP + BoolToInt(D1S1346.checked)*2;
        DrumP := DrumP + BoolToInt(D1S1347.checked)*4;
        DrumP := DrumP + BoolToInt(D1S1348.checked)*8;
        DrumP := DrumP + BoolToInt(D1S1349.checked)*16;
        DrumP := DrumP + BoolToInt(D1S1350.checked)*32;
        DrumP := DrumP + BoolToInt(D1S1351.checked)*64;
        DrumP := DrumP + BoolToInt(D1S1352.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S1353.checked)*1;
        DrumP := DrumP + BoolToInt(D1S1354.checked)*2;
        DrumP := DrumP + BoolToInt(D1S1355.checked)*4;
        DrumP := DrumP + BoolToInt(D1S1356.checked)*8;
        DrumP := DrumP + BoolToInt(D1S1357.checked)*16;
        DrumP := DrumP + BoolToInt(D1S1358.checked)*32;
        DrumP := DrumP + BoolToInt(D1S1359.checked)*64;
        DrumP := DrumP + BoolToInt(D1S1360.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S1361.checked)*1;
        DrumP := DrumP + BoolToInt(D1S1362.checked)*2;
        DrumP := DrumP + BoolToInt(D1S1363.checked)*4;
        DrumP := DrumP + BoolToInt(D1S1364.checked)*8;
        DrumP := DrumP + BoolToInt(D1S1365.checked)*16;
        DrumP := DrumP + BoolToInt(D1S1366.checked)*32;
        DrumP := DrumP + BoolToInt(D1S1367.checked)*64;
        DrumP := DrumP + BoolToInt(D1S1368.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S1369.checked)*1;
        DrumP := DrumP + BoolToInt(D1S1370.checked)*2;
        DrumP := DrumP + BoolToInt(D1S1371.checked)*4;
        DrumP := DrumP + BoolToInt(D1S1372.checked)*8;
        DrumP := DrumP + BoolToInt(D1S1373.checked)*16;
        DrumP := DrumP + BoolToInt(D1S1374.checked)*32;
        DrumP := DrumP + BoolToInt(D1S1375.checked)*64;
        DrumP := DrumP + BoolToInt(D1S1376.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S1377.checked)*1;
        DrumP := DrumP + BoolToInt(D1S1378.checked)*2;
        DrumP := DrumP + BoolToInt(D1S1379.checked)*4;
        DrumP := DrumP + BoolToInt(D1S1380.checked)*8;
        DrumP := DrumP + BoolToInt(D1S1381.checked)*16;
        DrumP := DrumP + BoolToInt(D1S1382.checked)*32;
        DrumP := DrumP + BoolToInt(D1S1383.checked)*64;
        DrumP := DrumP + BoolToInt(D1S1384.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S1385.checked)*1;
        DrumP := DrumP + BoolToInt(D1S1386.checked)*2;
        DrumP := DrumP + BoolToInt(D1S1387.checked)*4;
        DrumP := DrumP + BoolToInt(D1S1388.checked)*8;
        DrumP := DrumP + BoolToInt(D1S1389.checked)*16;
        DrumP := DrumP + BoolToInt(D1S1390.checked)*32;
        DrumP := DrumP + BoolToInt(D1S1391.checked)*64;
        DrumP := DrumP + BoolToInt(D1S1392.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S1393.checked)*1;
        DrumP := DrumP + BoolToInt(D1S1394.checked)*2;
        DrumP := DrumP + BoolToInt(D1S1395.checked)*4;
        DrumP := DrumP + BoolToInt(D1S1396.checked)*8;
        DrumP := DrumP + BoolToInt(D1S1397.checked)*16;
        DrumP := DrumP + BoolToInt(D1S1398.checked)*32;
        DrumP := DrumP + BoolToInt(D1S1399.checked)*64;
        DrumP := DrumP + BoolToInt(D1S1400.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S1401.checked)*1;
        DrumP := DrumP + BoolToInt(D1S1402.checked)*2;
        DrumP := DrumP + BoolToInt(D1S1403.checked)*4;
        DrumP := DrumP + BoolToInt(D1S1404.checked)*8;
        DrumP := DrumP + BoolToInt(D1S1405.checked)*16;
        DrumP := DrumP + BoolToInt(D1S1406.checked)*32;
        DrumP := DrumP + BoolToInt(D1S1407.checked)*64;
        DrumP := DrumP + BoolToInt(D1S1408.checked)*128;
        BytesWrite:=Filestream.Write(DrumP,1);
        //Ende File
        FileStream.Free;
end;

procedure TMainForm.SavePatternSettings(Patternbase: Integer);
var
  BytesWrite : Integer;
  FileStream : TFileStream;
  FXbase: Integer;
  Tempo: Integer;
  TempoK: Integer;
  TempoR: Integer;
  Buffer : array [0..8] of byte;
  Beat: Integer;
  SwingSWStatusP1 : Integer;
  SwingSWStatusP2 : Integer;

begin
  FXbase:=1674;
  FileStream := tFileStream.Create (filename,fmOpenWrite);
  FileStream.Position := patternbase;
        Patternname:=PatternnameFld.Text;

        move(ord(Patternname[1]), Buffer,8);
        BytesWrite:=Filestream.Write(Buffer,8);

        Tempo := strtoint(TempoLED.Caption);
        TempoR := round(Tempo/2);
        TempoK := (Tempo-TempoR*2)*128;
        BytesWrite:=Filestream.Write(TempoR,1);
        BytesWrite:=Filestream.Write(TempoK,1);
        Swing:=StrToInt(SwingLED.Caption)-50;
        BytesWrite:=Filestream.Write(Swing,1);
        //Rolltype, Patternlength, Beat
        RPB :=0;
        Beat := TimeSignatureSel.Index;
        Case Beat of
             1 : RPB:=RPB+16;
             2 : RPB:=RPB+32;
             3 : RPB:=RPB+48;
        End;
        Rolltype := RolltypeSel.Index;
        Case Rolltype of
             1 : RPB:=RPB+64;
             2 : RPB:=RPB+128;
        End;
        Patternlength := PatternlengthSel.Index;
        RPB:=RPB+Patternlength;
        BytesWrite:=Filestream.Write(RPB,1);
        //Effect Chain
        FXC := FXChainCB.ItemIndex;
        BytesWrite:=Filestream.Write(FXC,1);
        //Laststep (Patternlength per Beat)
        Laststep := StrToInt(LaststepFld.text) - 1;
        BytesWrite:=Filestream.Write(Laststep,1);
        // ArpScale
        ArpScale:=ArpScaleCombobox.ItemIndex;
        BytesWrite:=Filestream.Write(ArpScale,1);
        // Arp Center Note
        ArpCenterNote:=ArpCenterNoteCombobox.ItemIndex;
        BytesWrite:=Filestream.Write(ArpCenterNote,1);

        // Mute Status
        //MuteStatus1.checked
        MuteStatusP1 :=0;
        MuteStatusP1 := MuteStatusP1 + BoolToInt(MuteStatus1.checked)*1;
        MuteStatusP1 := MuteStatusP1 + BoolToInt(MuteStatus2.checked)*2;
        MuteStatusP1 := MuteStatusP1 + BoolToInt(MuteStatus3.checked)*4;
        MuteStatusP1 := MuteStatusP1 + BoolToInt(MuteStatus4.checked)*8;
        MuteStatusP1 := MuteStatusP1 + BoolToInt(MuteStatus5.checked)*16;
        MuteStatusP1 := MuteStatusP1 + BoolToInt(MuteStatus6.checked)*32;
        MuteStatusP1 := MuteStatusP1 + BoolToInt(MuteStatus7.checked)*64;
        MuteStatusP1 := MuteStatusP1 + BoolToInt(MuteStatus8.checked)*128;

        MuteStatusP2 :=0;
        MuteStatusP2 := MuteStatusP2 + BoolToInt(MuteStatus9.checked)*1;
        MuteStatusP2 := MuteStatusP2 + BoolToInt(MuteStatus10.checked)*2;
        MuteStatusP2 := MuteStatusP2 + BoolToInt(MuteStatus11.checked)*4;
        MuteStatusP2 := MuteStatusP2 + BoolToInt(MuteStatus12.checked)*8;
        MuteStatusP2 := MuteStatusP2 + BoolToInt(MuteStatus13.checked)*16;
        MuteStatusP2 := MuteStatusP2 + BoolToInt(MuteStatus14.checked)*32;
        BytesWrite:=Filestream.Write(MuteStatusP1,1);
        BytesWrite:=Filestream.Write(MuteStatusP2,1);
        // Swing Status
        SwingStatusP1 :=0;
        SwingStatusP1 := SwingStatusP1 + BoolToInt(SwingStatus1.checked)*1;
        SwingStatusP1 := SwingStatusP1 + BoolToInt(SwingStatus2.checked)*2;
        SwingStatusP1 := SwingStatusP1 + BoolToInt(SwingStatus3.checked)*4;
        SwingStatusP1 := SwingStatusP1 + BoolToInt(SwingStatus4.checked)*8;
        SwingStatusP1 := SwingStatusP1 + BoolToInt(SwingStatus5.checked)*16;
        SwingStatusP1 := SwingStatusP1 + BoolToInt(SwingStatus7.checked)*32;
        SwingStatusP1 := SwingStatusP1 + BoolToInt(SwingStatus7.checked)*64;
        SwingStatusP1 := SwingStatusP1 + BoolToInt(SwingStatus8.checked)*128;

        SwingStatusP2 :=0;
        SwingStatusP2 := SwingStatusP2 + BoolToInt(SwingStatus9.checked)*1;
        SwingStatusP2 := SwingStatusP2 + BoolToInt(SwingStatus10.checked)*2;
        SwingStatusP2 := SwingStatusP2 + BoolToInt(SwingStatus11.checked)*4;
        SwingStatusP2 := SwingStatusP2 + BoolToInt(SwingStatus12.checked)*8;
        SwingStatusP2 := SwingStatusP2 + BoolToInt(SwingStatus13.checked)*16;
        SwingStatusP2 := SwingStatusP2 + BoolToInt(SwingStatus14.checked)*32;
        BytesWrite:=Filestream.Write(SwingStatusP1,1);
        BytesWrite:=Filestream.Write(SwingStatusP2,1);
        // OutputStatus
        OutputStatusP1 :=0;
        OutputStatusP1 := OutputStatusP1 + ComboBox1.ItemIndex*1;
        OutputStatusP1 := OutputStatusP1 + ComboBox2.ItemIndex*2;
        OutputStatusP1 := OutputStatusP1 + ComboBox3.ItemIndex*4;
        OutputStatusP1 := OutputStatusP1 + ComboBox4.ItemIndex*8;
        OutputStatusP1 := OutputStatusP1 + ComboBox5.ItemIndex*16;
        OutputStatusP1 := OutputStatusP1 + ComboBox6.ItemIndex*32;
        OutputStatusP1 := OutputStatusP1 + ComboBox7.ItemIndex*64;
        OutputStatusP1 := OutputStatusP1 + ComboBox8.ItemIndex*128;

        OutputStatusP2 :=0;
        OutputStatusP2 := OutputStatusP2 + ComboBox9.ItemIndex*1;
        OutputStatusP2 := OutputStatusP2 + ComboBox10.ItemIndex*2;
        OutputStatusP2 := OutputStatusP2 + ComboBox11.ItemIndex*4;
        OutputStatusP2 := OutputStatusP2 + ComboBox12.ItemIndex*8;
        OutputStatusP2 := OutputStatusP2 + ComboBox13.ItemIndex*16;
        OutputStatusP2 := OutputStatusP2 + ComboBox14.ItemIndex*32;
        BytesWrite:=Filestream.Write(OutputStatusP1,1);
        BytesWrite:=Filestream.Write(OutputStatusP2,1);
        // SwingSW Status
        SwingSWStatusP1 :=0;
        SwingSWStatusP1 := SwingSWStatusP1 + BoolToInt(SwingSWStatus1.checked)*1;
        SwingSWStatusP1 := SwingSWStatusP1 + BoolToInt(SwingSWStatus2.checked)*2;
        SwingSWStatusP1 := SwingSWStatusP1 + BoolToInt(SwingSWStatus3.checked)*4;
        SwingSWStatusP1 := SwingSWStatusP1 + BoolToInt(SwingSWStatus4.checked)*8;
        SwingSWStatusP1 := SwingSWStatusP1 + BoolToInt(SwingSWStatus5.checked)*16;
        SwingSWStatusP1 := SwingSWStatusP1 + BoolToInt(SwingSWStatus7.checked)*32;
        SwingSWStatusP1 := SwingSWStatusP1 + BoolToInt(SwingSWStatus7.checked)*64;
        SwingSWStatusP1 := SwingSWStatusP1 + BoolToInt(SwingSWStatus8.checked)*128;
        SwingSWStatusP2 :=0;
        SwingSWStatusP2 := SwingSWStatusP2 + BoolToInt(SwingSWStatus9.checked)*1;
        SwingSWStatusP2 := SwingSWStatusP2 + BoolToInt(SwingSWStatus10.checked)*2;
        SwingSWStatusP2 := SwingSWStatusP2 + BoolToInt(SwingSWStatus11.checked)*4;
        SwingSWStatusP2 := SwingSWStatusP2 + BoolToInt(SwingSWStatus12.checked)*8;
        SwingSWStatusP2 := SwingSWStatusP2 + BoolToInt(SwingSWStatus13.checked)*16;
        SwingSWStatusP2 := SwingSWStatusP2 + BoolToInt(SwingSWStatus14.checked)*32;
        BytesWrite:=Filestream.Write(SwingSWStatusP1,1);
        BytesWrite:=Filestream.Write(SwingSWStatusP2,1);

        // The FX Section
        FileStream.Position := Patternbase+FXbase;
        SelectedFX:=FX1EffectSelectCB.ItemIndex;
        BytesWrite:=Filestream.Write(SelectedFX,1);
        FXParameter1 :=round(FX1Parameter1.position);
        BytesWrite:=Filestream.Write(FXParameter1,1);
        FXParameter2 :=round(FX1Parameter2.position);
        BytesWrite:=Filestream.Write(FXParameter2,1);
        FX1VParameter2.Text:=inttostr(FXParameter2);
        FX1MotionSeq:=0; //Wenn Motionseditor verfügbar ändern!
        BytesWrite:=Filestream.Write(FX1MotionSeq,1);

        SelectedFX:=FX2EffectSelectCB.ItemIndex;
        BytesWrite:=Filestream.Write(SelectedFX,1);
        FXParameter1 :=round(FX2Parameter1.position);
        BytesWrite:=Filestream.Write(FXParameter1,1);
        FXParameter2 :=round(FX2Parameter2.position);
        BytesWrite:=Filestream.Write(FXParameter2,1);
        FX2VParameter2.Text:=inttostr(FXParameter2);
        FX1MotionSeq:=0; //Wenn Motionseditor verfügbar ändern!
        BytesWrite:=Filestream.Write(FX1MotionSeq,1);

        SelectedFX:=FX3EffectSelectCB.ItemIndex;
        BytesWrite:=Filestream.Write(SelectedFX,1);
        FXParameter1 :=round(FX3Parameter1.position);
        BytesWrite:=Filestream.Write(FXParameter1,1);
        FXParameter2 :=round(FX3Parameter2.position);
        BytesWrite:=Filestream.Write(FXParameter2,1);
        FX3VParameter2.Text:=inttostr(FXParameter2);
        FX1MotionSeq:=0; //Wenn Motionseditor verfügbar ändern!
        BytesWrite:=Filestream.Write(FX1MotionSeq,1);
        //Ende File
        FileStream.Free;
end;

procedure TMainForm.CheckDrum1Parameter(Patternbase:Integer);
var
  BytesRead : Integer;
  FileStream : TFileStream;
  FSSSRAC : Integer;
  MTDBSC : Integer;
  MTypeI : Integer;
begin
  FileStream := tFileStream.Create (filename,fmShareDenyNone);
  FileStream.Position := Patternbase+24;
  // Let's Rock
  BytesRead:=Filestream.Read(Samplebanknumber,1);
  IF Not (D1Sample.ItemIndex=Samplebanknumber) Then Errorcode:='1';
  BytesRead:=Filestream.Read(Pitch,1);
  IF Not (D1Pitch.Position=Pitch-64) Then Errorcode:='2';
  BytesRead:=Filestream.Read(DLevel,1);
  IF Not (D1Level.Position=DLevel) Then Errorcode:='3';
  BytesRead:=Filestream.Read(DPan,1);
  IF Not (D1Pan.Position=DPan-64) Then Errorcode:='4';
  BytesRead:=Filestream.Read(DEGTime,1);
  IF Not (D1EGTime.Position=DEGTime) Then Errorcode:='5';
  FSSSRAC:=0;
  BytesRead:=Filestream.Read(FSSSRAC,1);
  If (D1AmpEGB.checked) then FSSSRA:=FSSSRA+16;
  If (D1RollB.checked) then FSSSRA:=FSSSRA+8;
  If (D1FXSend.checked) then FSSSRA:=FSSSRA+4;
  IF Not (FSSSRAC=FSSSRA) Then Errorcode:='6';


  MTDBSC:=0;
  BytesRead:=Filestream.Read(MTDBSC,1);
  MTDBS:=0;
  If (D1BPMSync.checked) then MTDBS:=MTDBS+128;
  MTypeI := D1ModType.ItemIndex;
  Case MTypeI of
       1 : MTDBS:=MTDBS+16;
       2 : MTDBS:=MTDBS+32;
       3 : MTDBS:=MTDBS+48;
       4 : MTDBS:=MTDBS+64;
       end;
  MTDBS:=MTDBS+D1ModDest.ItemIndex;
  IF Not (MTDBSC=MTDBS) Then Errorcode:='7';


  BytesRead:=Filestream.Read(ModulationSpeed,1);
  IF Not (D1ModSpeed.Position=ModulationSpeed) Then Errorcode:='8';
  BytesRead:=Filestream.Read(ModulationDepth,1);
  IF Not (D1ModDepth.Position= (ModulationDepth-64)) Then Errorcode:='9';
  BytesRead:=Filestream.Read(MotionSeqS,1);
  IF Not (D1MotionSeq.ItemIndex=MotionSeqS) Then Errorcode:='10';
  //Ende File lesen
  FileStream.Free;


end;

procedure TMainForm.CheckDrum2Parameter(Patternbase:Integer);
var
  BytesRead : Integer;
  FileStream : TFileStream;
  FSSSRAC : Integer;
  MTDBSC : Integer;
  MTypeI : Integer;
begin

  FSSSRAC:=0;
  MTDBSC:=0;
  FileStream := tFileStream.Create (filename,fmShareDenyNone);
  FileStream.Position := Patternbase+50;
  // Let's Rock
  BytesRead:=Filestream.Read(Samplebanknumber,1);
  IF Not (D1Sample.ItemIndex=Samplebanknumber) Then Errorcode:='11';
  BytesRead:=Filestream.Read(Pitch,1);
  IF Not (D1Pitch.Position=Pitch-64) Then Errorcode:='12';
  BytesRead:=Filestream.Read(DLevel,1);
  IF Not (D1Level.Position=DLevel) Then Errorcode:='13';
  BytesRead:=Filestream.Read(DPan,1);
  IF Not (D1Pan.Position=DPan-64) Then Errorcode:='14';
  BytesRead:=Filestream.Read(DEGTime,1);
  IF Not (D1EGTime.Position=DEGTime) Then Errorcode:='15';

  BytesRead:=Filestream.Read(FSSSRAC,1);
  If (D1AmpEGB.checked) then FSSSRA:=FSSSRA+16;
  If (D1RollB.checked) then FSSSRA:=FSSSRA+8;
  If (D1FXSend.checked) then FSSSRA:=FSSSRA+4;
  IF Not (FSSSRAC=FSSSRA) Then Errorcode:='16';



  BytesRead:=Filestream.Read(MTDBSC,1);
  MTDBS:=0;
  If (D1BPMSync.checked) then MTDBS:=MTDBS+128;
  MTypeI := D1ModType.ItemIndex;
  Case MTypeI of
       1 : MTDBS:=MTDBS+16;
       2 : MTDBS:=MTDBS+32;
       3 : MTDBS:=MTDBS+48;
       4 : MTDBS:=MTDBS+64;
       end;
  MTDBS:=MTDBS+D1ModDest.ItemIndex;
  IF Not (MTDBSC=MTDBS) Then Errorcode:='17';


  BytesRead:=Filestream.Read(ModulationSpeed,1);
  IF Not (D1ModSpeed.Position=ModulationSpeed) Then Errorcode:='18';
  BytesRead:=Filestream.Read(ModulationDepth,1);
  IF Not (D1ModDepth.Position= ModulationDepth-64) Then Errorcode:='19';
  BytesRead:=Filestream.Read(MotionSeqS,1);
  IF Not (D1MotionSeq.ItemIndex=MotionSeqS) Then Errorcode:='20';
  //Ende File lesen
  FileStream.Free;


end;

procedure TMainForm.CheckDrum3Parameter(Patternbase:Integer);
var
  BytesRead : Integer;
  FileStream : TFileStream;
  FSSSRAC : Integer;
  MTDBSC : Integer;
  MTypeI : Integer;

begin
  FSSSRAC:=0;
  MTDBSC:=0;
  FileStream := tFileStream.Create (filename,fmShareDenyNone);
  FileStream.Position := Patternbase+76;
  // Let's Rock
  BytesRead:=Filestream.Read(Samplebanknumber,1);
  IF Not (D1Sample.ItemIndex=Samplebanknumber) Then Errorcode:='21';
  BytesRead:=Filestream.Read(Pitch,1);
  IF Not (D1Pitch.Position=Pitch-64) Then Errorcode:='22';
  BytesRead:=Filestream.Read(DLevel,1);
  IF Not (D1Level.Position=DLevel) Then Errorcode:='23';
  BytesRead:=Filestream.Read(DPan,1);
  IF Not (D1Pan.Position=DPan-64) Then Errorcode:='24';
  BytesRead:=Filestream.Read(DEGTime,1);
  IF Not (D1EGTime.Position=DEGTime) Then Errorcode:='25';

  BytesRead:=Filestream.Read(FSSSRAC,1);
  If (D1AmpEGB.checked) then FSSSRA:=FSSSRA+16;
  If (D1RollB.checked) then FSSSRA:=FSSSRA+8;
  If (D1FXSend.checked) then FSSSRA:=FSSSRA+4;
  IF Not (FSSSRAC=FSSSRA) Then Errorcode:='26';



  BytesRead:=Filestream.Read(MTDBSC,1);
  MTDBS:=0;
  If (D1BPMSync.checked) then MTDBS:=MTDBS+128;
  MTypeI := D1ModType.ItemIndex;
  Case MTypeI of
       1 : MTDBS:=MTDBS+16;
       2 : MTDBS:=MTDBS+32;
       3 : MTDBS:=MTDBS+48;
       4 : MTDBS:=MTDBS+64;
       end;
  MTDBS:=MTDBS+D1ModDest.ItemIndex;
  IF Not (MTDBSC=MTDBS) Then Errorcode:='27';


  BytesRead:=Filestream.Read(ModulationSpeed,1);
  IF Not (D1ModSpeed.Position=ModulationSpeed) Then Errorcode:='28';
  BytesRead:=Filestream.Read(ModulationDepth,1);
  IF Not (D1ModDepth.Position= ModulationDepth-64) Then Errorcode:='29';
  BytesRead:=Filestream.Read(MotionSeqS,1);
  IF Not (D1MotionSeq.ItemIndex=MotionSeqS) Then Errorcode:='30';

  //Ende File lesen
  FileStream.Free;


end;
procedure TMainForm.CheckDrum4Parameter(Patternbase:Integer);
var
  BytesRead : Integer;
  FileStream : TFileStream;
  FSSSRAC : Integer;
  MTDBSC : Integer;
  MTypeI : Integer;
begin
  FSSSRAC:=0;
  MTDBSC:=0;
  FileStream := tFileStream.Create (filename,fmShareDenyNone);
  FileStream.Position := Patternbase+102;
  // Let's Rock
  BytesRead:=Filestream.Read(Samplebanknumber,1);
  IF Not (D1Sample.ItemIndex=Samplebanknumber) Then Errorcode:='31';
  BytesRead:=Filestream.Read(Pitch,1);
  IF Not (D1Pitch.Position=Pitch-64) Then Errorcode:='32';
  BytesRead:=Filestream.Read(DLevel,1);
  IF Not (D1Level.Position=DLevel) Then Errorcode:='33';
  BytesRead:=Filestream.Read(DPan,1);
  IF Not (D1Pan.Position=DPan-64) Then Errorcode:='34';
  BytesRead:=Filestream.Read(DEGTime,1);
  IF Not (D1EGTime.Position=DEGTime) Then Errorcode:='35';

  BytesRead:=Filestream.Read(FSSSRAC,1);
  If (D1AmpEGB.checked) then FSSSRA:=FSSSRA+16;
  If (D1RollB.checked) then FSSSRA:=FSSSRA+8;
  If (D1FXSend.checked) then FSSSRA:=FSSSRA+4;
  IF Not (FSSSRAC=FSSSRA) Then Errorcode:='36';



  BytesRead:=Filestream.Read(MTDBSC,1);
  MTDBS:=0;
  If (D1BPMSync.checked) then MTDBS:=MTDBS+128;
  MTypeI := D1ModType.ItemIndex;
  Case MTypeI of
       1 : MTDBS:=MTDBS+16;
       2 : MTDBS:=MTDBS+32;
       3 : MTDBS:=MTDBS+48;
       4 : MTDBS:=MTDBS+64;
       end;
  MTDBS:=MTDBS+D1ModDest.ItemIndex;
  IF Not (MTDBSC=MTDBS) Then Errorcode:='37';


  BytesRead:=Filestream.Read(ModulationSpeed,1);
  IF Not (D1ModSpeed.Position=ModulationSpeed) Then Errorcode:='38';
  BytesRead:=Filestream.Read(ModulationDepth,1);
  IF Not (D1ModDepth.Position= ModulationDepth-64) Then Errorcode:='39';
  BytesRead:=Filestream.Read(MotionSeqS,1);
  IF Not (D1MotionSeq.ItemIndex=MotionSeqS) Then Errorcode:='40';

  //Ende File lesen
  FileStream.Free;


end;

procedure TMainForm.CheckDrum5Parameter(Patternbase:Integer);
var
  BytesRead : Integer;
  FileStream : TFileStream;
  FSSSRAC : Integer;
  MTDBSC : Integer;
  MTypeI : Integer;
begin

  FSSSRAC:=0;
  MTDBSC:=0;
  FileStream := tFileStream.Create (filename,fmShareDenyNone);
  FileStream.Position := Patternbase+128;
  // Let's Rock
  BytesRead:=Filestream.Read(Samplebanknumber,1);
  IF Not (D1Sample.ItemIndex=Samplebanknumber) Then Errorcode:='41';
  BytesRead:=Filestream.Read(Pitch,1);
  IF Not (D1Pitch.Position=Pitch-64) Then Errorcode:='42';
  BytesRead:=Filestream.Read(DLevel,1);
  IF Not (D1Level.Position=DLevel) Then Errorcode:='43';
  BytesRead:=Filestream.Read(DPan,1);
  IF Not (D1Pan.Position=DPan-64) Then Errorcode:='44';
  BytesRead:=Filestream.Read(DEGTime,1);
  IF Not (D1EGTime.Position=DEGTime) Then Errorcode:='45';

  BytesRead:=Filestream.Read(FSSSRAC,1);
  If (D1AmpEGB.checked) then FSSSRA:=FSSSRA+16;
  If (D1RollB.checked) then FSSSRA:=FSSSRA+8;
  If (D1FXSend.checked) then FSSSRA:=FSSSRA+4;
  IF Not (FSSSRAC=FSSSRA) Then Errorcode:='46';



  BytesRead:=Filestream.Read(MTDBSC,1);
  MTDBS:=0;
  If (D1BPMSync.checked) then MTDBS:=MTDBS+128;
  MTypeI := D1ModType.ItemIndex;
  Case MTypeI of
       1 : MTDBS:=MTDBS+16;
       2 : MTDBS:=MTDBS+32;
       3 : MTDBS:=MTDBS+48;
       4 : MTDBS:=MTDBS+64;
       end;
  MTDBS:=MTDBS+D1ModDest.ItemIndex;
  IF Not (MTDBSC=MTDBS) Then Errorcode:='47';


  BytesRead:=Filestream.Read(ModulationSpeed,1);
  IF Not (D1ModSpeed.Position=ModulationSpeed) Then Errorcode:='48';
  BytesRead:=Filestream.Read(ModulationDepth,1);
  IF Not (D1ModDepth.Position= ModulationDepth-64) Then Errorcode:='49';
  BytesRead:=Filestream.Read(MotionSeqS,1);
  IF Not (D1MotionSeq.ItemIndex=MotionSeqS) Then Errorcode:='50';

  //Ende File lesen
  FileStream.Free;


end;

procedure TMainForm.CheckDrum6AParameter(Patternbase:Integer);
var
  BytesRead : Integer;
  FileStream : TFileStream;
  FSSSRAC : Integer;
  MTDBSC : Integer;
  MTypeI : Integer;

begin
  FSSSRAC:=0;
  MTDBSC:=0;
  FileStream := tFileStream.Create (filename,fmShareDenyNone);
  FileStream.Position := Patternbase+154;
  // Let's Rock
  BytesRead:=Filestream.Read(Samplebanknumber,1);
  IF Not (D1Sample.ItemIndex=Samplebanknumber) Then Errorcode:='51';
  BytesRead:=Filestream.Read(Pitch,1);
  IF Not (D1Pitch.Position=Pitch-64) Then Errorcode:='52';
  BytesRead:=Filestream.Read(DLevel,1);
  IF Not (D1Level.Position=DLevel) Then Errorcode:='53';
  BytesRead:=Filestream.Read(DPan,1);
  IF Not (D1Pan.Position=DPan-64) Then Errorcode:='54';
  BytesRead:=Filestream.Read(DEGTime,1);
  IF Not (D1EGTime.Position=DEGTime) Then Errorcode:='55';

  BytesRead:=Filestream.Read(FSSSRAC,1);
  If (D1AmpEGB.checked) then FSSSRA:=FSSSRA+16;
  If (D1RollB.checked) then FSSSRA:=FSSSRA+8;
  If (D1FXSend.checked) then FSSSRA:=FSSSRA+4;
  IF Not (FSSSRAC=FSSSRA) Then Errorcode:='56';



  BytesRead:=Filestream.Read(MTDBSC,1);
  MTDBS:=0;
  If (D1BPMSync.checked) then MTDBS:=MTDBS+128;
  MTypeI := D1ModType.ItemIndex;
  Case MTypeI of
       1 : MTDBS:=MTDBS+16;
       2 : MTDBS:=MTDBS+32;
       3 : MTDBS:=MTDBS+48;
       4 : MTDBS:=MTDBS+64;
       end;
  MTDBS:=MTDBS+D1ModDest.ItemIndex;
  IF Not (MTDBSC=MTDBS) Then Errorcode:='57';


  BytesRead:=Filestream.Read(ModulationSpeed,1);
  IF Not (D1ModSpeed.Position=ModulationSpeed) Then Errorcode:='58';
  BytesRead:=Filestream.Read(ModulationDepth,1);
  IF Not (D1ModDepth.Position= ModulationDepth-64) Then Errorcode:='59';
  BytesRead:=Filestream.Read(MotionSeqS,1);
  IF Not (D1MotionSeq.ItemIndex=MotionSeqS) Then Errorcode:='60';

  //Ende File lesen
  FileStream.Free;


end;

procedure TMainForm.CheckDrum6BParameter(Patternbase:Integer);
var
  BytesRead : Integer;
  FileStream : TFileStream;
  FSSSRAC : Integer;
  MTDBSC : Integer;
  MTypeI : Integer;
begin

  FSSSRAC:=0;
  MTDBSC:=0;
  FileStream := tFileStream.Create (filename,fmShareDenyNone);
  FileStream.Position := Patternbase+180;
  // Let's Rock
  BytesRead:=Filestream.Read(Samplebanknumber,1);
  IF Not (D1Sample.ItemIndex=Samplebanknumber) Then Errorcode:='61';
  BytesRead:=Filestream.Read(Pitch,1);
  IF Not (D1Pitch.Position=Pitch-64) Then Errorcode:='62';
  BytesRead:=Filestream.Read(DLevel,1);
  IF Not (D1Level.Position=DLevel) Then Errorcode:='63';
  BytesRead:=Filestream.Read(DPan,1);
  IF Not (D1Pan.Position=DPan-64) Then Errorcode:='64';
  BytesRead:=Filestream.Read(DEGTime,1);
  IF Not (D1EGTime.Position=DEGTime) Then Errorcode:='65';

  BytesRead:=Filestream.Read(FSSSRAC,1);
  If (D1AmpEGB.checked) then FSSSRA:=FSSSRA+16;
  If (D1RollB.checked) then FSSSRA:=FSSSRA+8;
  If (D1FXSend.checked) then FSSSRA:=FSSSRA+4;
  IF Not (FSSSRAC=FSSSRA) Then Errorcode:='66';



  BytesRead:=Filestream.Read(MTDBSC,1);
  MTDBS:=0;
  If (D1BPMSync.checked) then MTDBS:=MTDBS+128;
  MTypeI := D1ModType.ItemIndex;
  Case MTypeI of
       1 : MTDBS:=MTDBS+16;
       2 : MTDBS:=MTDBS+32;
       3 : MTDBS:=MTDBS+48;
       4 : MTDBS:=MTDBS+64;
       end;
  MTDBS:=MTDBS+D1ModDest.ItemIndex;
  IF Not (MTDBSC=MTDBS) Then Errorcode:='67';


  BytesRead:=Filestream.Read(ModulationSpeed,1);
  IF Not (D1ModSpeed.Position=ModulationSpeed) Then Errorcode:='68';
  BytesRead:=Filestream.Read(ModulationDepth,1);
  IF Not (D1ModDepth.Position= ModulationDepth-64) Then Errorcode:='69';
  BytesRead:=Filestream.Read(MotionSeqS,1);
  IF Not (D1MotionSeq.ItemIndex=MotionSeqS) Then Errorcode:='70';

  //Ende File lesen
  FileStream.Free;


end;

procedure TMainForm.CheckDrum7AParameter(Patternbase:Integer);
var
  BytesRead : Integer;
  FileStream : TFileStream;
   FSSSRAC : Integer;
  MTDBSC : Integer;
  MTypeI : Integer;

begin
  FSSSRAC:=0;
  MTDBSC:=0;
  FileStream := tFileStream.Create (filename,fmShareDenyNone);
  FileStream.Position := Patternbase+206;
  // Let's Rock
  BytesRead:=Filestream.Read(Samplebanknumber,1);
  IF Not (D1Sample.ItemIndex=Samplebanknumber) Then Errorcode:='71';
  BytesRead:=Filestream.Read(Pitch,1);
  IF Not (D1Pitch.Position=Pitch-64) Then Errorcode:='72';
  BytesRead:=Filestream.Read(DLevel,1);
  IF Not (D1Level.Position=DLevel) Then Errorcode:='73';
  BytesRead:=Filestream.Read(DPan,1);
  IF Not (D1Pan.Position=DPan-64) Then Errorcode:='74';
  BytesRead:=Filestream.Read(DEGTime,1);
  IF Not (D1EGTime.Position=DEGTime) Then Errorcode:='75';

  BytesRead:=Filestream.Read(FSSSRAC,1);
  If (D1AmpEGB.checked) then FSSSRA:=FSSSRA+16;
  If (D1RollB.checked) then FSSSRA:=FSSSRA+8;
  If (D1FXSend.checked) then FSSSRA:=FSSSRA+4;
  IF Not (FSSSRAC=FSSSRA) Then Errorcode:='76';



  BytesRead:=Filestream.Read(MTDBSC,1);
  MTDBS:=0;
  If (D1BPMSync.checked) then MTDBS:=MTDBS+128;
  MTypeI := D1ModType.ItemIndex;
  Case MTypeI of
       1 : MTDBS:=MTDBS+16;
       2 : MTDBS:=MTDBS+32;
       3 : MTDBS:=MTDBS+48;
       4 : MTDBS:=MTDBS+64;
       end;
  MTDBS:=MTDBS+D1ModDest.ItemIndex;
  IF Not (MTDBSC=MTDBS) Then Errorcode:='77';


  BytesRead:=Filestream.Read(ModulationSpeed,1);
  IF Not (D1ModSpeed.Position=ModulationSpeed) Then Errorcode:='78';
  BytesRead:=Filestream.Read(ModulationDepth,1);
  IF Not (D1ModDepth.Position= ModulationDepth-64) Then Errorcode:='79';
  BytesRead:=Filestream.Read(MotionSeqS,1);
  IF Not (D1MotionSeq.ItemIndex=MotionSeqS) Then Errorcode:='80';

  //Ende File lesen
  FileStream.Free;

end;

procedure TMainForm.CheckDrum7BParameter(Patternbase:Integer);
var
  BytesRead : Integer;
  FileStream : TFileStream;
  FSSSRAC : Integer;
  MTDBSC : Integer;
  MTypeI : Integer;

begin
  FSSSRAC:=0;
  MTDBSC:=0;
  FileStream := tFileStream.Create (filename,fmShareDenyNone);
  FileStream.Position := Patternbase+232;
  // Let's Rock
  BytesRead:=Filestream.Read(Samplebanknumber,1);
  IF Not (D1Sample.ItemIndex=Samplebanknumber) Then Errorcode:='81';
  BytesRead:=Filestream.Read(Pitch,1);
  IF Not (D1Pitch.Position=Pitch-64) Then Errorcode:='82';
  BytesRead:=Filestream.Read(DLevel,1);
  IF Not (D1Level.Position=DLevel) Then Errorcode:='83';
  BytesRead:=Filestream.Read(DPan,1);
  IF Not (D1Pan.Position=DPan-64) Then Errorcode:='84';
  BytesRead:=Filestream.Read(DEGTime,1);
  IF Not (D1EGTime.Position=DEGTime) Then Errorcode:='85';

  BytesRead:=Filestream.Read(FSSSRAC,1);
  If (D1AmpEGB.checked) then FSSSRA:=FSSSRA+16;
  If (D1RollB.checked) then FSSSRA:=FSSSRA+8;
  If (D1FXSend.checked) then FSSSRA:=FSSSRA+4;
  IF Not (FSSSRAC=FSSSRA) Then Errorcode:='86';



  BytesRead:=Filestream.Read(MTDBSC,1);
  MTDBS:=0;
  If (D1BPMSync.checked) then MTDBS:=MTDBS+128;
  MTypeI := D1ModType.ItemIndex;
  Case MTypeI of
       1 : MTDBS:=MTDBS+16;
       2 : MTDBS:=MTDBS+32;
       3 : MTDBS:=MTDBS+48;
       4 : MTDBS:=MTDBS+64;
       end;
  MTDBS:=MTDBS+D1ModDest.ItemIndex;
  IF Not (MTDBSC=MTDBS) Then Errorcode:='7';


  BytesRead:=Filestream.Read(ModulationSpeed,1);
  IF Not (D1ModSpeed.Position=ModulationSpeed) Then Errorcode:='88';
  BytesRead:=Filestream.Read(ModulationDepth,1);
  IF Not (D1ModDepth.Position= ModulationDepth-64) Then Errorcode:='89';
  BytesRead:=Filestream.Read(MotionSeqS,1);
  IF Not (D1MotionSeq.ItemIndex=MotionSeqS) Then Errorcode:='90';

  //Ende File lesen
  FileStream.Free;


end;

procedure TMainForm.CheckDrum1Sequence(patternbase:Integer);
var
  BytesRead : Integer;
  FileStream : TFileStream;
  DrumPC : Integer;
begin
  FileStream := tFileStream.Create (filename,fmShareDenyNone);
  // Let's Rock
    FileStream.Position := patternbase+24+10;
  //The Pattern
  DrumP :=0;
  DrumPC :=0;
  DrumP := DrumP + BoolToInt(D1S1.checked)*1;
  DrumP := DrumP + BoolToInt(D1S2.checked)*2;
  DrumP := DrumP + BoolToInt(D1S3.checked)*4;
  DrumP := DrumP + BoolToInt(D1S4.checked)*8;
  DrumP := DrumP + BoolToInt(D1S5.checked)*16;
  DrumP := DrumP + BoolToInt(D1S6.checked)*32;
  DrumP := DrumP + BoolToInt(D1S7.checked)*64;
  DrumP := DrumP + BoolToInt(D1S8.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='1001';
  DrumP :=0;
  DrumP := DrumP + BoolToInt(D1S9.checked)*1;
  DrumP := DrumP + BoolToInt(D1S10.checked)*2;
  DrumP := DrumP + BoolToInt(D1S11.checked)*4;
  DrumP := DrumP + BoolToInt(D1S12.checked)*8;
  DrumP := DrumP + BoolToInt(D1S13.checked)*16;
  DrumP := DrumP + BoolToInt(D1S14.checked)*32;
  DrumP := DrumP + BoolToInt(D1S15.checked)*64;
  DrumP := DrumP + BoolToInt(D1S16.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='1002';
  DrumP :=0;
  DrumP := DrumP + BoolToInt(D1S17.checked)*1;
  DrumP := DrumP + BoolToInt(D1S18.checked)*2;
  DrumP := DrumP + BoolToInt(D1S19.checked)*4;
  DrumP := DrumP + BoolToInt(D1S20.checked)*8;
  DrumP := DrumP + BoolToInt(D1S21.checked)*16;
  DrumP := DrumP + BoolToInt(D1S22.checked)*32;
  DrumP := DrumP + BoolToInt(D1S23.checked)*64;
  DrumP := DrumP + BoolToInt(D1S24.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='1003';
  DrumP :=0;
  DrumP := DrumP + BoolToInt(D1S25.checked)*1;
  DrumP := DrumP + BoolToInt(D1S26.checked)*2;
  DrumP := DrumP + BoolToInt(D1S27.checked)*4;
  DrumP := DrumP + BoolToInt(D1S28.checked)*8;
  DrumP := DrumP + BoolToInt(D1S29.checked)*16;
  DrumP := DrumP + BoolToInt(D1S30.checked)*32;
  DrumP := DrumP + BoolToInt(D1S31.checked)*64;
  DrumP := DrumP + BoolToInt(D1S32.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='1004';
  DrumP :=0;
  DrumP := DrumP + BoolToInt(D1S33.checked)*1;
  DrumP := DrumP + BoolToInt(D1S34.checked)*2;
  DrumP := DrumP + BoolToInt(D1S35.checked)*4;
  DrumP := DrumP + BoolToInt(D1S36.checked)*8;
  DrumP := DrumP + BoolToInt(D1S37.checked)*16;
  DrumP := DrumP + BoolToInt(D1S38.checked)*32;
  DrumP := DrumP + BoolToInt(D1S39.checked)*64;
  DrumP := DrumP + BoolToInt(D1S40.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='1005';
  DrumP :=0;
  DrumP := DrumP + BoolToInt(D1S41.checked)*1;
  DrumP := DrumP + BoolToInt(D1S42.checked)*2;
  DrumP := DrumP + BoolToInt(D1S43.checked)*4;
  DrumP := DrumP + BoolToInt(D1S44.checked)*8;
  DrumP := DrumP + BoolToInt(D1S45.checked)*16;
  DrumP := DrumP + BoolToInt(D1S46.checked)*32;
  DrumP := DrumP + BoolToInt(D1S47.checked)*64;
  DrumP := DrumP + BoolToInt(D1S48.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='1006';
  DrumP :=0;
  DrumP := DrumP + BoolToInt(D1S49.checked)*1;
  DrumP := DrumP + BoolToInt(D1S50.checked)*2;
  DrumP := DrumP + BoolToInt(D1S51.checked)*4;
  DrumP := DrumP + BoolToInt(D1S52.checked)*8;
  DrumP := DrumP + BoolToInt(D1S53.checked)*16;
  DrumP := DrumP + BoolToInt(D1S54.checked)*32;
  DrumP := DrumP + BoolToInt(D1S55.checked)*64;
  DrumP := DrumP + BoolToInt(D1S56.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='1007';
  DrumP :=0;
  DrumP := DrumP + BoolToInt(D1S57.checked)*1;
  DrumP := DrumP + BoolToInt(D1S58.checked)*2;
  DrumP := DrumP + BoolToInt(D1S59.checked)*4;
  DrumP := DrumP + BoolToInt(D1S60.checked)*8;
  DrumP := DrumP + BoolToInt(D1S61.checked)*16;
  DrumP := DrumP + BoolToInt(D1S62.checked)*32;
  DrumP := DrumP + BoolToInt(D1S63.checked)*64;
  DrumP := DrumP + BoolToInt(D1S64.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='1008';
  DrumP :=0;
  DrumP := DrumP + BoolToInt(D1S65.checked)*1;
  DrumP := DrumP + BoolToInt(D1S66.checked)*2;
  DrumP := DrumP + BoolToInt(D1S67.checked)*4;
  DrumP := DrumP + BoolToInt(D1S68.checked)*8;
  DrumP := DrumP + BoolToInt(D1S69.checked)*16;
  DrumP := DrumP + BoolToInt(D1S70.checked)*32;
  DrumP := DrumP + BoolToInt(D1S71.checked)*64;
  DrumP := DrumP + BoolToInt(D1S72.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='1009';
  DrumP :=0;
  DrumP := DrumP + BoolToInt(D1S73.checked)*1;
  DrumP := DrumP + BoolToInt(D1S74.checked)*2;
  DrumP := DrumP + BoolToInt(D1S75.checked)*4;
  DrumP := DrumP + BoolToInt(D1S76.checked)*8;
  DrumP := DrumP + BoolToInt(D1S77.checked)*16;
  DrumP := DrumP + BoolToInt(D1S78.checked)*32;
  DrumP := DrumP + BoolToInt(D1S79.checked)*64;
  DrumP := DrumP + BoolToInt(D1S80.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='1010';
  DrumP :=0;
  DrumP := DrumP + BoolToInt(D1S81.checked)*1;
  DrumP := DrumP + BoolToInt(D1S82.checked)*2;
  DrumP := DrumP + BoolToInt(D1S83.checked)*4;
  DrumP := DrumP + BoolToInt(D1S84.checked)*8;
  DrumP := DrumP + BoolToInt(D1S85.checked)*16;
  DrumP := DrumP + BoolToInt(D1S86.checked)*32;
  DrumP := DrumP + BoolToInt(D1S87.checked)*64;
  DrumP := DrumP + BoolToInt(D1S88.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='1011';
  DrumP :=0;
  DrumP := DrumP + BoolToInt(D1S89.checked)*1;
  DrumP := DrumP + BoolToInt(D1S90.checked)*2;
  DrumP := DrumP + BoolToInt(D1S91.checked)*4;
  DrumP := DrumP + BoolToInt(D1S92.checked)*8;
  DrumP := DrumP + BoolToInt(D1S93.checked)*16;
  DrumP := DrumP + BoolToInt(D1S94.checked)*32;
  DrumP := DrumP + BoolToInt(D1S95.checked)*64;
  DrumP := DrumP + BoolToInt(D1S96.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='1012';
  DrumP :=0;
  DrumP := DrumP + BoolToInt(D1S97.checked)*1;
  DrumP := DrumP + BoolToInt(D1S98.checked)*2;
  DrumP := DrumP + BoolToInt(D1S99.checked)*4;
  DrumP := DrumP + BoolToInt(D1S100.checked)*8;
  DrumP := DrumP + BoolToInt(D1S101.checked)*16;
  DrumP := DrumP + BoolToInt(D1S102.checked)*32;
  DrumP := DrumP + BoolToInt(D1S103.checked)*64;
  DrumP := DrumP + BoolToInt(D1S104.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='1013';
  DrumP :=0;
  DrumP := DrumP + BoolToInt(D1S105.checked)*1;
  DrumP := DrumP + BoolToInt(D1S106.checked)*2;
  DrumP := DrumP + BoolToInt(D1S107.checked)*4;
  DrumP := DrumP + BoolToInt(D1S108.checked)*8;
  DrumP := DrumP + BoolToInt(D1S109.checked)*16;
  DrumP := DrumP + BoolToInt(D1S110.checked)*32;
  DrumP := DrumP + BoolToInt(D1S111.checked)*64;
  DrumP := DrumP + BoolToInt(D1S112.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='1014';
  DrumP :=0;
  DrumP := DrumP + BoolToInt(D1S113.checked)*1;
  DrumP := DrumP + BoolToInt(D1S114.checked)*2;
  DrumP := DrumP + BoolToInt(D1S115.checked)*4;
  DrumP := DrumP + BoolToInt(D1S116.checked)*8;
  DrumP := DrumP + BoolToInt(D1S117.checked)*16;
  DrumP := DrumP + BoolToInt(D1S118.checked)*32;
  DrumP := DrumP + BoolToInt(D1S119.checked)*64;
  DrumP := DrumP + BoolToInt(D1S120.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='1015';
  DrumP :=0;
  DrumP := DrumP + BoolToInt(D1S121.checked)*1;
  DrumP := DrumP + BoolToInt(D1S122.checked)*2;
  DrumP := DrumP + BoolToInt(D1S123.checked)*4;
  DrumP := DrumP + BoolToInt(D1S124.checked)*8;
  DrumP := DrumP + BoolToInt(D1S125.checked)*16;
  DrumP := DrumP + BoolToInt(D1S126.checked)*32;
  DrumP := DrumP + BoolToInt(D1S127.checked)*64;
  DrumP := DrumP + BoolToInt(D1S128.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='1016';
  //Ende File
  FileStream.Free;
end;
procedure TMainform.CheckDrum2Sequence(Patternbase: Integer);
var
BytesRead : Integer;
FileStream : TFileStream;
DrumPC : Integer;
begin
//The Pattern

	FileStream := tFileStream.Create (filename,fmShareDenyNone);
	FileStream.Position := patternbase+50+10;
        DrumP :=0;
        DrumPC :=0;
	DrumP := DrumP + BoolToInt(D1S129.checked)*1;
	DrumP := DrumP + BoolToInt(D1S130.checked)*2;
	DrumP := DrumP + BoolToInt(D1S131.checked)*4;
	DrumP := DrumP + BoolToInt(D1S132.checked)*8;
	DrumP := DrumP + BoolToInt(D1S133.checked)*16;
	DrumP := DrumP + BoolToInt(D1S134.checked)*32;
	DrumP := DrumP + BoolToInt(D1S135.checked)*64;
	DrumP := DrumP + BoolToInt(D1S136.checked)*128;
	BytesRead:=Filestream.Read(DrumPC,1);
	IF Not(DrumP=DrumPC) Then Errorcode:='2001';
	DrumP :=0;
	DrumP := DrumP + BoolToInt(D1S137.checked)*1;
	DrumP := DrumP + BoolToInt(D1S138.checked)*2;
	DrumP := DrumP + BoolToInt(D1S139.checked)*4;
	DrumP := DrumP + BoolToInt(D1S140.checked)*8;
	DrumP := DrumP + BoolToInt(D1S141.checked)*16;
	DrumP := DrumP + BoolToInt(D1S142.checked)*32;
	DrumP := DrumP + BoolToInt(D1S143.checked)*64;
	DrumP := DrumP + BoolToInt(D1S144.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='2002';
  DrumP :=0;
	DrumP := DrumP + BoolToInt(D1S145.checked)*1;
	DrumP := DrumP + BoolToInt(D1S146.checked)*2;
	DrumP := DrumP + BoolToInt(D1S147.checked)*4;
	DrumP := DrumP + BoolToInt(D1S148.checked)*8;
	DrumP := DrumP + BoolToInt(D1S149.checked)*16;
	DrumP := DrumP + BoolToInt(D1S150.checked)*32;
	DrumP := DrumP + BoolToInt(D1S151.checked)*64;
	DrumP := DrumP + BoolToInt(D1S152.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='2003';
  DrumP :=0;
	DrumP := DrumP + BoolToInt(D1S153.checked)*1;
	DrumP := DrumP + BoolToInt(D1S154.checked)*2;
	DrumP := DrumP + BoolToInt(D1S155.checked)*4;
	DrumP := DrumP + BoolToInt(D1S156.checked)*8;
	DrumP := DrumP + BoolToInt(D1S157.checked)*16;
	DrumP := DrumP + BoolToInt(D1S158.checked)*32;
	DrumP := DrumP + BoolToInt(D1S159.checked)*64;
	DrumP := DrumP + BoolToInt(D1S160.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='2004';
  DrumP :=0;
	DrumP := DrumP + BoolToInt(D1S161.checked)*1;
	DrumP := DrumP + BoolToInt(D1S162.checked)*2;
	DrumP := DrumP + BoolToInt(D1S163.checked)*4;
	DrumP := DrumP + BoolToInt(D1S164.checked)*8;
	DrumP := DrumP + BoolToInt(D1S165.checked)*16;
	DrumP := DrumP + BoolToInt(D1S166.checked)*32;
	DrumP := DrumP + BoolToInt(D1S167.checked)*64;
	DrumP := DrumP + BoolToInt(D1S168.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='2005';
	DrumP :=0;
	DrumP := DrumP + BoolToInt(D1S169.checked)*1;
	DrumP := DrumP + BoolToInt(D1S170.checked)*2;
	DrumP := DrumP + BoolToInt(D1S171.checked)*4;
	DrumP := DrumP + BoolToInt(D1S172.checked)*8;
	DrumP := DrumP + BoolToInt(D1S173.checked)*16;
	DrumP := DrumP + BoolToInt(D1S174.checked)*32;
	DrumP := DrumP + BoolToInt(D1S175.checked)*64;
	DrumP := DrumP + BoolToInt(D1S176.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='2006';
	DrumP :=0;
	DrumP := DrumP + BoolToInt(D1S177.checked)*1;
	DrumP := DrumP + BoolToInt(D1S178.checked)*2;
	DrumP := DrumP + BoolToInt(D1S179.checked)*4;
	DrumP := DrumP + BoolToInt(D1S180.checked)*8;
	DrumP := DrumP + BoolToInt(D1S181.checked)*16;
	DrumP := DrumP + BoolToInt(D1S182.checked)*32;
	DrumP := DrumP + BoolToInt(D1S183.checked)*64;
	DrumP := DrumP + BoolToInt(D1S184.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='2007';
	DrumP :=0;
	DrumP := DrumP + BoolToInt(D1S185.checked)*1;
	DrumP := DrumP + BoolToInt(D1S186.checked)*2;
	DrumP := DrumP + BoolToInt(D1S187.checked)*4;
	DrumP := DrumP + BoolToInt(D1S188.checked)*8;
	DrumP := DrumP + BoolToInt(D1S189.checked)*16;
	DrumP := DrumP + BoolToInt(D1S190.checked)*32;
	DrumP := DrumP + BoolToInt(D1S191.checked)*64;
	DrumP := DrumP + BoolToInt(D1S192.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='2008';
	DrumP :=0;
	DrumP := DrumP + BoolToInt(D1S193.checked)*1;
	DrumP := DrumP + BoolToInt(D1S194.checked)*2;
	DrumP := DrumP + BoolToInt(D1S195.checked)*4;
	DrumP := DrumP + BoolToInt(D1S196.checked)*8;
	DrumP := DrumP + BoolToInt(D1S197.checked)*16;
	DrumP := DrumP + BoolToInt(D1S198.checked)*32;
	DrumP := DrumP + BoolToInt(D1S199.checked)*64;
	DrumP := DrumP + BoolToInt(D1S200.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='2009';
	DrumP :=0;
	DrumP := DrumP + BoolToInt(D1S201.checked)*1;
	DrumP := DrumP + BoolToInt(D1S202.checked)*2;
	DrumP := DrumP + BoolToInt(D1S203.checked)*4;
	DrumP := DrumP + BoolToInt(D1S204.checked)*8;
	DrumP := DrumP + BoolToInt(D1S205.checked)*16;
	DrumP := DrumP + BoolToInt(D1S206.checked)*32;
	DrumP := DrumP + BoolToInt(D1S207.checked)*64;
	DrumP := DrumP + BoolToInt(D1S208.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='2010';
	DrumP :=0;
	DrumP := DrumP + BoolToInt(D1S209.checked)*1;
	DrumP := DrumP + BoolToInt(D1S210.checked)*2;
	DrumP := DrumP + BoolToInt(D1S211.checked)*4;
	DrumP := DrumP + BoolToInt(D1S212.checked)*8;
	DrumP := DrumP + BoolToInt(D1S213.checked)*16;
	DrumP := DrumP + BoolToInt(D1S214.checked)*32;
	DrumP := DrumP + BoolToInt(D1S215.checked)*64;
	DrumP := DrumP + BoolToInt(D1S216.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='2011';
	DrumP :=0;
	DrumP := DrumP + BoolToInt(D1S217.checked)*1;
	DrumP := DrumP + BoolToInt(D1S218.checked)*2;
	DrumP := DrumP + BoolToInt(D1S219.checked)*4;
	DrumP := DrumP + BoolToInt(D1S220.checked)*8;
	DrumP := DrumP + BoolToInt(D1S221.checked)*16;
	DrumP := DrumP + BoolToInt(D1S222.checked)*32;
	DrumP := DrumP + BoolToInt(D1S223.checked)*64;
	DrumP := DrumP + BoolToInt(D1S224.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='2012';
	DrumP :=0;
	DrumP := DrumP + BoolToInt(D1S225.checked)*1;
	DrumP := DrumP + BoolToInt(D1S226.checked)*2;
	DrumP := DrumP + BoolToInt(D1S227.checked)*4;
	DrumP := DrumP + BoolToInt(D1S228.checked)*8;
	DrumP := DrumP + BoolToInt(D1S229.checked)*16;
	DrumP := DrumP + BoolToInt(D1S230.checked)*32;
	DrumP := DrumP + BoolToInt(D1S231.checked)*64;
	DrumP := DrumP + BoolToInt(D1S232.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='2013';
	DrumP :=0;
	DrumP := DrumP + BoolToInt(D1S233.checked)*1;
	DrumP := DrumP + BoolToInt(D1S234.checked)*2;
	DrumP := DrumP + BoolToInt(D1S235.checked)*4;
	DrumP := DrumP + BoolToInt(D1S236.checked)*8;
	DrumP := DrumP + BoolToInt(D1S237.checked)*16;
	DrumP := DrumP + BoolToInt(D1S238.checked)*32;
	DrumP := DrumP + BoolToInt(D1S239.checked)*64;
	DrumP := DrumP + BoolToInt(D1S240.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='2014';
	DrumP :=0;
	DrumP := DrumP + BoolToInt(D1S241.checked)*1;
	DrumP := DrumP + BoolToInt(D1S242.checked)*2;
	DrumP := DrumP + BoolToInt(D1S243.checked)*4;
	DrumP := DrumP + BoolToInt(D1S244.checked)*8;
	DrumP := DrumP + BoolToInt(D1S245.checked)*16;
	DrumP := DrumP + BoolToInt(D1S246.checked)*32;
	DrumP := DrumP + BoolToInt(D1S247.checked)*64;
	DrumP := DrumP + BoolToInt(D1S248.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='2015';
	DrumP :=0;
	DrumP := DrumP + BoolToInt(D1S249.checked)*1;
	DrumP := DrumP + BoolToInt(D1S250.checked)*2;
	DrumP := DrumP + BoolToInt(D1S251.checked)*4;
	DrumP := DrumP + BoolToInt(D1S252.checked)*8;
	DrumP := DrumP + BoolToInt(D1S253.checked)*16;
	DrumP := DrumP + BoolToInt(D1S254.checked)*32;
	DrumP := DrumP + BoolToInt(D1S255.checked)*64;
	DrumP := DrumP + BoolToInt(D1S256.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='2016';
  //Ende File
  FileStream.Free;
end;

procedure TMainForm.CheckDrum3Sequence(Patternbase: Integer);
var
  BytesRead : Integer;
  FileStream : TFileStream;
  DrumPC : Integer;
begin

	FileStream := tFileStream.Create (filename,fmShareDenyNone);
	FileStream.Position := patternbase+76+10;
        //The Pattern
        DrumP :=0;
        DrumPC :=0;
	DrumP := DrumP + BoolToInt(D1S257.checked)*1;
	DrumP := DrumP + BoolToInt(D1S258.checked)*2;
	DrumP := DrumP + BoolToInt(D1S259.checked)*4;
	DrumP := DrumP + BoolToInt(D1S260.checked)*8;
	DrumP := DrumP + BoolToInt(D1S261.checked)*16;
	DrumP := DrumP + BoolToInt(D1S262.checked)*32;
	DrumP := DrumP + BoolToInt(D1S263.checked)*64;
	DrumP := DrumP + BoolToInt(D1S264.checked)*128;
	BytesRead:=Filestream.Read(DrumPC,1);
	IF Not(DrumP=DrumPC) Then Errorcode:='3001';
	DrumP :=0;
	DrumP := DrumP + BoolToInt(D1S265.checked)*1;
	DrumP := DrumP + BoolToInt(D1S266.checked)*2;
	DrumP := DrumP + BoolToInt(D1S267.checked)*4;
	DrumP := DrumP + BoolToInt(D1S268.checked)*8;
	DrumP := DrumP + BoolToInt(D1S269.checked)*16;
	DrumP := DrumP + BoolToInt(D1S270.checked)*32;
	DrumP := DrumP + BoolToInt(D1S271.checked)*64;
	DrumP := DrumP + BoolToInt(D1S272.checked)*128;
	BytesRead:=Filestream.Read(DrumPC,1);
	IF Not(DrumP=DrumPC) Then Errorcode:='3002';
	DrumP :=0;
	DrumP := DrumP + BoolToInt(D1S273.checked)*1;
	DrumP := DrumP + BoolToInt(D1S274.checked)*2;
	DrumP := DrumP + BoolToInt(D1S275.checked)*4;
	DrumP := DrumP + BoolToInt(D1S276.checked)*8;
	DrumP := DrumP + BoolToInt(D1S277.checked)*16;
	DrumP := DrumP + BoolToInt(D1S278.checked)*32;
	DrumP := DrumP + BoolToInt(D1S279.checked)*64;
	DrumP := DrumP + BoolToInt(D1S280.checked)*128;
	BytesRead:=Filestream.Read(DrumPC,1);
	IF Not(DrumP=DrumPC) Then Errorcode:='3003';
	DrumP :=0;
	DrumP := DrumP + BoolToInt(D1S281.checked)*1;
	DrumP := DrumP + BoolToInt(D1S282.checked)*2;
	DrumP := DrumP + BoolToInt(D1S283.checked)*4;
	DrumP := DrumP + BoolToInt(D1S284.checked)*8;
	DrumP := DrumP + BoolToInt(D1S285.checked)*16;
	DrumP := DrumP + BoolToInt(D1S286.checked)*32;
	DrumP := DrumP + BoolToInt(D1S287.checked)*64;
	DrumP := DrumP + BoolToInt(D1S288.checked)*128;
	BytesRead:=Filestream.Read(DrumPC,1);
	IF Not(DrumP=DrumPC) Then Errorcode:='3004';
	DrumP :=0;
	DrumP := DrumP + BoolToInt(D1S289.checked)*1;
	DrumP := DrumP + BoolToInt(D1S290.checked)*2;
	DrumP := DrumP + BoolToInt(D1S291.checked)*4;
	DrumP := DrumP + BoolToInt(D1S292.checked)*8;
	DrumP := DrumP + BoolToInt(D1S293.checked)*16;
	DrumP := DrumP + BoolToInt(D1S294.checked)*32;
	DrumP := DrumP + BoolToInt(D1S295.checked)*64;
	DrumP := DrumP + BoolToInt(D1S296.checked)*128;
	BytesRead:=Filestream.Read(DrumPC,1);
	IF Not(DrumP=DrumPC) Then Errorcode:='3005';
	DrumP :=0;
	DrumP := DrumP + BoolToInt(D1S297.checked)*1;
	DrumP := DrumP + BoolToInt(D1S298.checked)*2;
	DrumP := DrumP + BoolToInt(D1S299.checked)*4;
	DrumP := DrumP + BoolToInt(D1S300.checked)*8;
	DrumP := DrumP + BoolToInt(D1S301.checked)*16;
	DrumP := DrumP + BoolToInt(D1S302.checked)*32;
	DrumP := DrumP + BoolToInt(D1S303.checked)*64;
	DrumP := DrumP + BoolToInt(D1S304.checked)*128;
	BytesRead:=Filestream.Read(DrumPC,1);
	IF Not(DrumP=DrumPC) Then Errorcode:='3006';
	DrumP :=0;
	DrumP := DrumP + BoolToInt(D1S305.checked)*1;
	DrumP := DrumP + BoolToInt(D1S306.checked)*2;
	DrumP := DrumP + BoolToInt(D1S307.checked)*4;
	DrumP := DrumP + BoolToInt(D1S308.checked)*8;
	DrumP := DrumP + BoolToInt(D1S309.checked)*16;
	DrumP := DrumP + BoolToInt(D1S310.checked)*32;
	DrumP := DrumP + BoolToInt(D1S311.checked)*64;
	DrumP := DrumP + BoolToInt(D1S312.checked)*128;
	BytesRead:=Filestream.Read(DrumPC,1);
	IF Not(DrumP=DrumPC) Then Errorcode:='3007';
	DrumP :=0;
	DrumP := DrumP + BoolToInt(D1S313.checked)*1;
	DrumP := DrumP + BoolToInt(D1S314.checked)*2;
	DrumP := DrumP + BoolToInt(D1S315.checked)*4;
	DrumP := DrumP + BoolToInt(D1S316.checked)*8;
	DrumP := DrumP + BoolToInt(D1S317.checked)*16;
	DrumP := DrumP + BoolToInt(D1S318.checked)*32;
	DrumP := DrumP + BoolToInt(D1S319.checked)*64;
	DrumP := DrumP + BoolToInt(D1S320.checked)*128;
	BytesRead:=Filestream.Read(DrumPC,1);
	IF Not(DrumP=DrumPC) Then Errorcode:='3008';
	DrumP :=0;
	DrumP := DrumP + BoolToInt(D1S321.checked)*1;
	DrumP := DrumP + BoolToInt(D1S322.checked)*2;
	DrumP := DrumP + BoolToInt(D1S323.checked)*4;
	DrumP := DrumP + BoolToInt(D1S324.checked)*8;
	DrumP := DrumP + BoolToInt(D1S325.checked)*16;
	DrumP := DrumP + BoolToInt(D1S326.checked)*32;
	DrumP := DrumP + BoolToInt(D1S327.checked)*64;
	DrumP := DrumP + BoolToInt(D1S328.checked)*128;
	BytesRead:=Filestream.Read(DrumPC,1);
	IF Not(DrumP=DrumPC) Then Errorcode:='3009';
	DrumP :=0;
	DrumP := DrumP + BoolToInt(D1S329.checked)*1;
	DrumP := DrumP + BoolToInt(D1S330.checked)*2;
	DrumP := DrumP + BoolToInt(D1S331.checked)*4;
	DrumP := DrumP + BoolToInt(D1S332.checked)*8;
	DrumP := DrumP + BoolToInt(D1S333.checked)*16;
	DrumP := DrumP + BoolToInt(D1S334.checked)*32;
	DrumP := DrumP + BoolToInt(D1S335.checked)*64;
	DrumP := DrumP + BoolToInt(D1S336.checked)*128;
	BytesRead:=Filestream.Read(DrumPC,1);
	IF Not(DrumP=DrumPC) Then Errorcode:='3010';
	DrumP :=0;
	DrumP := DrumP + BoolToInt(D1S337.checked)*1;
	DrumP := DrumP + BoolToInt(D1S338.checked)*2;
	DrumP := DrumP + BoolToInt(D1S339.checked)*4;
	DrumP := DrumP + BoolToInt(D1S340.checked)*8;
	DrumP := DrumP + BoolToInt(D1S341.checked)*16;
	DrumP := DrumP + BoolToInt(D1S342.checked)*32;
	DrumP := DrumP + BoolToInt(D1S343.checked)*64;
	DrumP := DrumP + BoolToInt(D1S344.checked)*128;
	BytesRead:=Filestream.Read(DrumPC,1);
	IF Not(DrumP=DrumPC) Then Errorcode:='3011';
	DrumP :=0;
	DrumP := DrumP + BoolToInt(D1S345.checked)*1;
	DrumP := DrumP + BoolToInt(D1S346.checked)*2;
	DrumP := DrumP + BoolToInt(D1S347.checked)*4;
	DrumP := DrumP + BoolToInt(D1S348.checked)*8;
	DrumP := DrumP + BoolToInt(D1S349.checked)*16;
	DrumP := DrumP + BoolToInt(D1S350.checked)*32;
	DrumP := DrumP + BoolToInt(D1S351.checked)*64;
	DrumP := DrumP + BoolToInt(D1S352.checked)*128;
	BytesRead:=Filestream.Read(DrumPC,1);
	IF Not(DrumP=DrumPC) Then Errorcode:='3012';
	DrumP :=0;
	DrumP := DrumP + BoolToInt(D1S353.checked)*1;
	DrumP := DrumP + BoolToInt(D1S354.checked)*2;
	DrumP := DrumP + BoolToInt(D1S355.checked)*4;
	DrumP := DrumP + BoolToInt(D1S356.checked)*8;
	DrumP := DrumP + BoolToInt(D1S357.checked)*16;
	DrumP := DrumP + BoolToInt(D1S358.checked)*32;
	DrumP := DrumP + BoolToInt(D1S359.checked)*64;
	DrumP := DrumP + BoolToInt(D1S360.checked)*128;
	BytesRead:=Filestream.Read(DrumPC,1);
	IF Not(DrumP=DrumPC) Then Errorcode:='3013';
	DrumP :=0;
	DrumP := DrumP + BoolToInt(D1S361.checked)*1;
	DrumP := DrumP + BoolToInt(D1S362.checked)*2;
	DrumP := DrumP + BoolToInt(D1S363.checked)*4;
	DrumP := DrumP + BoolToInt(D1S364.checked)*8;
	DrumP := DrumP + BoolToInt(D1S365.checked)*16;
	DrumP := DrumP + BoolToInt(D1S366.checked)*32;
	DrumP := DrumP + BoolToInt(D1S367.checked)*64;
	DrumP := DrumP + BoolToInt(D1S368.checked)*128;
	BytesRead:=Filestream.Read(DrumPC,1);
	IF Not(DrumP=DrumPC) Then Errorcode:='3014';
	DrumP :=0;
	DrumP := DrumP + BoolToInt(D1S369.checked)*1;
	DrumP := DrumP + BoolToInt(D1S370.checked)*2;
	DrumP := DrumP + BoolToInt(D1S371.checked)*4;
	DrumP := DrumP + BoolToInt(D1S372.checked)*8;
	DrumP := DrumP + BoolToInt(D1S373.checked)*16;
	DrumP := DrumP + BoolToInt(D1S374.checked)*32;
	DrumP := DrumP + BoolToInt(D1S375.checked)*64;
	DrumP := DrumP + BoolToInt(D1S376.checked)*128;
	BytesRead:=Filestream.Read(DrumPC,1);
	IF Not(DrumP=DrumPC) Then Errorcode:='3015';
	DrumP :=0;
	DrumP := DrumP + BoolToInt(D1S377.checked)*1;
	DrumP := DrumP + BoolToInt(D1S378.checked)*2;
	DrumP := DrumP + BoolToInt(D1S379.checked)*4;
	DrumP := DrumP + BoolToInt(D1S380.checked)*8;
	DrumP := DrumP + BoolToInt(D1S381.checked)*16;
	DrumP := DrumP + BoolToInt(D1S382.checked)*32;
	DrumP := DrumP + BoolToInt(D1S383.checked)*64;
	DrumP := DrumP + BoolToInt(D1S384.checked)*128;
	BytesRead:=Filestream.Read(DrumPC,1);
	IF Not(DrumP=DrumPC) Then Errorcode:='3016';
	//Ende File
	FileStream.Free;
end;

procedure TMainForm.CheckDrum4Sequence(Patternbase: Integer);
var
  BytesRead : Integer;
  FileStream : TFileStream;
 DrumPC : Integer;
begin

	FileStream := tFileStream.Create (filename,fmShareDenyNone);
  FileStream.Position := patternbase+102+10;
        //The Pattern
        DrumP :=0;
        DrumPC :=0;
        DrumP := DrumP + BoolToInt(D1S385.checked)*1;
        DrumP := DrumP + BoolToInt(D1S386.checked)*2;
        DrumP := DrumP + BoolToInt(D1S387.checked)*4;
        DrumP := DrumP + BoolToInt(D1S388.checked)*8;
        DrumP := DrumP + BoolToInt(D1S389.checked)*16;
        DrumP := DrumP + BoolToInt(D1S390.checked)*32;
        DrumP := DrumP + BoolToInt(D1S391.checked)*64;
        DrumP := DrumP + BoolToInt(D1S392.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='4001';
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S393.checked)*1;
        DrumP := DrumP + BoolToInt(D1S394.checked)*2;
        DrumP := DrumP + BoolToInt(D1S395.checked)*4;
        DrumP := DrumP + BoolToInt(D1S396.checked)*8;
        DrumP := DrumP + BoolToInt(D1S397.checked)*16;
        DrumP := DrumP + BoolToInt(D1S398.checked)*32;
        DrumP := DrumP + BoolToInt(D1S399.checked)*64;
        DrumP := DrumP + BoolToInt(D1S400.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='4002';
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S401.checked)*1;
        DrumP := DrumP + BoolToInt(D1S402.checked)*2;
        DrumP := DrumP + BoolToInt(D1S403.checked)*4;
        DrumP := DrumP + BoolToInt(D1S404.checked)*8;
        DrumP := DrumP + BoolToInt(D1S405.checked)*16;
        DrumP := DrumP + BoolToInt(D1S406.checked)*32;
        DrumP := DrumP + BoolToInt(D1S407.checked)*64;
        DrumP := DrumP + BoolToInt(D1S408.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='4003';
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S409.checked)*1;
        DrumP := DrumP + BoolToInt(D1S410.checked)*2;
        DrumP := DrumP + BoolToInt(D1S411.checked)*4;
        DrumP := DrumP + BoolToInt(D1S412.checked)*8;
        DrumP := DrumP + BoolToInt(D1S413.checked)*16;
        DrumP := DrumP + BoolToInt(D1S414.checked)*32;
        DrumP := DrumP + BoolToInt(D1S415.checked)*64;
        DrumP := DrumP + BoolToInt(D1S416.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='4004';
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S417.checked)*1;
        DrumP := DrumP + BoolToInt(D1S418.checked)*2;
        DrumP := DrumP + BoolToInt(D1S419.checked)*4;
        DrumP := DrumP + BoolToInt(D1S420.checked)*8;
        DrumP := DrumP + BoolToInt(D1S421.checked)*16;
        DrumP := DrumP + BoolToInt(D1S422.checked)*32;
        DrumP := DrumP + BoolToInt(D1S423.checked)*64;
        DrumP := DrumP + BoolToInt(D1S424.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='4005';
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S425.checked)*1;
        DrumP := DrumP + BoolToInt(D1S426.checked)*2;
        DrumP := DrumP + BoolToInt(D1S427.checked)*4;
        DrumP := DrumP + BoolToInt(D1S428.checked)*8;
        DrumP := DrumP + BoolToInt(D1S429.checked)*16;
        DrumP := DrumP + BoolToInt(D1S430.checked)*32;
        DrumP := DrumP + BoolToInt(D1S431.checked)*64;
        DrumP := DrumP + BoolToInt(D1S432.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='4006';
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S433.checked)*1;
        DrumP := DrumP + BoolToInt(D1S434.checked)*2;
        DrumP := DrumP + BoolToInt(D1S435.checked)*4;
        DrumP := DrumP + BoolToInt(D1S436.checked)*8;
        DrumP := DrumP + BoolToInt(D1S437.checked)*16;
        DrumP := DrumP + BoolToInt(D1S438.checked)*32;
        DrumP := DrumP + BoolToInt(D1S439.checked)*64;
        DrumP := DrumP + BoolToInt(D1S440.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='4007';
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S441.checked)*1;
        DrumP := DrumP + BoolToInt(D1S442.checked)*2;
        DrumP := DrumP + BoolToInt(D1S443.checked)*4;
        DrumP := DrumP + BoolToInt(D1S444.checked)*8;
        DrumP := DrumP + BoolToInt(D1S445.checked)*16;
        DrumP := DrumP + BoolToInt(D1S446.checked)*32;
        DrumP := DrumP + BoolToInt(D1S447.checked)*64;
        DrumP := DrumP + BoolToInt(D1S448.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='4008';
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S449.checked)*1;
        DrumP := DrumP + BoolToInt(D1S450.checked)*2;
        DrumP := DrumP + BoolToInt(D1S451.checked)*4;
        DrumP := DrumP + BoolToInt(D1S452.checked)*8;
        DrumP := DrumP + BoolToInt(D1S453.checked)*16;
        DrumP := DrumP + BoolToInt(D1S454.checked)*32;
        DrumP := DrumP + BoolToInt(D1S455.checked)*64;
        DrumP := DrumP + BoolToInt(D1S456.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='4009';
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S457.checked)*1;
        DrumP := DrumP + BoolToInt(D1S458.checked)*2;
        DrumP := DrumP + BoolToInt(D1S459.checked)*4;
        DrumP := DrumP + BoolToInt(D1S460.checked)*8;
        DrumP := DrumP + BoolToInt(D1S461.checked)*16;
        DrumP := DrumP + BoolToInt(D1S462.checked)*32;
        DrumP := DrumP + BoolToInt(D1S463.checked)*64;
        DrumP := DrumP + BoolToInt(D1S464.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='4010';
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S465.checked)*1;
        DrumP := DrumP + BoolToInt(D1S466.checked)*2;
        DrumP := DrumP + BoolToInt(D1S467.checked)*4;
        DrumP := DrumP + BoolToInt(D1S468.checked)*8;
        DrumP := DrumP + BoolToInt(D1S469.checked)*16;
        DrumP := DrumP + BoolToInt(D1S470.checked)*32;
        DrumP := DrumP + BoolToInt(D1S471.checked)*64;
        DrumP := DrumP + BoolToInt(D1S472.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='4011';
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S473.checked)*1;
        DrumP := DrumP + BoolToInt(D1S474.checked)*2;
        DrumP := DrumP + BoolToInt(D1S475.checked)*4;
        DrumP := DrumP + BoolToInt(D1S476.checked)*8;
        DrumP := DrumP + BoolToInt(D1S477.checked)*16;
        DrumP := DrumP + BoolToInt(D1S478.checked)*32;
        DrumP := DrumP + BoolToInt(D1S479.checked)*64;
        DrumP := DrumP + BoolToInt(D1S480.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='4012';
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S481.checked)*1;
        DrumP := DrumP + BoolToInt(D1S482.checked)*2;
        DrumP := DrumP + BoolToInt(D1S483.checked)*4;
        DrumP := DrumP + BoolToInt(D1S484.checked)*8;
        DrumP := DrumP + BoolToInt(D1S485.checked)*16;
        DrumP := DrumP + BoolToInt(D1S486.checked)*32;
        DrumP := DrumP + BoolToInt(D1S487.checked)*64;
        DrumP := DrumP + BoolToInt(D1S488.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='4013';
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S489.checked)*1;
        DrumP := DrumP + BoolToInt(D1S490.checked)*2;
        DrumP := DrumP + BoolToInt(D1S491.checked)*4;
        DrumP := DrumP + BoolToInt(D1S492.checked)*8;
        DrumP := DrumP + BoolToInt(D1S493.checked)*16;
        DrumP := DrumP + BoolToInt(D1S494.checked)*32;
        DrumP := DrumP + BoolToInt(D1S495.checked)*64;
        DrumP := DrumP + BoolToInt(D1S496.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='4014';
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S497.checked)*1;
        DrumP := DrumP + BoolToInt(D1S498.checked)*2;
        DrumP := DrumP + BoolToInt(D1S499.checked)*4;
        DrumP := DrumP + BoolToInt(D1S500.checked)*8;
        DrumP := DrumP + BoolToInt(D1S501.checked)*16;
        DrumP := DrumP + BoolToInt(D1S502.checked)*32;
        DrumP := DrumP + BoolToInt(D1S503.checked)*64;
        DrumP := DrumP + BoolToInt(D1S504.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='4015';
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S505.checked)*1;
        DrumP := DrumP + BoolToInt(D1S506.checked)*2;
        DrumP := DrumP + BoolToInt(D1S507.checked)*4;
        DrumP := DrumP + BoolToInt(D1S508.checked)*8;
        DrumP := DrumP + BoolToInt(D1S509.checked)*16;
        DrumP := DrumP + BoolToInt(D1S510.checked)*32;
        DrumP := DrumP + BoolToInt(D1S511.checked)*64;
        DrumP := DrumP + BoolToInt(D1S512.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='4016';
        //Ende File
        FileStream.Free;
end;

procedure TMainForm.CheckDrum5Sequence(Patternbase: Integer);
var
  BytesRead : Integer;
  FileStream : TFileStream;
 DrumPC : Integer;
begin

	FileStream := tFileStream.Create (filename,fmShareDenyNone);
  FileStream.Position := patternbase+128+10;
        //The Pattern
        DrumP :=0;
        DrumPC :=0;
        DrumP := DrumP + BoolToInt(D1S513.checked)*1;
        DrumP := DrumP + BoolToInt(D1S514.checked)*2;
        DrumP := DrumP + BoolToInt(D1S515.checked)*4;
        DrumP := DrumP + BoolToInt(D1S516.checked)*8;
        DrumP := DrumP + BoolToInt(D1S517.checked)*16;
        DrumP := DrumP + BoolToInt(D1S518.checked)*32;
        DrumP := DrumP + BoolToInt(D1S519.checked)*64;
        DrumP := DrumP + BoolToInt(D1S520.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='5001';
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S521.checked)*1;
        DrumP := DrumP + BoolToInt(D1S522.checked)*2;
        DrumP := DrumP + BoolToInt(D1S523.checked)*4;
        DrumP := DrumP + BoolToInt(D1S524.checked)*8;
        DrumP := DrumP + BoolToInt(D1S525.checked)*16;
        DrumP := DrumP + BoolToInt(D1S526.checked)*32;
        DrumP := DrumP + BoolToInt(D1S527.checked)*64;
        DrumP := DrumP + BoolToInt(D1S528.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='5002';
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S529.checked)*1;
        DrumP := DrumP + BoolToInt(D1S530.checked)*2;
        DrumP := DrumP + BoolToInt(D1S531.checked)*4;
        DrumP := DrumP + BoolToInt(D1S532.checked)*8;
        DrumP := DrumP + BoolToInt(D1S533.checked)*16;
        DrumP := DrumP + BoolToInt(D1S534.checked)*32;
        DrumP := DrumP + BoolToInt(D1S535.checked)*64;
        DrumP := DrumP + BoolToInt(D1S536.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='5003';
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S537.checked)*1;
        DrumP := DrumP + BoolToInt(D1S538.checked)*2;
        DrumP := DrumP + BoolToInt(D1S539.checked)*4;
        DrumP := DrumP + BoolToInt(D1S540.checked)*8;
        DrumP := DrumP + BoolToInt(D1S541.checked)*16;
        DrumP := DrumP + BoolToInt(D1S542.checked)*32;
        DrumP := DrumP + BoolToInt(D1S543.checked)*64;
        DrumP := DrumP + BoolToInt(D1S544.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='5004';
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S545.checked)*1;
        DrumP := DrumP + BoolToInt(D1S546.checked)*2;
        DrumP := DrumP + BoolToInt(D1S547.checked)*4;
        DrumP := DrumP + BoolToInt(D1S548.checked)*8;
        DrumP := DrumP + BoolToInt(D1S549.checked)*16;
        DrumP := DrumP + BoolToInt(D1S550.checked)*32;
        DrumP := DrumP + BoolToInt(D1S551.checked)*64;
        DrumP := DrumP + BoolToInt(D1S552.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='5005';
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S553.checked)*1;
        DrumP := DrumP + BoolToInt(D1S554.checked)*2;
        DrumP := DrumP + BoolToInt(D1S555.checked)*4;
        DrumP := DrumP + BoolToInt(D1S556.checked)*8;
        DrumP := DrumP + BoolToInt(D1S557.checked)*16;
        DrumP := DrumP + BoolToInt(D1S558.checked)*32;
        DrumP := DrumP + BoolToInt(D1S559.checked)*64;
        DrumP := DrumP + BoolToInt(D1S560.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='5006';
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S561.checked)*1;
        DrumP := DrumP + BoolToInt(D1S562.checked)*2;
        DrumP := DrumP + BoolToInt(D1S563.checked)*4;
        DrumP := DrumP + BoolToInt(D1S564.checked)*8;
        DrumP := DrumP + BoolToInt(D1S565.checked)*16;
        DrumP := DrumP + BoolToInt(D1S566.checked)*32;
        DrumP := DrumP + BoolToInt(D1S567.checked)*64;
        DrumP := DrumP + BoolToInt(D1S568.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='5007';
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S569.checked)*1;
        DrumP := DrumP + BoolToInt(D1S570.checked)*2;
        DrumP := DrumP + BoolToInt(D1S571.checked)*4;
        DrumP := DrumP + BoolToInt(D1S572.checked)*8;
        DrumP := DrumP + BoolToInt(D1S573.checked)*16;
        DrumP := DrumP + BoolToInt(D1S574.checked)*32;
        DrumP := DrumP + BoolToInt(D1S575.checked)*64;
        DrumP := DrumP + BoolToInt(D1S576.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='5008';
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S577.checked)*1;
        DrumP := DrumP + BoolToInt(D1S578.checked)*2;
        DrumP := DrumP + BoolToInt(D1S579.checked)*4;
        DrumP := DrumP + BoolToInt(D1S580.checked)*8;
        DrumP := DrumP + BoolToInt(D1S581.checked)*16;
        DrumP := DrumP + BoolToInt(D1S582.checked)*32;
        DrumP := DrumP + BoolToInt(D1S583.checked)*64;
        DrumP := DrumP + BoolToInt(D1S584.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='5009';
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S585.checked)*1;
        DrumP := DrumP + BoolToInt(D1S586.checked)*2;
        DrumP := DrumP + BoolToInt(D1S587.checked)*4;
        DrumP := DrumP + BoolToInt(D1S588.checked)*8;
        DrumP := DrumP + BoolToInt(D1S589.checked)*16;
        DrumP := DrumP + BoolToInt(D1S590.checked)*32;
        DrumP := DrumP + BoolToInt(D1S591.checked)*64;
        DrumP := DrumP + BoolToInt(D1S592.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='5010';
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S593.checked)*1;
        DrumP := DrumP + BoolToInt(D1S594.checked)*2;
        DrumP := DrumP + BoolToInt(D1S595.checked)*4;
        DrumP := DrumP + BoolToInt(D1S596.checked)*8;
        DrumP := DrumP + BoolToInt(D1S597.checked)*16;
        DrumP := DrumP + BoolToInt(D1S598.checked)*32;
        DrumP := DrumP + BoolToInt(D1S599.checked)*64;
        DrumP := DrumP + BoolToInt(D1S600.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='5011';
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S601.checked)*1;
        DrumP := DrumP + BoolToInt(D1S602.checked)*2;
        DrumP := DrumP + BoolToInt(D1S603.checked)*4;
        DrumP := DrumP + BoolToInt(D1S604.checked)*8;
        DrumP := DrumP + BoolToInt(D1S605.checked)*16;
        DrumP := DrumP + BoolToInt(D1S606.checked)*32;
        DrumP := DrumP + BoolToInt(D1S607.checked)*64;
        DrumP := DrumP + BoolToInt(D1S608.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='5012';
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S609.checked)*1;
        DrumP := DrumP + BoolToInt(D1S610.checked)*2;
        DrumP := DrumP + BoolToInt(D1S611.checked)*4;
        DrumP := DrumP + BoolToInt(D1S612.checked)*8;
        DrumP := DrumP + BoolToInt(D1S613.checked)*16;
        DrumP := DrumP + BoolToInt(D1S614.checked)*32;
        DrumP := DrumP + BoolToInt(D1S615.checked)*64;
        DrumP := DrumP + BoolToInt(D1S616.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='5013';
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S617.checked)*1;
        DrumP := DrumP + BoolToInt(D1S618.checked)*2;
        DrumP := DrumP + BoolToInt(D1S619.checked)*4;
        DrumP := DrumP + BoolToInt(D1S620.checked)*8;
        DrumP := DrumP + BoolToInt(D1S621.checked)*16;
        DrumP := DrumP + BoolToInt(D1S622.checked)*32;
        DrumP := DrumP + BoolToInt(D1S623.checked)*64;
        DrumP := DrumP + BoolToInt(D1S624.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='5014';
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S625.checked)*1;
        DrumP := DrumP + BoolToInt(D1S626.checked)*2;
        DrumP := DrumP + BoolToInt(D1S627.checked)*4;
        DrumP := DrumP + BoolToInt(D1S628.checked)*8;
        DrumP := DrumP + BoolToInt(D1S629.checked)*16;
        DrumP := DrumP + BoolToInt(D1S630.checked)*32;
        DrumP := DrumP + BoolToInt(D1S631.checked)*64;
        DrumP := DrumP + BoolToInt(D1S632.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='5015';
        DrumP :=0;
        DrumP := DrumP + BoolToInt(D1S633.checked)*1;
        DrumP := DrumP + BoolToInt(D1S634.checked)*2;
        DrumP := DrumP + BoolToInt(D1S635.checked)*4;
        DrumP := DrumP + BoolToInt(D1S636.checked)*8;
        DrumP := DrumP + BoolToInt(D1S637.checked)*16;
        DrumP := DrumP + BoolToInt(D1S638.checked)*32;
        DrumP := DrumP + BoolToInt(D1S639.checked)*64;
        DrumP := DrumP + BoolToInt(D1S640.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='5016';
        //Ende File
        FileStream.Free;
end;

procedure TMainForm.CheckDrum6ASequence(Patternbase: Integer);
var
  BytesRead : Integer;
FileStream : TFileStream;
 DrumPC : Integer;
begin

      FileStream := tFileStream.Create (filename,fmShareDenyNone);
FileStream.Position := patternbase+154+10;
      //The Pattern
      DrumP :=0;
      DrumPC :=0;
      DrumP := DrumP + BoolToInt(D1S641.checked)*1;
      DrumP := DrumP + BoolToInt(D1S642.checked)*2;
      DrumP := DrumP + BoolToInt(D1S643.checked)*4;
      DrumP := DrumP + BoolToInt(D1S644.checked)*8;
      DrumP := DrumP + BoolToInt(D1S645.checked)*16;
      DrumP := DrumP + BoolToInt(D1S646.checked)*32;
      DrumP := DrumP + BoolToInt(D1S647.checked)*64;
      DrumP := DrumP + BoolToInt(D1S648.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='6001';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S649.checked)*1;
      DrumP := DrumP + BoolToInt(D1S650.checked)*2;
      DrumP := DrumP + BoolToInt(D1S651.checked)*4;
      DrumP := DrumP + BoolToInt(D1S652.checked)*8;
      DrumP := DrumP + BoolToInt(D1S653.checked)*16;
      DrumP := DrumP + BoolToInt(D1S654.checked)*32;
      DrumP := DrumP + BoolToInt(D1S655.checked)*64;
      DrumP := DrumP + BoolToInt(D1S656.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='6002';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S657.checked)*1;
      DrumP := DrumP + BoolToInt(D1S658.checked)*2;
      DrumP := DrumP + BoolToInt(D1S659.checked)*4;
      DrumP := DrumP + BoolToInt(D1S660.checked)*8;
      DrumP := DrumP + BoolToInt(D1S661.checked)*16;
      DrumP := DrumP + BoolToInt(D1S662.checked)*32;
      DrumP := DrumP + BoolToInt(D1S663.checked)*64;
      DrumP := DrumP + BoolToInt(D1S664.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='6003';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S665.checked)*1;
      DrumP := DrumP + BoolToInt(D1S666.checked)*2;
      DrumP := DrumP + BoolToInt(D1S667.checked)*4;
      DrumP := DrumP + BoolToInt(D1S668.checked)*8;
      DrumP := DrumP + BoolToInt(D1S669.checked)*16;
      DrumP := DrumP + BoolToInt(D1S670.checked)*32;
      DrumP := DrumP + BoolToInt(D1S671.checked)*64;
      DrumP := DrumP + BoolToInt(D1S672.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='6004';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S673.checked)*1;
      DrumP := DrumP + BoolToInt(D1S674.checked)*2;
      DrumP := DrumP + BoolToInt(D1S675.checked)*4;
      DrumP := DrumP + BoolToInt(D1S676.checked)*8;
      DrumP := DrumP + BoolToInt(D1S677.checked)*16;
      DrumP := DrumP + BoolToInt(D1S678.checked)*32;
      DrumP := DrumP + BoolToInt(D1S679.checked)*64;
      DrumP := DrumP + BoolToInt(D1S680.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='6005';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S681.checked)*1;
      DrumP := DrumP + BoolToInt(D1S682.checked)*2;
      DrumP := DrumP + BoolToInt(D1S683.checked)*4;
      DrumP := DrumP + BoolToInt(D1S684.checked)*8;
      DrumP := DrumP + BoolToInt(D1S685.checked)*16;
      DrumP := DrumP + BoolToInt(D1S686.checked)*32;
      DrumP := DrumP + BoolToInt(D1S687.checked)*64;
      DrumP := DrumP + BoolToInt(D1S688.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='6006';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S689.checked)*1;
      DrumP := DrumP + BoolToInt(D1S690.checked)*2;
      DrumP := DrumP + BoolToInt(D1S691.checked)*4;
      DrumP := DrumP + BoolToInt(D1S692.checked)*8;
      DrumP := DrumP + BoolToInt(D1S693.checked)*16;
      DrumP := DrumP + BoolToInt(D1S694.checked)*32;
      DrumP := DrumP + BoolToInt(D1S695.checked)*64;
      DrumP := DrumP + BoolToInt(D1S696.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='6007';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S697.checked)*1;
      DrumP := DrumP + BoolToInt(D1S698.checked)*2;
      DrumP := DrumP + BoolToInt(D1S699.checked)*4;
      DrumP := DrumP + BoolToInt(D1S700.checked)*8;
      DrumP := DrumP + BoolToInt(D1S701.checked)*16;
      DrumP := DrumP + BoolToInt(D1S702.checked)*32;
      DrumP := DrumP + BoolToInt(D1S703.checked)*64;
      DrumP := DrumP + BoolToInt(D1S704.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='6008';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S705.checked)*1;
      DrumP := DrumP + BoolToInt(D1S706.checked)*2;
      DrumP := DrumP + BoolToInt(D1S707.checked)*4;
      DrumP := DrumP + BoolToInt(D1S708.checked)*8;
      DrumP := DrumP + BoolToInt(D1S709.checked)*16;
      DrumP := DrumP + BoolToInt(D1S710.checked)*32;
      DrumP := DrumP + BoolToInt(D1S711.checked)*64;
      DrumP := DrumP + BoolToInt(D1S712.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='6009';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S713.checked)*1;
      DrumP := DrumP + BoolToInt(D1S714.checked)*2;
      DrumP := DrumP + BoolToInt(D1S715.checked)*4;
      DrumP := DrumP + BoolToInt(D1S716.checked)*8;
      DrumP := DrumP + BoolToInt(D1S717.checked)*16;
      DrumP := DrumP + BoolToInt(D1S718.checked)*32;
      DrumP := DrumP + BoolToInt(D1S719.checked)*64;
      DrumP := DrumP + BoolToInt(D1S720.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='6010';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S721.checked)*1;
      DrumP := DrumP + BoolToInt(D1S722.checked)*2;
      DrumP := DrumP + BoolToInt(D1S723.checked)*4;
      DrumP := DrumP + BoolToInt(D1S724.checked)*8;
      DrumP := DrumP + BoolToInt(D1S725.checked)*16;
      DrumP := DrumP + BoolToInt(D1S726.checked)*32;
      DrumP := DrumP + BoolToInt(D1S727.checked)*64;
      DrumP := DrumP + BoolToInt(D1S728.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='6011';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S729.checked)*1;
      DrumP := DrumP + BoolToInt(D1S730.checked)*2;
      DrumP := DrumP + BoolToInt(D1S731.checked)*4;
      DrumP := DrumP + BoolToInt(D1S732.checked)*8;
      DrumP := DrumP + BoolToInt(D1S733.checked)*16;
      DrumP := DrumP + BoolToInt(D1S734.checked)*32;
      DrumP := DrumP + BoolToInt(D1S735.checked)*64;
      DrumP := DrumP + BoolToInt(D1S736.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='6012';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S737.checked)*1;
      DrumP := DrumP + BoolToInt(D1S738.checked)*2;
      DrumP := DrumP + BoolToInt(D1S739.checked)*4;
      DrumP := DrumP + BoolToInt(D1S740.checked)*8;
      DrumP := DrumP + BoolToInt(D1S741.checked)*16;
      DrumP := DrumP + BoolToInt(D1S742.checked)*32;
      DrumP := DrumP + BoolToInt(D1S743.checked)*64;
      DrumP := DrumP + BoolToInt(D1S744.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='6013';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S745.checked)*1;
      DrumP := DrumP + BoolToInt(D1S746.checked)*2;
      DrumP := DrumP + BoolToInt(D1S747.checked)*4;
      DrumP := DrumP + BoolToInt(D1S748.checked)*8;
      DrumP := DrumP + BoolToInt(D1S749.checked)*16;
      DrumP := DrumP + BoolToInt(D1S750.checked)*32;
      DrumP := DrumP + BoolToInt(D1S751.checked)*64;
      DrumP := DrumP + BoolToInt(D1S752.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='6014';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S753.checked)*1;
      DrumP := DrumP + BoolToInt(D1S754.checked)*2;
      DrumP := DrumP + BoolToInt(D1S755.checked)*4;
      DrumP := DrumP + BoolToInt(D1S756.checked)*8;
      DrumP := DrumP + BoolToInt(D1S757.checked)*16;
      DrumP := DrumP + BoolToInt(D1S758.checked)*32;
      DrumP := DrumP + BoolToInt(D1S759.checked)*64;
      DrumP := DrumP + BoolToInt(D1S760.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='6015';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S761.checked)*1;
      DrumP := DrumP + BoolToInt(D1S762.checked)*2;
      DrumP := DrumP + BoolToInt(D1S763.checked)*4;
      DrumP := DrumP + BoolToInt(D1S764.checked)*8;
      DrumP := DrumP + BoolToInt(D1S765.checked)*16;
      DrumP := DrumP + BoolToInt(D1S766.checked)*32;
      DrumP := DrumP + BoolToInt(D1S767.checked)*64;
      DrumP := DrumP + BoolToInt(D1S768.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='6016';
      //Ende File
      FileStream.Free;
end;

procedure TMainForm.CheckDrum6BSequence(Patternbase: Integer);
var
  BytesRead : Integer;
FileStream : TFileStream;
DrumPC : Integer;
begin

      FileStream := tFileStream.Create (filename,fmShareDenyNone);
FileStream.Position := patternbase+180+10;
      //The Pattern
      DrumP :=0;
      DrumPC :=0;
      DrumP := DrumP + BoolToInt(D1S769.checked)*1;
      DrumP := DrumP + BoolToInt(D1S770.checked)*2;
      DrumP := DrumP + BoolToInt(D1S771.checked)*4;
      DrumP := DrumP + BoolToInt(D1S772.checked)*8;
      DrumP := DrumP + BoolToInt(D1S773.checked)*16;
      DrumP := DrumP + BoolToInt(D1S774.checked)*32;
      DrumP := DrumP + BoolToInt(D1S775.checked)*64;
      DrumP := DrumP + BoolToInt(D1S776.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='7001';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S777.checked)*1;
      DrumP := DrumP + BoolToInt(D1S778.checked)*2;
      DrumP := DrumP + BoolToInt(D1S779.checked)*4;
      DrumP := DrumP + BoolToInt(D1S780.checked)*8;
      DrumP := DrumP + BoolToInt(D1S781.checked)*16;
      DrumP := DrumP + BoolToInt(D1S782.checked)*32;
      DrumP := DrumP + BoolToInt(D1S783.checked)*64;
      DrumP := DrumP + BoolToInt(D1S784.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='7002';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S785.checked)*1;
      DrumP := DrumP + BoolToInt(D1S786.checked)*2;
      DrumP := DrumP + BoolToInt(D1S787.checked)*4;
      DrumP := DrumP + BoolToInt(D1S788.checked)*8;
      DrumP := DrumP + BoolToInt(D1S789.checked)*16;
      DrumP := DrumP + BoolToInt(D1S790.checked)*32;
      DrumP := DrumP + BoolToInt(D1S791.checked)*64;
      DrumP := DrumP + BoolToInt(D1S792.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='7003';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S793.checked)*1;
      DrumP := DrumP + BoolToInt(D1S794.checked)*2;
      DrumP := DrumP + BoolToInt(D1S795.checked)*4;
      DrumP := DrumP + BoolToInt(D1S796.checked)*8;
      DrumP := DrumP + BoolToInt(D1S797.checked)*16;
      DrumP := DrumP + BoolToInt(D1S798.checked)*32;
      DrumP := DrumP + BoolToInt(D1S799.checked)*64;
      DrumP := DrumP + BoolToInt(D1S800.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='7004';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S801.checked)*1;
      DrumP := DrumP + BoolToInt(D1S802.checked)*2;
      DrumP := DrumP + BoolToInt(D1S803.checked)*4;
      DrumP := DrumP + BoolToInt(D1S804.checked)*8;
      DrumP := DrumP + BoolToInt(D1S805.checked)*16;
      DrumP := DrumP + BoolToInt(D1S806.checked)*32;
      DrumP := DrumP + BoolToInt(D1S807.checked)*64;
      DrumP := DrumP + BoolToInt(D1S808.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='7005';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S809.checked)*1;
      DrumP := DrumP + BoolToInt(D1S810.checked)*2;
      DrumP := DrumP + BoolToInt(D1S811.checked)*4;
      DrumP := DrumP + BoolToInt(D1S812.checked)*8;
      DrumP := DrumP + BoolToInt(D1S813.checked)*16;
      DrumP := DrumP + BoolToInt(D1S814.checked)*32;
      DrumP := DrumP + BoolToInt(D1S815.checked)*64;
      DrumP := DrumP + BoolToInt(D1S816.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='7006';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S817.checked)*1;
      DrumP := DrumP + BoolToInt(D1S818.checked)*2;
      DrumP := DrumP + BoolToInt(D1S819.checked)*4;
      DrumP := DrumP + BoolToInt(D1S820.checked)*8;
      DrumP := DrumP + BoolToInt(D1S821.checked)*16;
      DrumP := DrumP + BoolToInt(D1S822.checked)*32;
      DrumP := DrumP + BoolToInt(D1S823.checked)*64;
      DrumP := DrumP + BoolToInt(D1S824.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='7007';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S825.checked)*1;
      DrumP := DrumP + BoolToInt(D1S826.checked)*2;
      DrumP := DrumP + BoolToInt(D1S827.checked)*4;
      DrumP := DrumP + BoolToInt(D1S828.checked)*8;
      DrumP := DrumP + BoolToInt(D1S829.checked)*16;
      DrumP := DrumP + BoolToInt(D1S830.checked)*32;
      DrumP := DrumP + BoolToInt(D1S831.checked)*64;
      DrumP := DrumP + BoolToInt(D1S832.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='7008';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S833.checked)*1;
      DrumP := DrumP + BoolToInt(D1S834.checked)*2;
      DrumP := DrumP + BoolToInt(D1S835.checked)*4;
      DrumP := DrumP + BoolToInt(D1S836.checked)*8;
      DrumP := DrumP + BoolToInt(D1S837.checked)*16;
      DrumP := DrumP + BoolToInt(D1S838.checked)*32;
      DrumP := DrumP + BoolToInt(D1S839.checked)*64;
      DrumP := DrumP + BoolToInt(D1S840.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='7009';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S841.checked)*1;
      DrumP := DrumP + BoolToInt(D1S842.checked)*2;
      DrumP := DrumP + BoolToInt(D1S843.checked)*4;
      DrumP := DrumP + BoolToInt(D1S844.checked)*8;
      DrumP := DrumP + BoolToInt(D1S845.checked)*16;
      DrumP := DrumP + BoolToInt(D1S846.checked)*32;
      DrumP := DrumP + BoolToInt(D1S847.checked)*64;
      DrumP := DrumP + BoolToInt(D1S848.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='7010';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S849.checked)*1;
      DrumP := DrumP + BoolToInt(D1S850.checked)*2;
      DrumP := DrumP + BoolToInt(D1S851.checked)*4;
      DrumP := DrumP + BoolToInt(D1S852.checked)*8;
      DrumP := DrumP + BoolToInt(D1S853.checked)*16;
      DrumP := DrumP + BoolToInt(D1S854.checked)*32;
      DrumP := DrumP + BoolToInt(D1S855.checked)*64;
      DrumP := DrumP + BoolToInt(D1S856.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='7011';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S857.checked)*1;
      DrumP := DrumP + BoolToInt(D1S858.checked)*2;
      DrumP := DrumP + BoolToInt(D1S859.checked)*4;
      DrumP := DrumP + BoolToInt(D1S860.checked)*8;
      DrumP := DrumP + BoolToInt(D1S861.checked)*16;
      DrumP := DrumP + BoolToInt(D1S862.checked)*32;
      DrumP := DrumP + BoolToInt(D1S863.checked)*64;
      DrumP := DrumP + BoolToInt(D1S864.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='7012';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S865.checked)*1;
      DrumP := DrumP + BoolToInt(D1S866.checked)*2;
      DrumP := DrumP + BoolToInt(D1S867.checked)*4;
      DrumP := DrumP + BoolToInt(D1S868.checked)*8;
      DrumP := DrumP + BoolToInt(D1S869.checked)*16;
      DrumP := DrumP + BoolToInt(D1S870.checked)*32;
      DrumP := DrumP + BoolToInt(D1S871.checked)*64;
      DrumP := DrumP + BoolToInt(D1S872.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='7013';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S873.checked)*1;
      DrumP := DrumP + BoolToInt(D1S874.checked)*2;
      DrumP := DrumP + BoolToInt(D1S875.checked)*4;
      DrumP := DrumP + BoolToInt(D1S876.checked)*8;
      DrumP := DrumP + BoolToInt(D1S877.checked)*16;
      DrumP := DrumP + BoolToInt(D1S878.checked)*32;
      DrumP := DrumP + BoolToInt(D1S879.checked)*64;
      DrumP := DrumP + BoolToInt(D1S880.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='7014';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S881.checked)*1;
      DrumP := DrumP + BoolToInt(D1S882.checked)*2;
      DrumP := DrumP + BoolToInt(D1S883.checked)*4;
      DrumP := DrumP + BoolToInt(D1S884.checked)*8;
      DrumP := DrumP + BoolToInt(D1S885.checked)*16;
      DrumP := DrumP + BoolToInt(D1S886.checked)*32;
      DrumP := DrumP + BoolToInt(D1S887.checked)*64;
      DrumP := DrumP + BoolToInt(D1S888.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='7015';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S889.checked)*1;
      DrumP := DrumP + BoolToInt(D1S890.checked)*2;
      DrumP := DrumP + BoolToInt(D1S891.checked)*4;
      DrumP := DrumP + BoolToInt(D1S892.checked)*8;
      DrumP := DrumP + BoolToInt(D1S893.checked)*16;
      DrumP := DrumP + BoolToInt(D1S894.checked)*32;
      DrumP := DrumP + BoolToInt(D1S895.checked)*64;
      DrumP := DrumP + BoolToInt(D1S896.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='7016';
      //Ende File
      FileStream.Free;
end;

procedure TMainForm.CheckDrum7ASequence(Patternbase: Integer);
var
  BytesRead : Integer;
FileStream : TFileStream;
DrumPC : Integer;
begin

      FileStream := tFileStream.Create (filename,fmShareDenyNone);
FileStream.Position := patternbase+206+10;
      //The Pattern
      DrumP :=0;
      DrumPC :=0;
      DrumP := DrumP + BoolToInt(D1S897.checked)*1;
      DrumP := DrumP + BoolToInt(D1S898.checked)*2;
      DrumP := DrumP + BoolToInt(D1S899.checked)*4;
      DrumP := DrumP + BoolToInt(D1S900.checked)*8;
      DrumP := DrumP + BoolToInt(D1S901.checked)*16;
      DrumP := DrumP + BoolToInt(D1S902.checked)*32;
      DrumP := DrumP + BoolToInt(D1S903.checked)*64;
      DrumP := DrumP + BoolToInt(D1S904.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='8001';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S905.checked)*1;
      DrumP := DrumP + BoolToInt(D1S906.checked)*2;
      DrumP := DrumP + BoolToInt(D1S907.checked)*4;
      DrumP := DrumP + BoolToInt(D1S908.checked)*8;
      DrumP := DrumP + BoolToInt(D1S909.checked)*16;
      DrumP := DrumP + BoolToInt(D1S910.checked)*32;
      DrumP := DrumP + BoolToInt(D1S911.checked)*64;
      DrumP := DrumP + BoolToInt(D1S912.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='8002';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S913.checked)*1;
      DrumP := DrumP + BoolToInt(D1S914.checked)*2;
      DrumP := DrumP + BoolToInt(D1S915.checked)*4;
      DrumP := DrumP + BoolToInt(D1S916.checked)*8;
      DrumP := DrumP + BoolToInt(D1S917.checked)*16;
      DrumP := DrumP + BoolToInt(D1S918.checked)*32;
      DrumP := DrumP + BoolToInt(D1S919.checked)*64;
      DrumP := DrumP + BoolToInt(D1S920.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='8003';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S921.checked)*1;
      DrumP := DrumP + BoolToInt(D1S922.checked)*2;
      DrumP := DrumP + BoolToInt(D1S923.checked)*4;
      DrumP := DrumP + BoolToInt(D1S924.checked)*8;
      DrumP := DrumP + BoolToInt(D1S925.checked)*16;
      DrumP := DrumP + BoolToInt(D1S926.checked)*32;
      DrumP := DrumP + BoolToInt(D1S927.checked)*64;
      DrumP := DrumP + BoolToInt(D1S928.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='8004';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S929.checked)*1;
      DrumP := DrumP + BoolToInt(D1S930.checked)*2;
      DrumP := DrumP + BoolToInt(D1S931.checked)*4;
      DrumP := DrumP + BoolToInt(D1S932.checked)*8;
      DrumP := DrumP + BoolToInt(D1S933.checked)*16;
      DrumP := DrumP + BoolToInt(D1S934.checked)*32;
      DrumP := DrumP + BoolToInt(D1S935.checked)*64;
      DrumP := DrumP + BoolToInt(D1S936.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='8005';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S937.checked)*1;
      DrumP := DrumP + BoolToInt(D1S938.checked)*2;
      DrumP := DrumP + BoolToInt(D1S939.checked)*4;
      DrumP := DrumP + BoolToInt(D1S940.checked)*8;
      DrumP := DrumP + BoolToInt(D1S941.checked)*16;
      DrumP := DrumP + BoolToInt(D1S942.checked)*32;
      DrumP := DrumP + BoolToInt(D1S943.checked)*64;
      DrumP := DrumP + BoolToInt(D1S944.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='8006';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S945.checked)*1;
      DrumP := DrumP + BoolToInt(D1S946.checked)*2;
      DrumP := DrumP + BoolToInt(D1S947.checked)*4;
      DrumP := DrumP + BoolToInt(D1S948.checked)*8;
      DrumP := DrumP + BoolToInt(D1S949.checked)*16;
      DrumP := DrumP + BoolToInt(D1S950.checked)*32;
      DrumP := DrumP + BoolToInt(D1S951.checked)*64;
      DrumP := DrumP + BoolToInt(D1S952.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='8007';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S953.checked)*1;
      DrumP := DrumP + BoolToInt(D1S954.checked)*2;
      DrumP := DrumP + BoolToInt(D1S955.checked)*4;
      DrumP := DrumP + BoolToInt(D1S956.checked)*8;
      DrumP := DrumP + BoolToInt(D1S957.checked)*16;
      DrumP := DrumP + BoolToInt(D1S958.checked)*32;
      DrumP := DrumP + BoolToInt(D1S959.checked)*64;
      DrumP := DrumP + BoolToInt(D1S960.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='8008';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S961.checked)*1;
      DrumP := DrumP + BoolToInt(D1S962.checked)*2;
      DrumP := DrumP + BoolToInt(D1S963.checked)*4;
      DrumP := DrumP + BoolToInt(D1S964.checked)*8;
      DrumP := DrumP + BoolToInt(D1S965.checked)*16;
      DrumP := DrumP + BoolToInt(D1S966.checked)*32;
      DrumP := DrumP + BoolToInt(D1S967.checked)*64;
      DrumP := DrumP + BoolToInt(D1S968.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='8009';
      BytesRead:=Filestream.Write(DrumP,1);
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S969.checked)*1;
      DrumP := DrumP + BoolToInt(D1S970.checked)*2;
      DrumP := DrumP + BoolToInt(D1S971.checked)*4;
      DrumP := DrumP + BoolToInt(D1S972.checked)*8;
      DrumP := DrumP + BoolToInt(D1S973.checked)*16;
      DrumP := DrumP + BoolToInt(D1S974.checked)*32;
      DrumP := DrumP + BoolToInt(D1S975.checked)*64;
      DrumP := DrumP + BoolToInt(D1S976.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='8010';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S977.checked)*1;
      DrumP := DrumP + BoolToInt(D1S978.checked)*2;
      DrumP := DrumP + BoolToInt(D1S979.checked)*4;
      DrumP := DrumP + BoolToInt(D1S980.checked)*8;
      DrumP := DrumP + BoolToInt(D1S981.checked)*16;
      DrumP := DrumP + BoolToInt(D1S982.checked)*32;
      DrumP := DrumP + BoolToInt(D1S983.checked)*64;
      DrumP := DrumP + BoolToInt(D1S984.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='8011';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S985.checked)*1;
      DrumP := DrumP + BoolToInt(D1S986.checked)*2;
      DrumP := DrumP + BoolToInt(D1S987.checked)*4;
      DrumP := DrumP + BoolToInt(D1S988.checked)*8;
      DrumP := DrumP + BoolToInt(D1S989.checked)*16;
      DrumP := DrumP + BoolToInt(D1S990.checked)*32;
      DrumP := DrumP + BoolToInt(D1S991.checked)*64;
      DrumP := DrumP + BoolToInt(D1S992.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='8012';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S993.checked)*1;
      DrumP := DrumP + BoolToInt(D1S994.checked)*2;
      DrumP := DrumP + BoolToInt(D1S995.checked)*4;
      DrumP := DrumP + BoolToInt(D1S996.checked)*8;
      DrumP := DrumP + BoolToInt(D1S997.checked)*16;
      DrumP := DrumP + BoolToInt(D1S998.checked)*32;
      DrumP := DrumP + BoolToInt(D1S999.checked)*64;
      DrumP := DrumP + BoolToInt(D1S1000.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='8013';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S1001.checked)*1;
      DrumP := DrumP + BoolToInt(D1S1002.checked)*2;
      DrumP := DrumP + BoolToInt(D1S1003.checked)*4;
      DrumP := DrumP + BoolToInt(D1S1004.checked)*8;
      DrumP := DrumP + BoolToInt(D1S1005.checked)*16;
      DrumP := DrumP + BoolToInt(D1S1006.checked)*32;
      DrumP := DrumP + BoolToInt(D1S1007.checked)*64;
      DrumP := DrumP + BoolToInt(D1S1008.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='8014';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S1009.checked)*1;
      DrumP := DrumP + BoolToInt(D1S1010.checked)*2;
      DrumP := DrumP + BoolToInt(D1S1011.checked)*4;
      DrumP := DrumP + BoolToInt(D1S1012.checked)*8;
      DrumP := DrumP + BoolToInt(D1S1013.checked)*16;
      DrumP := DrumP + BoolToInt(D1S1014.checked)*32;
      DrumP := DrumP + BoolToInt(D1S1015.checked)*64;
      DrumP := DrumP + BoolToInt(D1S1016.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='8015';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S1017.checked)*1;
      DrumP := DrumP + BoolToInt(D1S1018.checked)*2;
      DrumP := DrumP + BoolToInt(D1S1019.checked)*4;
      DrumP := DrumP + BoolToInt(D1S1020.checked)*8;
      DrumP := DrumP + BoolToInt(D1S1021.checked)*16;
      DrumP := DrumP + BoolToInt(D1S1022.checked)*32;
      DrumP := DrumP + BoolToInt(D1S1023.checked)*64;
      DrumP := DrumP + BoolToInt(D1S1024.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='8016';
//Ende File
FileStream.Free;
end;

procedure TMainForm.CheckDrum7BSequence(Patternbase: Integer);
var
  BytesRead : Integer;
FileStream : TFileStream;
DrumPC : Integer;
begin

      FileStream := tFileStream.Create (filename,fmShareDenyNone);
FileStream.Position := patternbase+232+10;
      //The Pattern
      DrumP :=0;
      DrumPC :=0;
      DrumP := DrumP + BoolToInt(D1S1025.checked)*1;
      DrumP := DrumP + BoolToInt(D1S1026.checked)*2;
      DrumP := DrumP + BoolToInt(D1S1027.checked)*4;
      DrumP := DrumP + BoolToInt(D1S1028.checked)*8;
      DrumP := DrumP + BoolToInt(D1S1029.checked)*16;
      DrumP := DrumP + BoolToInt(D1S1030.checked)*32;
      DrumP := DrumP + BoolToInt(D1S1031.checked)*64;
      DrumP := DrumP + BoolToInt(D1S1032.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='9001';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S1033.checked)*1;
      DrumP := DrumP + BoolToInt(D1S1034.checked)*2;
      DrumP := DrumP + BoolToInt(D1S1035.checked)*4;
      DrumP := DrumP + BoolToInt(D1S1036.checked)*8;
      DrumP := DrumP + BoolToInt(D1S1037.checked)*16;
      DrumP := DrumP + BoolToInt(D1S1038.checked)*32;
      DrumP := DrumP + BoolToInt(D1S1039.checked)*64;
      DrumP := DrumP + BoolToInt(D1S1040.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='9002';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S1041.checked)*1;
      DrumP := DrumP + BoolToInt(D1S1042.checked)*2;
      DrumP := DrumP + BoolToInt(D1S1043.checked)*4;
      DrumP := DrumP + BoolToInt(D1S1044.checked)*8;
      DrumP := DrumP + BoolToInt(D1S1045.checked)*16;
      DrumP := DrumP + BoolToInt(D1S1046.checked)*32;
      DrumP := DrumP + BoolToInt(D1S1047.checked)*64;
      DrumP := DrumP + BoolToInt(D1S1048.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='9003';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S1049.checked)*1;
      DrumP := DrumP + BoolToInt(D1S1050.checked)*2;
      DrumP := DrumP + BoolToInt(D1S1051.checked)*4;
      DrumP := DrumP + BoolToInt(D1S1052.checked)*8;
      DrumP := DrumP + BoolToInt(D1S1053.checked)*16;
      DrumP := DrumP + BoolToInt(D1S1054.checked)*32;
      DrumP := DrumP + BoolToInt(D1S1055.checked)*64;
      DrumP := DrumP + BoolToInt(D1S1056.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='9004';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S1057.checked)*1;
      DrumP := DrumP + BoolToInt(D1S1058.checked)*2;
      DrumP := DrumP + BoolToInt(D1S1059.checked)*4;
      DrumP := DrumP + BoolToInt(D1S1060.checked)*8;
      DrumP := DrumP + BoolToInt(D1S1061.checked)*16;
      DrumP := DrumP + BoolToInt(D1S1062.checked)*32;
      DrumP := DrumP + BoolToInt(D1S1063.checked)*64;
      DrumP := DrumP + BoolToInt(D1S1064.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='9005';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S1065.checked)*1;
      DrumP := DrumP + BoolToInt(D1S1066.checked)*2;
      DrumP := DrumP + BoolToInt(D1S1067.checked)*4;
      DrumP := DrumP + BoolToInt(D1S1068.checked)*8;
      DrumP := DrumP + BoolToInt(D1S1069.checked)*16;
      DrumP := DrumP + BoolToInt(D1S1070.checked)*32;
      DrumP := DrumP + BoolToInt(D1S1071.checked)*64;
      DrumP := DrumP + BoolToInt(D1S1072.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='9006';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S1073.checked)*1;
      DrumP := DrumP + BoolToInt(D1S1074.checked)*2;
      DrumP := DrumP + BoolToInt(D1S1075.checked)*4;
      DrumP := DrumP + BoolToInt(D1S1076.checked)*8;
      DrumP := DrumP + BoolToInt(D1S1077.checked)*16;
      DrumP := DrumP + BoolToInt(D1S1078.checked)*32;
      DrumP := DrumP + BoolToInt(D1S1079.checked)*64;
      DrumP := DrumP + BoolToInt(D1S1080.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='9007';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S1081.checked)*1;
      DrumP := DrumP + BoolToInt(D1S1082.checked)*2;
      DrumP := DrumP + BoolToInt(D1S1083.checked)*4;
      DrumP := DrumP + BoolToInt(D1S1084.checked)*8;
      DrumP := DrumP + BoolToInt(D1S1085.checked)*16;
      DrumP := DrumP + BoolToInt(D1S1086.checked)*32;
      DrumP := DrumP + BoolToInt(D1S1087.checked)*64;
      DrumP := DrumP + BoolToInt(D1S1088.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='9008';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S1089.checked)*1;
      DrumP := DrumP + BoolToInt(D1S1090.checked)*2;
      DrumP := DrumP + BoolToInt(D1S1091.checked)*4;
      DrumP := DrumP + BoolToInt(D1S1092.checked)*8;
      DrumP := DrumP + BoolToInt(D1S1093.checked)*16;
      DrumP := DrumP + BoolToInt(D1S1094.checked)*32;
      DrumP := DrumP + BoolToInt(D1S1095.checked)*64;
      DrumP := DrumP + BoolToInt(D1S1096.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='9009';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S1097.checked)*1;
      DrumP := DrumP + BoolToInt(D1S1098.checked)*2;
      DrumP := DrumP + BoolToInt(D1S1099.checked)*4;
      DrumP := DrumP + BoolToInt(D1S1100.checked)*8;
      DrumP := DrumP + BoolToInt(D1S1101.checked)*16;
      DrumP := DrumP + BoolToInt(D1S1102.checked)*32;
      DrumP := DrumP + BoolToInt(D1S1103.checked)*64;
      DrumP := DrumP + BoolToInt(D1S1104.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='9010';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S1105.checked)*1;
      DrumP := DrumP + BoolToInt(D1S1106.checked)*2;
      DrumP := DrumP + BoolToInt(D1S1107.checked)*4;
      DrumP := DrumP + BoolToInt(D1S1108.checked)*8;
      DrumP := DrumP + BoolToInt(D1S1109.checked)*16;
      DrumP := DrumP + BoolToInt(D1S1110.checked)*32;
      DrumP := DrumP + BoolToInt(D1S1111.checked)*64;
      DrumP := DrumP + BoolToInt(D1S1112.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='9011';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S1113.checked)*1;
      DrumP := DrumP + BoolToInt(D1S1114.checked)*2;
      DrumP := DrumP + BoolToInt(D1S1115.checked)*4;
      DrumP := DrumP + BoolToInt(D1S1116.checked)*8;
      DrumP := DrumP + BoolToInt(D1S1117.checked)*16;
      DrumP := DrumP + BoolToInt(D1S1118.checked)*32;
      DrumP := DrumP + BoolToInt(D1S1119.checked)*64;
      DrumP := DrumP + BoolToInt(D1S1120.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='9012';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S1121.checked)*1;
      DrumP := DrumP + BoolToInt(D1S1122.checked)*2;
      DrumP := DrumP + BoolToInt(D1S1123.checked)*4;
      DrumP := DrumP + BoolToInt(D1S1124.checked)*8;
      DrumP := DrumP + BoolToInt(D1S1125.checked)*16;
      DrumP := DrumP + BoolToInt(D1S1126.checked)*32;
      DrumP := DrumP + BoolToInt(D1S1127.checked)*64;
      DrumP := DrumP + BoolToInt(D1S1128.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='9013';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S1129.checked)*1;
      DrumP := DrumP + BoolToInt(D1S1130.checked)*2;
      DrumP := DrumP + BoolToInt(D1S1131.checked)*4;
      DrumP := DrumP + BoolToInt(D1S1132.checked)*8;
      DrumP := DrumP + BoolToInt(D1S1133.checked)*16;
      DrumP := DrumP + BoolToInt(D1S1134.checked)*32;
      DrumP := DrumP + BoolToInt(D1S1135.checked)*64;
      DrumP := DrumP + BoolToInt(D1S1136.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='9014';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S1137.checked)*1;
      DrumP := DrumP + BoolToInt(D1S1138.checked)*2;
      DrumP := DrumP + BoolToInt(D1S1139.checked)*4;
      DrumP := DrumP + BoolToInt(D1S1140.checked)*8;
      DrumP := DrumP + BoolToInt(D1S1141.checked)*16;
      DrumP := DrumP + BoolToInt(D1S1142.checked)*32;
      DrumP := DrumP + BoolToInt(D1S1143.checked)*64;
      DrumP := DrumP + BoolToInt(D1S1144.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='9015';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S1145.checked)*1;
      DrumP := DrumP + BoolToInt(D1S1146.checked)*2;
      DrumP := DrumP + BoolToInt(D1S1147.checked)*4;
      DrumP := DrumP + BoolToInt(D1S1148.checked)*8;
      DrumP := DrumP + BoolToInt(D1S1149.checked)*16;
      DrumP := DrumP + BoolToInt(D1S1150.checked)*32;
      DrumP := DrumP + BoolToInt(D1S1151.checked)*64;
      DrumP := DrumP + BoolToInt(D1S1152.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='9016';
      //Ende File
      FileStream.Free;
end;


procedure TMainForm.CheckDrumAccentSequence(Patternbase: Integer);
var
BytesRead : Integer;
FileStream : TFileStream;
DrumPC : Integer;
begin

      FileStream := tFileStream.Create (filename,fmShareDenyNone);
FileStream.Position := patternbase+1640;
      //Drum Accent Pattern
      DrumP :=0;
      DrumPC :=0;
      DrumP := DrumP + BoolToInt(D1S1153.checked)*1;
      DrumP := DrumP + BoolToInt(D1S1154.checked)*2;
      DrumP := DrumP + BoolToInt(D1S1155.checked)*4;
      DrumP := DrumP + BoolToInt(D1S1156.checked)*8;
      DrumP := DrumP + BoolToInt(D1S1157.checked)*16;
      DrumP := DrumP + BoolToInt(D1S1158.checked)*32;
      DrumP := DrumP + BoolToInt(D1S1159.checked)*64;
      DrumP := DrumP + BoolToInt(D1S1160.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='AD01';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S1161.checked)*1;
      DrumP := DrumP + BoolToInt(D1S1162.checked)*2;
      DrumP := DrumP + BoolToInt(D1S1163.checked)*4;
      DrumP := DrumP + BoolToInt(D1S1164.checked)*8;
      DrumP := DrumP + BoolToInt(D1S1165.checked)*16;
      DrumP := DrumP + BoolToInt(D1S1166.checked)*32;
      DrumP := DrumP + BoolToInt(D1S1167.checked)*64;
      DrumP := DrumP + BoolToInt(D1S1168.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='AD02';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S1169.checked)*1;
      DrumP := DrumP + BoolToInt(D1S1170.checked)*2;
      DrumP := DrumP + BoolToInt(D1S1171.checked)*4;
      DrumP := DrumP + BoolToInt(D1S1172.checked)*8;
      DrumP := DrumP + BoolToInt(D1S1173.checked)*16;
      DrumP := DrumP + BoolToInt(D1S1174.checked)*32;
      DrumP := DrumP + BoolToInt(D1S1175.checked)*64;
      DrumP := DrumP + BoolToInt(D1S1176.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='AD03';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S1177.checked)*1;
      DrumP := DrumP + BoolToInt(D1S1178.checked)*2;
      DrumP := DrumP + BoolToInt(D1S1179.checked)*4;
      DrumP := DrumP + BoolToInt(D1S1180.checked)*8;
      DrumP := DrumP + BoolToInt(D1S1181.checked)*16;
      DrumP := DrumP + BoolToInt(D1S1182.checked)*32;
      DrumP := DrumP + BoolToInt(D1S1183.checked)*64;
      DrumP := DrumP + BoolToInt(D1S1184.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='AD04';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S1185.checked)*1;
      DrumP := DrumP + BoolToInt(D1S1186.checked)*2;
      DrumP := DrumP + BoolToInt(D1S1187.checked)*4;
      DrumP := DrumP + BoolToInt(D1S1188.checked)*8;
      DrumP := DrumP + BoolToInt(D1S1189.checked)*16;
      DrumP := DrumP + BoolToInt(D1S1190.checked)*32;
      DrumP := DrumP + BoolToInt(D1S1191.checked)*64;
      DrumP := DrumP + BoolToInt(D1S1192.checked)*128;
 BytesRead:=Filestream.Read(DrumPC,1);
 IF Not(DrumP=DrumPC) Then Errorcode:='AD05';
     DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S1193.checked)*1;
      DrumP := DrumP + BoolToInt(D1S1194.checked)*2;
      DrumP := DrumP + BoolToInt(D1S1195.checked)*4;
      DrumP := DrumP + BoolToInt(D1S1196.checked)*8;
      DrumP := DrumP + BoolToInt(D1S1197.checked)*16;
      DrumP := DrumP + BoolToInt(D1S1198.checked)*32;
      DrumP := DrumP + BoolToInt(D1S1199.checked)*64;
      DrumP := DrumP + BoolToInt(D1S1200.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='AD06';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S1201.checked)*1;
      DrumP := DrumP + BoolToInt(D1S1202.checked)*2;
      DrumP := DrumP + BoolToInt(D1S1203.checked)*4;
      DrumP := DrumP + BoolToInt(D1S1204.checked)*8;
      DrumP := DrumP + BoolToInt(D1S1205.checked)*16;
      DrumP := DrumP + BoolToInt(D1S1206.checked)*32;
      DrumP := DrumP + BoolToInt(D1S1207.checked)*64;
      DrumP := DrumP + BoolToInt(D1S1208.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='AD07';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S1209.checked)*1;
      DrumP := DrumP + BoolToInt(D1S1210.checked)*2;
      DrumP := DrumP + BoolToInt(D1S1211.checked)*4;
      DrumP := DrumP + BoolToInt(D1S1212.checked)*8;
      DrumP := DrumP + BoolToInt(D1S1213.checked)*16;
      DrumP := DrumP + BoolToInt(D1S1214.checked)*32;
      DrumP := DrumP + BoolToInt(D1S1215.checked)*64;
      DrumP := DrumP + BoolToInt(D1S1216.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='AD08';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S1217.checked)*1;
      DrumP := DrumP + BoolToInt(D1S1218.checked)*2;
      DrumP := DrumP + BoolToInt(D1S1219.checked)*4;
      DrumP := DrumP + BoolToInt(D1S1220.checked)*8;
      DrumP := DrumP + BoolToInt(D1S1221.checked)*16;
      DrumP := DrumP + BoolToInt(D1S1222.checked)*32;
      DrumP := DrumP + BoolToInt(D1S1223.checked)*64;
      DrumP := DrumP + BoolToInt(D1S1224.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='AD09';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S1225.checked)*1;
      DrumP := DrumP + BoolToInt(D1S1226.checked)*2;
      DrumP := DrumP + BoolToInt(D1S1227.checked)*4;
      DrumP := DrumP + BoolToInt(D1S1228.checked)*8;
      DrumP := DrumP + BoolToInt(D1S1229.checked)*16;
      DrumP := DrumP + BoolToInt(D1S1230.checked)*32;
      DrumP := DrumP + BoolToInt(D1S1231.checked)*64;
      DrumP := DrumP + BoolToInt(D1S1232.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='AD10';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S1233.checked)*1;
      DrumP := DrumP + BoolToInt(D1S1234.checked)*2;
      DrumP := DrumP + BoolToInt(D1S1235.checked)*4;
      DrumP := DrumP + BoolToInt(D1S1236.checked)*8;
      DrumP := DrumP + BoolToInt(D1S1237.checked)*16;
      DrumP := DrumP + BoolToInt(D1S1238.checked)*32;
      DrumP := DrumP + BoolToInt(D1S1239.checked)*64;
      DrumP := DrumP + BoolToInt(D1S1240.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='AD11';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S1241.checked)*1;
      DrumP := DrumP + BoolToInt(D1S1242.checked)*2;
      DrumP := DrumP + BoolToInt(D1S1243.checked)*4;
      DrumP := DrumP + BoolToInt(D1S1244.checked)*8;
      DrumP := DrumP + BoolToInt(D1S1245.checked)*16;
      DrumP := DrumP + BoolToInt(D1S1246.checked)*32;
      DrumP := DrumP + BoolToInt(D1S1247.checked)*64;
      DrumP := DrumP + BoolToInt(D1S1248.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='AD12';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S1249.checked)*1;
      DrumP := DrumP + BoolToInt(D1S1250.checked)*2;
      DrumP := DrumP + BoolToInt(D1S1251.checked)*4;
      DrumP := DrumP + BoolToInt(D1S1252.checked)*8;
      DrumP := DrumP + BoolToInt(D1S1253.checked)*16;
      DrumP := DrumP + BoolToInt(D1S1254.checked)*32;
      DrumP := DrumP + BoolToInt(D1S1255.checked)*64;
      DrumP := DrumP + BoolToInt(D1S1256.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='AD13';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S1257.checked)*1;
      DrumP := DrumP + BoolToInt(D1S1258.checked)*2;
      DrumP := DrumP + BoolToInt(D1S1259.checked)*4;
      DrumP := DrumP + BoolToInt(D1S1260.checked)*8;
      DrumP := DrumP + BoolToInt(D1S1261.checked)*16;
      DrumP := DrumP + BoolToInt(D1S1262.checked)*32;
      DrumP := DrumP + BoolToInt(D1S1263.checked)*64;
      DrumP := DrumP + BoolToInt(D1S1264.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='AD14';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S1265.checked)*1;
      DrumP := DrumP + BoolToInt(D1S1266.checked)*2;
      DrumP := DrumP + BoolToInt(D1S1267.checked)*4;
      DrumP := DrumP + BoolToInt(D1S1268.checked)*8;
      DrumP := DrumP + BoolToInt(D1S1269.checked)*16;
      DrumP := DrumP + BoolToInt(D1S1270.checked)*32;
      DrumP := DrumP + BoolToInt(D1S1271.checked)*64;
      DrumP := DrumP + BoolToInt(D1S1272.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='AD15';
      DrumP :=0;
      DrumP := DrumP + BoolToInt(D1S1273.checked)*1;
      DrumP := DrumP + BoolToInt(D1S1274.checked)*2;
      DrumP := DrumP + BoolToInt(D1S1275.checked)*4;
      DrumP := DrumP + BoolToInt(D1S1276.checked)*8;
      DrumP := DrumP + BoolToInt(D1S1277.checked)*16;
      DrumP := DrumP + BoolToInt(D1S1278.checked)*32;
      DrumP := DrumP + BoolToInt(D1S1279.checked)*64;
      DrumP := DrumP + BoolToInt(D1S1280.checked)*128;
BytesRead:=Filestream.Read(DrumPC,1);
IF Not(DrumP=DrumPC) Then Errorcode:='AD16';
      //Ende File
      FileStream.Free;
end;

procedure TMainForm.CheckSynthAccentSequence(Patternbase: Integer);
var
  BytesRead : Integer;
FileStream : TFileStream;
DrumPC : Integer;
begin

  FileStream := tFileStream.Create (filename,fmShareDenyNone);
  FileStream.Position := patternbase+1658;
  //Synth Accent Pattern
  DrumP :=0;
  DrumPC := 0;
  DrumP := DrumP + BoolToInt(D1S1281.checked)*1;
  DrumP := DrumP + BoolToInt(D1S1282.checked)*2;
  DrumP := DrumP + BoolToInt(D1S1283.checked)*4;
  DrumP := DrumP + BoolToInt(D1S1284.checked)*8;
  DrumP := DrumP + BoolToInt(D1S1285.checked)*16;
  DrumP := DrumP + BoolToInt(D1S1286.checked)*32;
  DrumP := DrumP + BoolToInt(D1S1287.checked)*64;
  DrumP := DrumP + BoolToInt(D1S1288.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='AS01';
  DrumP :=0;
  DrumP := DrumP + BoolToInt(D1S1289.checked)*1;
  DrumP := DrumP + BoolToInt(D1S1290.checked)*2;
  DrumP := DrumP + BoolToInt(D1S1291.checked)*4;
  DrumP := DrumP + BoolToInt(D1S1292.checked)*8;
  DrumP := DrumP + BoolToInt(D1S1293.checked)*16;
  DrumP := DrumP + BoolToInt(D1S1294.checked)*32;
  DrumP := DrumP + BoolToInt(D1S1295.checked)*64;
  DrumP := DrumP + BoolToInt(D1S1296.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='AS02';
  DrumP :=0;
  DrumP := DrumP + BoolToInt(D1S1297.checked)*1;
  DrumP := DrumP + BoolToInt(D1S1298.checked)*2;
  DrumP := DrumP + BoolToInt(D1S1299.checked)*4;
  DrumP := DrumP + BoolToInt(D1S1300.checked)*8;
  DrumP := DrumP + BoolToInt(D1S1301.checked)*16;
  DrumP := DrumP + BoolToInt(D1S1302.checked)*32;
  DrumP := DrumP + BoolToInt(D1S1303.checked)*64;
  DrumP := DrumP + BoolToInt(D1S1304.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='AS03';
  DrumP :=0;
  DrumP := DrumP + BoolToInt(D1S1305.checked)*1;
  DrumP := DrumP + BoolToInt(D1S1306.checked)*2;
  DrumP := DrumP + BoolToInt(D1S1307.checked)*4;
  DrumP := DrumP + BoolToInt(D1S1308.checked)*8;
  DrumP := DrumP + BoolToInt(D1S1309.checked)*16;
  DrumP := DrumP + BoolToInt(D1S1310.checked)*32;
  DrumP := DrumP + BoolToInt(D1S1311.checked)*64;
  DrumP := DrumP + BoolToInt(D1S1312.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='AS04';
  DrumP :=0;
  DrumP := DrumP + BoolToInt(D1S1313.checked)*1;
  DrumP := DrumP + BoolToInt(D1S1314.checked)*2;
  DrumP := DrumP + BoolToInt(D1S1315.checked)*4;
  DrumP := DrumP + BoolToInt(D1S1316.checked)*8;
  DrumP := DrumP + BoolToInt(D1S1317.checked)*16;
  DrumP := DrumP + BoolToInt(D1S1318.checked)*32;
  DrumP := DrumP + BoolToInt(D1S1319.checked)*64;
  DrumP := DrumP + BoolToInt(D1S1320.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='AS05';
  DrumP :=0;
  DrumP := DrumP + BoolToInt(D1S1321.checked)*1;
  DrumP := DrumP + BoolToInt(D1S1322.checked)*2;
  DrumP := DrumP + BoolToInt(D1S1323.checked)*4;
  DrumP := DrumP + BoolToInt(D1S1324.checked)*8;
  DrumP := DrumP + BoolToInt(D1S1325.checked)*16;
  DrumP := DrumP + BoolToInt(D1S1326.checked)*32;
  DrumP := DrumP + BoolToInt(D1S1327.checked)*64;
  DrumP := DrumP + BoolToInt(D1S1328.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='AS06';
  DrumP :=0;
  DrumP := DrumP + BoolToInt(D1S1329.checked)*1;
  DrumP := DrumP + BoolToInt(D1S1330.checked)*2;
  DrumP := DrumP + BoolToInt(D1S1331.checked)*4;
  DrumP := DrumP + BoolToInt(D1S1332.checked)*8;
  DrumP := DrumP + BoolToInt(D1S1333.checked)*16;
  DrumP := DrumP + BoolToInt(D1S1334.checked)*32;
  DrumP := DrumP + BoolToInt(D1S1335.checked)*64;
  DrumP := DrumP + BoolToInt(D1S1336.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='AS07';
  DrumP :=0;
  DrumP := DrumP + BoolToInt(D1S1337.checked)*1;
  DrumP := DrumP + BoolToInt(D1S1338.checked)*2;
  DrumP := DrumP + BoolToInt(D1S1339.checked)*4;
  DrumP := DrumP + BoolToInt(D1S1340.checked)*8;
  DrumP := DrumP + BoolToInt(D1S1341.checked)*16;
  DrumP := DrumP + BoolToInt(D1S1342.checked)*32;
  DrumP := DrumP + BoolToInt(D1S1343.checked)*64;
  DrumP := DrumP + BoolToInt(D1S1344.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='AS08';
  DrumP :=0;
  DrumP := DrumP + BoolToInt(D1S1345.checked)*1;
  DrumP := DrumP + BoolToInt(D1S1346.checked)*2;
  DrumP := DrumP + BoolToInt(D1S1347.checked)*4;
  DrumP := DrumP + BoolToInt(D1S1348.checked)*8;
  DrumP := DrumP + BoolToInt(D1S1349.checked)*16;
  DrumP := DrumP + BoolToInt(D1S1350.checked)*32;
  DrumP := DrumP + BoolToInt(D1S1351.checked)*64;
  DrumP := DrumP + BoolToInt(D1S1352.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='AS09';
  DrumP :=0;
  DrumP := DrumP + BoolToInt(D1S1353.checked)*1;
  DrumP := DrumP + BoolToInt(D1S1354.checked)*2;
  DrumP := DrumP + BoolToInt(D1S1355.checked)*4;
  DrumP := DrumP + BoolToInt(D1S1356.checked)*8;
  DrumP := DrumP + BoolToInt(D1S1357.checked)*16;
  DrumP := DrumP + BoolToInt(D1S1358.checked)*32;
  DrumP := DrumP + BoolToInt(D1S1359.checked)*64;
  DrumP := DrumP + BoolToInt(D1S1360.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='AS10';
  DrumP :=0;
  DrumP := DrumP + BoolToInt(D1S1361.checked)*1;
  DrumP := DrumP + BoolToInt(D1S1362.checked)*2;
  DrumP := DrumP + BoolToInt(D1S1363.checked)*4;
  DrumP := DrumP + BoolToInt(D1S1364.checked)*8;
  DrumP := DrumP + BoolToInt(D1S1365.checked)*16;
  DrumP := DrumP + BoolToInt(D1S1366.checked)*32;
  DrumP := DrumP + BoolToInt(D1S1367.checked)*64;
  DrumP := DrumP + BoolToInt(D1S1368.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='AS11';
  DrumP :=0;
  DrumP := DrumP + BoolToInt(D1S1369.checked)*1;
  DrumP := DrumP + BoolToInt(D1S1370.checked)*2;
  DrumP := DrumP + BoolToInt(D1S1371.checked)*4;
  DrumP := DrumP + BoolToInt(D1S1372.checked)*8;
  DrumP := DrumP + BoolToInt(D1S1373.checked)*16;
  DrumP := DrumP + BoolToInt(D1S1374.checked)*32;
  DrumP := DrumP + BoolToInt(D1S1375.checked)*64;
  DrumP := DrumP + BoolToInt(D1S1376.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='AS12';
  DrumP :=0;
  DrumP := DrumP + BoolToInt(D1S1377.checked)*1;
  DrumP := DrumP + BoolToInt(D1S1378.checked)*2;
  DrumP := DrumP + BoolToInt(D1S1379.checked)*4;
  DrumP := DrumP + BoolToInt(D1S1380.checked)*8;
  DrumP := DrumP + BoolToInt(D1S1381.checked)*16;
  DrumP := DrumP + BoolToInt(D1S1382.checked)*32;
  DrumP := DrumP + BoolToInt(D1S1383.checked)*64;
  DrumP := DrumP + BoolToInt(D1S1384.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='AS13';
  DrumP :=0;
  DrumP := DrumP + BoolToInt(D1S1385.checked)*1;
  DrumP := DrumP + BoolToInt(D1S1386.checked)*2;
  DrumP := DrumP + BoolToInt(D1S1387.checked)*4;
  DrumP := DrumP + BoolToInt(D1S1388.checked)*8;
  DrumP := DrumP + BoolToInt(D1S1389.checked)*16;
  DrumP := DrumP + BoolToInt(D1S1390.checked)*32;
  DrumP := DrumP + BoolToInt(D1S1391.checked)*64;
  DrumP := DrumP + BoolToInt(D1S1392.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='AS14';
  DrumP :=0;
  DrumP := DrumP + BoolToInt(D1S1393.checked)*1;
  DrumP := DrumP + BoolToInt(D1S1394.checked)*2;
  DrumP := DrumP + BoolToInt(D1S1395.checked)*4;
  DrumP := DrumP + BoolToInt(D1S1396.checked)*8;
  DrumP := DrumP + BoolToInt(D1S1397.checked)*16;
  DrumP := DrumP + BoolToInt(D1S1398.checked)*32;
  DrumP := DrumP + BoolToInt(D1S1399.checked)*64;
  DrumP := DrumP + BoolToInt(D1S1400.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='AS15';
  DrumP :=0;
  DrumP := DrumP + BoolToInt(D1S1401.checked)*1;
  DrumP := DrumP + BoolToInt(D1S1402.checked)*2;
  DrumP := DrumP + BoolToInt(D1S1403.checked)*4;
  DrumP := DrumP + BoolToInt(D1S1404.checked)*8;
  DrumP := DrumP + BoolToInt(D1S1405.checked)*16;
  DrumP := DrumP + BoolToInt(D1S1406.checked)*32;
  DrumP := DrumP + BoolToInt(D1S1407.checked)*64;
  DrumP := DrumP + BoolToInt(D1S1408.checked)*128;
  BytesRead:=Filestream.Read(DrumPC,1);
  IF Not(DrumP=DrumPC) Then Errorcode:='AS16';
  //Ende File
  FileStream.Free;
end;

procedure TMainForm.CheckSynth1Parameter(Patternbase: Integer);
var
  BytesRead : Integer;
  FileStream : TFileStream;
  MTypeI :Integer;
  FSSSRAC : Integer;
  MTDBSC : Integer;

begin

  FileStream := tFileStream.Create (filename,fmShareDenyNone);
  FileStream.Position := patternbase+258;
	// Synth1
	 BytesRead:=Filestream.Read(Waveform,1);
	 BytesRead:=Filestream.Read(Syntune,1);
	 BytesRead:=Filestream.Read(Synthoscillator,1);
	 IF Not(Waveform= WaveformSynth1.ItemIndex) Then Errorcode:='SY1001';
	 IF Not(Synthoscillator=SynthoscSynth1.ItemIndex) Then Errorcode:='SY1002';
	 IF Not(Syntune=round(TuneSynth1.position)+50) Then Errorcode:='SY1003';


	 BytesRead:=Filestream.Read(OscEdit1,1);
	 IF Not(OscEdit1 = round(OscEdit1Synth1.Position)) Then Errorcode:='SY1004';
	 BytesRead:=Filestream.Read(OscEdit2,1);
	 IF Not(OscEdit2 = round(OscEdit2Synth1.Position)) Then Errorcode:='SY1005';
	 BytesRead:=Filestream.Read(PitchGlide ,1);
	 IF Not(PitchGlide=round(GlideSynth1.Position)) Then Errorcode:='SY1006';

	 BytesRead:=Filestream.Read(Filtertype ,1);
	 IF Not(Filtertype=FilterTypeSynth1.ItemIndex) Then Errorcode:='SY1007';
	 BytesRead:=Filestream.Read(Cutoff ,1);
	 IF Not(Cutoff=round(CutoffSynth1.Position)) Then Errorcode:='SY1008';
	 BytesRead:=Filestream.Read(Resonance  ,1);
	 IF Not(Resonance=round(ResonanceSynth1.Position)) Then Errorcode:='SY1009';
	 BytesRead:=Filestream.Read(EGInt,1);
	 IF Not(EGInt=round(EGIntSynth1.Position)+64) Then Errorcode:='SY1010';
	 BytesRead:=Filestream.Read(Drive,1);
	 IF Not(Drive=round(DriveSynth1.Position)) Then Errorcode:='SY1011';
	 BytesRead:=Filestream.Read(DLevel,1);
	 IF Not(DLevel=round(LevelSynth1.Position)) Then Errorcode:='SY1012';
	 BytesRead:=Filestream.Read(DPan,1);
	 IF Not(DPan=round(PanSynth1.Position)+64) Then Errorcode:='SY1013';
	 BytesRead:=Filestream.Read(DEGTime,1);
	 IF Not(DEGTime=round(EGTimeSynth1.Position)) Then Errorcode:='SY1014';
         FSSSRAC:=0;
	 BytesRead:=Filestream.Read(FSSSRAC,1);
	 FSSSRA:=0;
	 If (AmpEGSynth1.checked) then FSSSRA:=FSSSRA+16;
	 If (RollSynth1.checked) then FSSSRA:=FSSSRA+8;
	 If (FXSendSynth1.checked) then FSSSRA:=FSSSRA+4;
	 IF Not(FSSSRA=FSSSRA+FXSelectSynth1.ItemIndex) Then Errorcode:='SY1015';


	 MTDBS:=0;
         MTDBSC:=0;
         BytesRead:=Filestream.Read(MTDBS,1);
	 IF Not(MTDBS=0) Then Errorcode:='SY1016';
	 BytesRead:=Filestream.Read(MTDBSC,1);
	 MTDBS:=0;
	 If (BPMSyncSynth1.checked) then MTDBS:=MTDBS+128;
	 MTypeI := ModTypeSynth1.ItemIndex;
	 Case MTypeI of
	 1 : MTDBS:=MTDBS+16;
	 2 : MTDBS:=MTDBS+32;
	 3 : MTDBS:=MTDBS+48;
	 4 : MTDBS:=MTDBS+64;
	 end;
         MTDBS:=MTDBS+ModDestSynth1.ItemIndex;
	 IF Not(MTDBSC=MTDBS) Then Errorcode:='SY1017';


	 BytesRead:=Filestream.Read(ModulationSpeed,1);
	 IF Not(ModulationSpeed= round(ModSpeedSynth1.Position)) Then Errorcode:='SY1018';
	 BytesRead:=Filestream.Read(ModulationDepth,1);
	 IF Not(ModulationDepth-64=round(ModDepthSynth1.Position)) Then Errorcode:='SY1019';

	 BytesRead:=Filestream.Read(MotionSeqS,1);
	 IF Not(MotionSeqS=MotionSeqSynth1.ItemIndex) Then Errorcode:='SY1020';

	 //Ende File
	 FileStream.Free;
end;

procedure TMainForm.CheckSynth2Parameter(Patternbase: Integer);
var
  BytesRead : Integer;
  FileStream : TFileStream;
  MTypeI :Integer;
  FSSSRAC : Integer;
  MTDBSC : Integer;

begin

FileStream := tFileStream.Create (filename,fmShareDenyNone);
FileStream.Position := patternbase+534;
// Synth2
 BytesRead:=Filestream.Read(Waveform,1);
 BytesRead:=Filestream.Read(Syntune,1);
 BytesRead:=Filestream.Read(Synthoscillator,1);
 IF Not(Waveform= WaveformSynth2.ItemIndex) Then Errorcode:='SY2001';
 IF Not(Synthoscillator=SynthoscSynth2.ItemIndex) Then Errorcode:='SY2002';
 IF Not(Syntune=round(TuneSynth2.position)+50) Then Errorcode:='SY2003';


 BytesRead:=Filestream.Read(OscEdit1,1);
 IF Not(OscEdit1 = round(OscEdit1Synth2.Position)) Then Errorcode:='SY2004';
 BytesRead:=Filestream.Read(OscEdit2,1);
 IF Not(OscEdit2 = round(OscEdit2Synth2.Position)) Then Errorcode:='SY2005';
 BytesRead:=Filestream.Read(PitchGlide ,1);
 IF Not(PitchGlide=round(GlideSynth2.Position)) Then Errorcode:='SY2006';

 BytesRead:=Filestream.Read(Filtertype ,1);
 IF Not(Filtertype=FilterTypeSynth2.ItemIndex) Then Errorcode:='SY2007';
 BytesRead:=Filestream.Read(Cutoff ,1);
 IF Not(Cutoff=round(CutoffSynth2.Position)) Then Errorcode:='SY2008';
 BytesRead:=Filestream.Read(Resonance  ,1);
 IF Not(Resonance=round(ResonanceSynth2.Position)) Then Errorcode:='SY2009';
 BytesRead:=Filestream.Read(EGInt,1);
 IF Not(EGInt=round(EGIntSynth2.Position)+64) Then Errorcode:='SY2010';
 BytesRead:=Filestream.Read(Drive,1);
 IF Not(Drive=round(DriveSynth2.Position)) Then Errorcode:='SY2011';
 BytesRead:=Filestream.Read(DLevel,1);
 IF Not(DLevel=round(LevelSynth2.Position)) Then Errorcode:='SY2012';
 BytesRead:=Filestream.Read(DPan,1);
 IF Not(DPan=round(PanSynth2.Position)+64) Then Errorcode:='SY2013';
 BytesRead:=Filestream.Read(DEGTime,1);
 IF Not(DEGTime=round(EGTimeSynth2.Position)) Then Errorcode:='SY2014';
 FSSSRAC:=0;
 BytesRead:=Filestream.Read(FSSSRAC,1);
 FSSSRA:=0;
 If (AmpEGSynth2.checked) then FSSSRA:=FSSSRA+16;
 If (RollSynth2.checked) then FSSSRA:=FSSSRA+8;
 If (FXSendSynth2.checked) then FSSSRA:=FSSSRA+4;
 IF Not(FSSSRA=FSSSRA+FXSelectSynth2.ItemIndex) Then Errorcode:='SY2015';

 MTDBSC:=0;
 MTDBS:=0;
 BytesRead:=Filestream.Read(MTDBSC,1);
 IF Not(MTDBS=0) Then Errorcode:='SY2016';
 MTDBS:=0;
 	 BytesRead:=Filestream.Read(MTDBSC,1);
  If (BPMSyncSynth2.checked) then MTDBS:=MTDBS+128;
  MTypeI := ModTypeSynth2.ItemIndex;
  Case MTypeI of
 	 1 : MTDBS:=MTDBS+16;
 	 2 : MTDBS:=MTDBS+32;
 	 3 : MTDBS:=MTDBS+48;
 	 4 : MTDBS:=MTDBS+64;
  end;
  MTDBS:=MTDBS+ModDestSynth2.ItemIndex;
  IF Not(MTDBSC=MTDBS) Then Errorcode:='SY2017';


 BytesRead:=Filestream.Read(ModulationSpeed,1);
 IF Not(ModulationSpeed= round(ModSpeedSynth2.Position)) Then Errorcode:='SY2018';
 BytesRead:=Filestream.Read(ModulationDepth,1);
 IF Not(ModulationDepth=round(ModDepthSynth2.Position)+64) Then Errorcode:='SY2019';

 BytesRead:=Filestream.Read(MotionSeqS,1);
 IF Not(MotionSeqS=MotionSeqSynth2.ItemIndex) Then Errorcode:='SY2020';

 //Ende File
 FileStream.Free;
end;

procedure TMainForm.CheckSynth3Parameter(Patternbase: Integer);
var
  BytesRead : Integer;
  FileStream : TFileStream;
  MTypeI :Integer;
  FSSSRAC : Integer;
  MTDBSC : Integer;

begin

  FileStream := tFileStream.Create (filename,fmShareDenyNone);
  FileStream.Position := patternbase+810;
	// Synth3
	 BytesRead:=Filestream.Read(Waveform,1);
	 BytesRead:=Filestream.Read(Syntune,1);
	 BytesRead:=Filestream.Read(Synthoscillator,1);
	 IF Not(Waveform= WaveformSynth3.ItemIndex) Then Errorcode:='SY3001';
	 IF Not(Synthoscillator=SynthoscSynth3.ItemIndex) Then Errorcode:='SY3002';
	 IF Not(Syntune=round(TuneSynth3.position)+50) Then Errorcode:='SY3003';


	 BytesRead:=Filestream.Read(OscEdit1,1);
	 IF Not(OscEdit1 = round(OscEdit1Synth3.Position)) Then Errorcode:='SY3004';
	 BytesRead:=Filestream.Read(OscEdit2,1);
	 IF Not(OscEdit2 = round(OscEdit2Synth3.Position)) Then Errorcode:='SY3005';
	 BytesRead:=Filestream.Read(PitchGlide ,1);
	 IF Not(PitchGlide=round(GlideSynth3.Position)) Then Errorcode:='SY3006';

	 BytesRead:=Filestream.Read(Filtertype ,1);
	 IF Not(Filtertype=FilterTypeSynth3.ItemIndex) Then Errorcode:='SY3007';
	 BytesRead:=Filestream.Read(Cutoff ,1);
	 IF Not(Cutoff=round(CutoffSynth3.Position)) Then Errorcode:='SY3008';
	 BytesRead:=Filestream.Read(Resonance  ,1);
	 IF Not(Resonance=round(ResonanceSynth3.Position)) Then Errorcode:='SY3009';
	 BytesRead:=Filestream.Read(EGInt,1);
	 IF Not(EGInt=round(EGIntSynth3.Position)+64) Then Errorcode:='SY3010';
	 BytesRead:=Filestream.Read(Drive,1);
	 IF Not(Drive=round(DriveSynth3.Position)) Then Errorcode:='SY3011';
	 BytesRead:=Filestream.Read(DLevel,1);
	 IF Not(DLevel=round(LevelSynth3.Position)) Then Errorcode:='SY3012';
	 BytesRead:=Filestream.Read(DPan,1);
	 IF Not(DPan=round(PanSynth3.Position)+64) Then Errorcode:='SY3013';
	 BytesRead:=Filestream.Read(DEGTime,1);
	 IF Not(DEGTime=round(EGTimeSynth3.Position)) Then Errorcode:='SY3014';

         FSSSRAC:=0;
	 BytesRead:=Filestream.Read(FSSSRAC,1);
	 FSSSRA:=0;
	 If (AmpEGSynth3.checked) then FSSSRA:=FSSSRA+16;
	 If (RollSynth3.checked) then FSSSRA:=FSSSRA+8;
	 If (FXSendSynth3.checked) then FSSSRA:=FSSSRA+4;
	 IF Not(FSSSRA=FSSSRA+FXSelectSynth3.ItemIndex) Then Errorcode:='SY3015';

         MTDBSC:=0;
	 MTDBS:=0;
         BytesRead:=Filestream.Read(MTDBS,1);
	 IF Not(MTDBS=0) Then Errorcode:='SY3016';
	 BytesRead:=Filestream.Read(MTDBSC,1);
	 MTDBS:=0;
	 If (BPMSyncSynth3.checked) then MTDBS:=MTDBS+128;
	 MTypeI := ModTypeSynth3.ItemIndex;
	 Case MTypeI of
	 1 : MTDBS:=MTDBS+16;
	 2 : MTDBS:=MTDBS+32;
	 3 : MTDBS:=MTDBS+48;
	 4 : MTDBS:=MTDBS+64;
	 end;
         MTDBS:=MTDBS+ModDestSynth3.ItemIndex;
	 IF Not(MTDBSC=MTDBS) Then Errorcode:='SY3017';


	 BytesRead:=Filestream.Read(ModulationSpeed,1);
	 IF Not(ModulationSpeed= round(ModSpeedSynth3.Position)) Then Errorcode:='SY3018';
	 BytesRead:=Filestream.Read(ModulationDepth,1);
	 IF Not(ModulationDepth=round(ModDepthSynth3.Position)+64) Then Errorcode:='SY3019';

	 BytesRead:=Filestream.Read(MotionSeqS,1);
	 IF Not(MotionSeqS=MotionSeqSynth3.ItemIndex) Then Errorcode:='SY3020';

	 //Ende File
	 FileStream.Free;
end;

procedure TMainForm.CheckSynth4Parameter(Patternbase: Integer);
var
  BytesRead : Integer;
  FileStream : TFileStream;
  MTypeI :Integer;
  FSSSRAC : Integer;
  MTDBSC : Integer;

begin

  FileStream := tFileStream.Create (filename,fmShareDenyNone);
  FileStream.Position := patternbase+1086;
	// Synth4
	 BytesRead:=Filestream.Read(Waveform,1);
	 BytesRead:=Filestream.Read(Syntune,1);
	 BytesRead:=Filestream.Read(Synthoscillator,1);
	 IF Not(Waveform= WaveformSynth4.ItemIndex) Then Errorcode:='SY4001';
	 IF Not(Synthoscillator=SynthoscSynth4.ItemIndex) Then Errorcode:='SY4002';
	 IF Not(Syntune=round(TuneSynth4.position)+50) Then Errorcode:='SY4003';


	 BytesRead:=Filestream.Read(OscEdit1,1);
	 IF Not(OscEdit1 = round(OscEdit1Synth4.Position)) Then Errorcode:='SY4004';
	 BytesRead:=Filestream.Read(OscEdit2,1);
	 IF Not(OscEdit2 = round(OscEdit2Synth4.Position)) Then Errorcode:='SY4005';
	 BytesRead:=Filestream.Read(PitchGlide ,1);
	 IF Not(PitchGlide=round(GlideSynth4.Position)) Then Errorcode:='SY4006';

	 BytesRead:=Filestream.Read(Filtertype ,1);
	 IF Not(Filtertype=FilterTypeSynth4.ItemIndex) Then Errorcode:='SY4007';
	 BytesRead:=Filestream.Read(Cutoff ,1);
	 IF Not(Cutoff=round(CutoffSynth4.Position)) Then Errorcode:='SY4008';
	 BytesRead:=Filestream.Read(Resonance  ,1);
	 IF Not(Resonance=round(ResonanceSynth4.Position)) Then Errorcode:='SY4009';
	 BytesRead:=Filestream.Read(EGInt,1);
	 IF Not(EGInt=round(EGIntSynth4.Position)+64) Then Errorcode:='SY4010';
	 BytesRead:=Filestream.Read(Drive,1);
	 IF Not(Drive=round(DriveSynth4.Position)) Then Errorcode:='SY4011';
	 BytesRead:=Filestream.Read(DLevel,1);
	 IF Not(DLevel=round(LevelSynth4.Position)) Then Errorcode:='SY4012';
	 BytesRead:=Filestream.Read(DPan,1);
	 IF Not(DPan=round(PanSynth4.Position)+64) Then Errorcode:='SY4013';
	 BytesRead:=Filestream.Read(DEGTime,1);
	 IF Not(DEGTime=round(EGTimeSynth4.Position)) Then Errorcode:='SY4014';
         FSSSRAC:=0;
	 BytesRead:=Filestream.Read(FSSSRAC,1);
	 FSSSRA:=0;
	 If (AmpEGSynth4.checked) then FSSSRA:=FSSSRA+16;
	 If (RollSynth4.checked) then FSSSRA:=FSSSRA+8;
	 If (FXSendSynth4.checked) then FSSSRA:=FSSSRA+4;
	 IF Not(FSSSRA=FSSSRA+FXSelectSynth4.ItemIndex) Then Errorcode:='SY4015';


         MTDBSC:=0;
	 MTDBS:=0;
         BytesRead:=Filestream.Read(MTDBS,1);
	 IF Not(MTDBS=0) Then Errorcode:='SY4016';
	 BytesRead:=Filestream.Read(MTDBSC,1);
	 MTDBS:=0;
	 If (BPMSyncSynth4.checked) then MTDBS:=MTDBS+128;
	 MTypeI := ModTypeSynth4.ItemIndex;
	 Case MTypeI of
	 1 : MTDBS:=MTDBS+16;
	 2 : MTDBS:=MTDBS+32;
	 3 : MTDBS:=MTDBS+48;
	 4 : MTDBS:=MTDBS+64;
	 end;
         MTDBS:=MTDBS+ModDestSynth4.ItemIndex;
	 IF Not(MTDBSC=MTDBS) Then Errorcode:='SY4017';


	 BytesRead:=Filestream.Read(ModulationSpeed,1);
	 IF Not(ModulationSpeed= round(ModSpeedSynth4.Position)) Then Errorcode:='SY4018';
	 BytesRead:=Filestream.Read(ModulationDepth,1);
	 IF Not(ModulationDepth=round(ModDepthSynth4.Position)+64) Then Errorcode:='SY4019';

	 BytesRead:=Filestream.Read(MotionSeqS,1);
	 IF Not(MotionSeqS=MotionSeqSynth4.ItemIndex) Then Errorcode:='SY4020';

	 //Ende File
	 FileStream.Free;
end;


procedure TMainForm.CheckSynth5Parameter(Patternbase: Integer);
var
  BytesRead : Integer;
  FileStream : TFileStream;
  MTypeI :Integer;
  FSSSRAC : Integer;
  MTDBSC : Integer;

begin

  FileStream := tFileStream.Create (filename,fmShareDenyNone);
  FileStream.Position := patternbase+1362;
  // Synth5
  BytesRead:=Filestream.Read(Waveform,1);
  BytesRead:=Filestream.Read(Syntune,1);
  BytesRead:=Filestream.Read(Synthoscillator,1);
  IF Not(Waveform= WaveformSynth5.ItemIndex) Then Errorcode:='SY5001';
  IF Not(Synthoscillator=SynthoscSynth5.ItemIndex) Then Errorcode:='SY5002';
  IF Not(Syntune=round(TuneSynth5.position)+50) Then Errorcode:='SY5003';


  BytesRead:=Filestream.Read(OscEdit1,1);
  IF Not(OscEdit1 = round(OscEdit1Synth5.Position)) Then Errorcode:='SY5004';
  BytesRead:=Filestream.Read(OscEdit2,1);
  IF Not(OscEdit2 = round(OscEdit2Synth5.Position)) Then Errorcode:='SY5005';
  BytesRead:=Filestream.Read(PitchGlide ,1);
  IF Not(PitchGlide=round(GlideSynth5.Position)) Then Errorcode:='SY5006';

  BytesRead:=Filestream.Read(Filtertype ,1);
  IF Not(Filtertype=FilterTypeSynth5.ItemIndex) Then Errorcode:='SY5007';
  BytesRead:=Filestream.Read(Cutoff ,1);
  IF Not(Cutoff=round(CutoffSynth5.Position)) Then Errorcode:='SY5008';
  BytesRead:=Filestream.Read(Resonance  ,1);
  IF Not(Resonance=round(ResonanceSynth5.Position)) Then Errorcode:='SY5009';
  BytesRead:=Filestream.Read(EGInt,1);
  IF Not(EGInt=round(EGIntSynth5.Position)+64) Then Errorcode:='SY5010';
  BytesRead:=Filestream.Read(Drive,1);
  IF Not(Drive=round(DriveSynth5.Position)) Then Errorcode:='SY5011';
  BytesRead:=Filestream.Read(DLevel,1);
  IF Not(DLevel=round(LevelSynth5.Position)) Then Errorcode:='SY5012';
  BytesRead:=Filestream.Read(DPan,1);
  IF Not(DPan=round(PanSynth5.Position)+64) Then Errorcode:='SY5013';
  BytesRead:=Filestream.Read(DEGTime,1);
  IF Not(DEGTime=round(EGTimeSynth5.Position)) Then Errorcode:='SY5014';
  FSSSRAC:=0;
  BytesRead:=Filestream.Read(FSSSRAC,1);
  FSSSRA:=0;
  If (AmpEGSynth5.checked) then FSSSRA:=FSSSRA+16;
  If (RollSynth5.checked) then FSSSRA:=FSSSRA+8;
  If (FXSendSynth5.checked) then FSSSRA:=FSSSRA+4;
  IF Not(FSSSRA=FSSSRA+FXSelectSynth5.ItemIndex) Then Errorcode:='SY5015';


  MTDBSC:=0;
  MTDBS:=0;
  BytesRead:=Filestream.Read(MTDBS,1);
  IF Not(MTDBS=0) Then Errorcode:='SY5016';
  BytesRead:=Filestream.Read(MTDBSC,1);
  MTDBS:=0;
  If (BPMSyncSynth5.checked) then MTDBS:=MTDBS+128;
  MTypeI := ModTypeSynth5.ItemIndex;
  Case MTypeI of
  1 : MTDBS:=MTDBS+16;
  2 : MTDBS:=MTDBS+32;
  3 : MTDBS:=MTDBS+48;
  4 : MTDBS:=MTDBS+64;
  end;
  MTDBS:=MTDBS+ModDestSynth5.ItemIndex;
  IF Not(MTDBSC=MTDBS) Then Errorcode:='SY5017';


  BytesRead:=Filestream.Read(ModulationSpeed,1);
  IF Not(ModulationSpeed= round(ModSpeedSynth5.Position)) Then Errorcode:='SY5018';
  BytesRead:=Filestream.Read(ModulationDepth,1);
  IF Not(ModulationDepth=round(ModDepthSynth5.Position)+64) Then Errorcode:='SY5019';

  BytesRead:=Filestream.Read(MotionSeqS,1);
  IF Not(MotionSeqS=MotionSeqSynth5.ItemIndex) Then Errorcode:='SY5020';

  //Ende File
  FileStream.Free;
end;

procedure TMainForm.CheckPatternSettings(Patternbase: Integer);
var
  BytesRead : Integer;
  FileStream : TFileStream;
  FXbase: Integer;
  Tempo: Integer;
  TempoK: Integer;
  TempoR: Integer;
  Buffer : array [0..8] of byte;
  Beat: Integer;
  SwingSWStatusP1 : Integer;
  SwingSWStatusP2 : Integer;
  //RPBC  : Integer;
  MuteStatusP1C : Integer;
  MuteStatusP2C : Integer;
  SwingStatusP1C : Integer;
  SwingStatusP2C : Integer;
  OutputStatusP1C : Integer;
  OutputStatusP2C : Integer;
  SwingSWStatusP1C : Integer;
  SwingSWStatusP2C : Integer;
begin
  FXbase:=1674;
  Tempo:=0;
  TempoK:=0;
  TempoR:=0;
  Beat:=0;
  SwingSWStatusP1:=0;
  SwingSWStatusP2:=0;
  MuteStatusP1C:=0;
  MuteStatusP2C:=0;
  SwingStatusP1C:=0;
  SwingStatusP2C:=0;
  OutputStatusP1C:=0;
  OutputStatusP2C:=0;
  SwingSWStatusP1C:=0;
  SwingSWStatusP2C:=0;
  FileStream := tFileStream.Create (filename,fmShareDenyNone);
  FileStream.Position := patternbase;
  BytesRead:=Filestream.Read(Buffer[0],8);
  setlength(Patternname, 8);
  move(Buffer[0], Patternname[1],8);
  IF Not(PatternnameFld.text= Patternname) Then Errorcode:='PS01';


  BytesRead:=Filestream.Read(TempoR,1);
  BytesRead:=Filestream.Read(TempoK,1);
  Tempo := strtoint(TempoLED.Caption);

  IF Not(TempoR = round(Tempo/2)) Then Errorcode:='PS02';
  IF Not(TempoK = (Tempo-TempoR*2)*128) Then Errorcode:='PS03';

  BytesRead:=Filestream.Read(Swing,1);
  IF Not(Swing=StrToInt(SwingLED.Caption)-50) Then Errorcode:='PS04';

  //Rolltype, Patternlength, Beat
  BytesRead:=Filestream.Read(RPBC,1);
	  RPB :=0;
  Beat := TimeSignatureSel.Index;
  Case Beat of
       1 : RPB:=RPB+16;
       2 : RPB:=RPB+32;
       3 : RPB:=RPB+48;
  End;
  Rolltype := RolltypeSel.Index;
  Case Rolltype of
       1 : RPB:=RPB+64;
       2 : RPB:=RPB+128;
  End;
  Patternlength := PatternlengthSel.Index;
  RPB:=RPB+Patternlength;
  IF Not(RPBC=RPB) Then Errorcode:='PS05';


 //Effect Chain
  BytesRead:=Filestream.Read(FXC,1);
  IF Not(FXC = FXChainCB.ItemIndex) Then Errorcode:='PS06';

  //Laststep (Patternlength per Beat)
  BytesRead:=Filestream.Read(Laststep,1);
  IF Not(Laststep = StrToInt(LaststepFld.text) - 1) Then Errorcode:='PS07';

  // ArpScale
  BytesRead:=Filestream.Read(ArpScale,1);
  IF Not(ArpScale=ArpScaleCombobox.ItemIndex) Then Errorcode:='PS08';

  // Arp Center Note
  BytesRead:=Filestream.Read(ArpCenterNote,1);
  IF Not(ArpCenterNote=ArpCenterNoteCombobox.ItemIndex) Then Errorcode:='PS09';


  // Mute Status
  //MuteStatus1.checked
  BytesRead:=Filestream.Read(MuteStatusP1C,1);
  BytesRead:=Filestream.Read(MuteStatusP2C,1);
  MuteStatusP1 :=0;
  MuteStatusP1 := MuteStatusP1 + BoolToInt(MuteStatus1.checked)*1;
  MuteStatusP1 := MuteStatusP1 + BoolToInt(MuteStatus2.checked)*2;
  MuteStatusP1 := MuteStatusP1 + BoolToInt(MuteStatus3.checked)*4;
  MuteStatusP1 := MuteStatusP1 + BoolToInt(MuteStatus4.checked)*8;
  MuteStatusP1 := MuteStatusP1 + BoolToInt(MuteStatus5.checked)*16;
  MuteStatusP1 := MuteStatusP1 + BoolToInt(MuteStatus6.checked)*32;
  MuteStatusP1 := MuteStatusP1 + BoolToInt(MuteStatus7.checked)*64;
  MuteStatusP1 := MuteStatusP1 + BoolToInt(MuteStatus8.checked)*128;

  MuteStatusP2 :=0;
  MuteStatusP2 := MuteStatusP2 + BoolToInt(MuteStatus9.checked)*1;
  MuteStatusP2 := MuteStatusP2 + BoolToInt(MuteStatus10.checked)*2;
  MuteStatusP2 := MuteStatusP2 + BoolToInt(MuteStatus11.checked)*4;
  MuteStatusP2 := MuteStatusP2 + BoolToInt(MuteStatus12.checked)*8;
  MuteStatusP2 := MuteStatusP2 + BoolToInt(MuteStatus13.checked)*16;
  MuteStatusP2 := MuteStatusP2 + BoolToInt(MuteStatus14.checked)*32;

  IF Not(MuteStatusP1=MuteStatusP1C) Then Errorcode:='PS11';
  IF Not(MuteStatusP2=MuteStatusP2C) Then Errorcode:='PS12';

  // Swing Status
  BytesRead:=Filestream.Read(SwingStatusP1C,1);
  BytesRead:=Filestream.Read(SwingStatusP2C,1);
  SwingStatusP1 :=0;
  SwingStatusP1 := SwingStatusP1 + BoolToInt(SwingStatus1.checked)*1;
  SwingStatusP1 := SwingStatusP1 + BoolToInt(SwingStatus2.checked)*2;
  SwingStatusP1 := SwingStatusP1 + BoolToInt(SwingStatus3.checked)*4;
  SwingStatusP1 := SwingStatusP1 + BoolToInt(SwingStatus4.checked)*8;
  SwingStatusP1 := SwingStatusP1 + BoolToInt(SwingStatus5.checked)*16;
  SwingStatusP1 := SwingStatusP1 + BoolToInt(SwingStatus7.checked)*32;
  SwingStatusP1 := SwingStatusP1 + BoolToInt(SwingStatus7.checked)*64;
  SwingStatusP1 := SwingStatusP1 + BoolToInt(SwingStatus8.checked)*128;

  SwingStatusP2 :=0;
  SwingStatusP2 := SwingStatusP2 + BoolToInt(SwingStatus9.checked)*1;
  SwingStatusP2 := SwingStatusP2 + BoolToInt(SwingStatus10.checked)*2;
  SwingStatusP2 := SwingStatusP2 + BoolToInt(SwingStatus11.checked)*4;
  SwingStatusP2 := SwingStatusP2 + BoolToInt(SwingStatus12.checked)*8;
  SwingStatusP2 := SwingStatusP2 + BoolToInt(SwingStatus13.checked)*16;
  SwingStatusP2 := SwingStatusP2 + BoolToInt(SwingStatus14.checked)*32;

  IF Not(SwingStatusP1=SwingStatusP1C) Then Errorcode:='PS13';
  IF Not(SwingStatusP2=SwingStatusP2C) Then Errorcode:='PS14';

  // OutputStatus
  BytesRead:=Filestream.Read(OutputStatusP1C,1);
  BytesRead:=Filestream.Read(OutputStatusP2C,1);
  OutputStatusP1 :=0;
  OutputStatusP1 := OutputStatusP1 + ComboBox1.ItemIndex*1;
  OutputStatusP1 := OutputStatusP1 + ComboBox2.ItemIndex*2;
  OutputStatusP1 := OutputStatusP1 + ComboBox3.ItemIndex*4;
  OutputStatusP1 := OutputStatusP1 + ComboBox4.ItemIndex*8;
  OutputStatusP1 := OutputStatusP1 + ComboBox5.ItemIndex*16;
  OutputStatusP1 := OutputStatusP1 + ComboBox6.ItemIndex*32;
  OutputStatusP1 := OutputStatusP1 + ComboBox7.ItemIndex*64;
  OutputStatusP1 := OutputStatusP1 + ComboBox8.ItemIndex*128;

  OutputStatusP2 :=0;
  OutputStatusP2 := OutputStatusP2 + ComboBox9.ItemIndex*1;
  OutputStatusP2 := OutputStatusP2 + ComboBox10.ItemIndex*2;
  OutputStatusP2 := OutputStatusP2 + ComboBox11.ItemIndex*4;
  OutputStatusP2 := OutputStatusP2 + ComboBox12.ItemIndex*8;
  OutputStatusP2 := OutputStatusP2 + ComboBox13.ItemIndex*16;
  OutputStatusP2 := OutputStatusP2 + ComboBox14.ItemIndex*32;

  IF Not(OutputStatusP1=OutputStatusP1C) Then Errorcode:='PS15';
  IF Not(OutputStatusP2=OutputStatusP2C) Then Errorcode:='PS16';


  // SwingSW Status
  BytesRead:=Filestream.Read(SwingSWStatusP1C,1);
  BytesRead:=Filestream.Read(SwingSWStatusP2C,1);
  SwingSWStatusP1 :=0;
  SwingSWStatusP1 := SwingSWStatusP1 + BoolToInt(SwingSWStatus1.checked)*1;
  SwingSWStatusP1 := SwingSWStatusP1 + BoolToInt(SwingSWStatus2.checked)*2;
  SwingSWStatusP1 := SwingSWStatusP1 + BoolToInt(SwingSWStatus3.checked)*4;
  SwingSWStatusP1 := SwingSWStatusP1 + BoolToInt(SwingSWStatus4.checked)*8;
  SwingSWStatusP1 := SwingSWStatusP1 + BoolToInt(SwingSWStatus5.checked)*16;
  SwingSWStatusP1 := SwingSWStatusP1 + BoolToInt(SwingSWStatus7.checked)*32;
  SwingSWStatusP1 := SwingSWStatusP1 + BoolToInt(SwingSWStatus7.checked)*64;
  SwingSWStatusP1 := SwingSWStatusP1 + BoolToInt(SwingSWStatus8.checked)*128;
  SwingSWStatusP2 :=0;
  SwingSWStatusP2 := SwingSWStatusP2 + BoolToInt(SwingSWStatus9.checked)*1;
  SwingSWStatusP2 := SwingSWStatusP2 + BoolToInt(SwingSWStatus10.checked)*2;
  SwingSWStatusP2 := SwingSWStatusP2 + BoolToInt(SwingSWStatus11.checked)*4;
  SwingSWStatusP2 := SwingSWStatusP2 + BoolToInt(SwingSWStatus12.checked)*8;
  SwingSWStatusP2 := SwingSWStatusP2 + BoolToInt(SwingSWStatus13.checked)*16;
  SwingSWStatusP2 := SwingSWStatusP2 + BoolToInt(SwingSWStatus14.checked)*32;

  IF Not(SwingSWStatusP1=SwingSWStatusP1C) Then Errorcode:='PS17';
  IF Not(SwingSWStatusP2=SwingSWStatusP2C) Then Errorcode:='PS18';

  // The FX Section
  FileStream.Position := Patternbase+FXbase;
  BytesRead:=Filestream.Read(SelectedFX,1);
  IF Not(SelectedFX=FX1EffectSelectCB.ItemIndex) Then Errorcode:='PS19';
  BytesRead:=Filestream.Read(FXParameter1,1);
  IF Not(FXParameter1 =round(FX1Parameter1.position)) Then Errorcode:='PS20';
  BytesRead:=Filestream.Read(FXParameter2,1);
  IF Not(FXParameter2 =round(FX1Parameter2.position)) Then Errorcode:='PS21';
  BytesRead:=Filestream.Read(FX1MotionSeq,1);
  IF Not(FX1MotionSeq=0) Then Errorcode:='PS22'; //Wenn Motionseditor verfügbar ändern!

  BytesRead:=Filestream.Read(SelectedFX,1);
  IF Not(SelectedFX=FX2EffectSelectCB.ItemIndex) Then Errorcode:='PS23';
  BytesRead:=Filestream.Read(FXParameter1,1);
  IF Not(FXParameter1 =round(FX2Parameter1.position)) Then Errorcode:='PS24';
  BytesRead:=Filestream.Read(FXParameter2,1);
  IF Not(FXParameter2 =round(FX2Parameter2.position)) Then Errorcode:='PS25';
  BytesRead:=Filestream.Read(FX1MotionSeq,1);
  IF Not(FX1MotionSeq=0) Then Errorcode:='PS26'; //Wenn Motionseditor verfügbar ändern!

  BytesRead:=Filestream.Read(SelectedFX,1);
  IF Not(SelectedFX=FX3EffectSelectCB.ItemIndex) Then Errorcode:='PS27';
  BytesRead:=Filestream.Read(FXParameter1,1);
  IF Not(FXParameter1 =round(FX3Parameter1.position)) Then Errorcode:='PS28';
  BytesRead:=Filestream.Read(FXParameter2,1);
  IF Not(FXParameter2 =round(FX3Parameter2.position)) Then Errorcode:='PS29';
  BytesRead:=Filestream.Read(FX1MotionSeq,1);
  IF Not(FX1MotionSeq=0) Then Errorcode:='PS30'; //Wenn Motionseditor verfügbar ändern!

  //Ende File
  FileStream.Free;
end;





end.
