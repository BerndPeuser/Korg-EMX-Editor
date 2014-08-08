unit MainformEMX;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, TAGraph, uPSComponent, Forms, Controls, Graphics,
  Dialogs, ExtCtrls, Menus, ComCtrls, StdCtrls, Buttons, Grids, ueled, uEKnob,
  uERotImage, uESelector, types;

type

  { TMainForm }

  TMainForm = class(TForm)
    Bank: TComboBox;
    RndSound: TBitBtn;
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
    D1ModulationBox9: TGroupBox;
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
    StaticText10: TStaticText;
    WaveformSynthC1: TStaticText;
    uELED19: TuELED;
    uELED20: TuELED;
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
    FX1EffectSelectCB1: TComboBox;
    FX1EffectSelectCB2: TComboBox;
    FX1MotionSeqB1: TToggleBox;
    FX1MotionSeqB2: TToggleBox;
    FX1MotionSeqLED1: TuELED;
    FX1MotionSeqLED2: TuELED;
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
    FX1MotionSeqB: TToggleBox;
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
    D1EQTime1: TuEKnob;
    D1EQTime2: TuEKnob;
    D1EQTime3: TuEKnob;
    D1EQTime4: TuEKnob;
    D1EQTime5: TuEKnob;
    D1EQTime6: TuEKnob;
    D1EQTime7: TuEKnob;
    D1EQTime8: TuEKnob;
    D1EQTimeV1: TEdit;
    D1EQTimeV2: TEdit;
    D1EQTimeV3: TEdit;
    D1EQTimeV4: TEdit;
    D1EQTimeV5: TEdit;
    D1EQTimeV6: TEdit;
    D1EQTimeV7: TEdit;
    D1EQTimeV8: TEdit;
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
    FX1MotionSeqLED: TuELED;
    SALevel: TuEKnob;
    D1ModDepth1: TuEKnob;
    D1Level2: TuEKnob;
    D1ModDepth2: TuEKnob;
    D1Level3: TuEKnob;
    D1ModDepth3: TuEKnob;
    D1Level4: TuEKnob;
    D1ModDepth4: TuEKnob;
    D1LevelV1: TEdit;
    SALevelK1: TuEKnob;
    SALevelK2: TuEKnob;
    SALevelK3: TuEKnob;
    SALevelK4: TuEKnob;
    SALevelK5: TuEKnob;
    SALevelK6: TuEKnob;
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
    D1S385: TToggleBox;
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
    D1EQTimeV: TEdit;
    ProgressBar1: TProgressBar;
    SALevelV1: TEdit;
    SALevelV2: TEdit;
    SALevelV3: TEdit;
    SALevelV4: TEdit;
    SALevelV5: TEdit;
    SALevelV6: TEdit;
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
    StaticText11: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    StatusBar1: TStatusBar;
    Synth1: TTabSheet;
    Synth2: TTabSheet;
    Synth3: TTabSheet;
    Synth4: TTabSheet;
    Synth5: TTabSheet;
    SAccent: TTabSheet;
    FXSetup: TTabSheet;
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
    D1EQTime: TuEKnob;
    uELED1: TuELED;
    uELED10: TuELED;
    uELED11: TuELED;
    uELED12: TuELED;
    uELED13: TuELED;
    uELED14: TuELED;
    uELED15: TuELED;
    uELED16: TuELED;
    uELED17: TuELED;
    uELED18: TuELED;
    DAccentTrigHoldLED: TuELED;
    uELED2: TuELED;
    uELED3: TuELED;
    uELED4: TuELED;
    uELED5: TuELED;
    uELED6: TuELED;
    uELED7: TuELED;
    uELED8: TuELED;
    uELED9: TuELED;
    uESelector2: TuESelector;
    procedure CutoffSynth1Change(Sender: TObject);
    procedure DriveSynth1Change(Sender: TObject);
    procedure EGIntSynth1Change(Sender: TObject);
    procedure EGTimeSynth1Change(Sender: TObject);
    procedure GlideSynth1Change(Sender: TObject);
    procedure LevelSynth1Change(Sender: TObject);
    procedure ModDepthSynth1Change(Sender: TObject);
    procedure ModSpeedSynth1Change(Sender: TObject);
    procedure OscEdit1Synth1Change(Sender: TObject);
    procedure OscEdit2Synth1Change(Sender: TObject);
    procedure PanSynth1Change(Sender: TObject);
    procedure ResonanceSynth1Change(Sender: TObject);
    procedure RndSoundClick(Sender: TObject);
    procedure SynthoscSynth1Change(Sender: TObject);
    procedure TuneSynth1Change(Sender: TObject);
    procedure D1EQTime4Change(Sender: TObject);
    procedure D1EQTime5Change(Sender: TObject);
    procedure D1EQTime6Change(Sender: TObject);
    procedure D1EQTime7Change(Sender: TObject);
    procedure D1EQTime8Change(Sender: TObject);
    procedure DALevelChange(Sender: TObject);
    procedure D1Level5Change(Sender: TObject);
    procedure D1Level6Change(Sender: TObject);
    procedure D1Level8Change(Sender: TObject);
    procedure D1Level7Change(Sender: TObject);
    procedure D1ModDepth3Change(Sender: TObject);
    procedure D1EQTime1Change(Sender: TObject);
    procedure D1EQTime2Change(Sender: TObject);
    procedure D1EQTime3Change(Sender: TObject);
    procedure D1EQTimeChange(Sender: TObject);
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
    procedure FileSelectionChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure GlobalSettingsBClick(Sender: TObject);
    procedure LoadFileBClick(Sender: TObject);
    procedure MenuItem15Click(Sender: TObject);
    procedure MenuItem21Click(Sender: TObject);
    procedure PatternChange(Sender: TObject);
    procedure SALevelChange(Sender: TObject);
    procedure SaveFileBClick(Sender: TObject);
    procedure Led_ArpChange(Sender: TObject);
    procedure WaveformSynth1Change(Sender: TObject);
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
     DLevel : Integer;
     DPan : Integer;
     DEQTime : Integer;
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

function Notestring (num : integer) : String;
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
   Songi: Integer;
   Patterni: Integer;
   Samplesi : Integer;
   Synthi: Integer;
   Tempo: Integer;
   TempoK: Integer;
   TempoR: Real;
   NodeCounter : Integer;
   PatternCounter: Integer;
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
   SongNode: TTreeNode;
   Getbit: Boolean;
   ProgressPos : Integer;
   Pttno : String;

   Procedure DeleteNode(Node:TTreeNode);
   begin
    while Node.HasChildren do DeleteNode(node.GetLastChild);
    TreeView1.Items.Delete(Node) ;
    end;


begin
   Patternbase := 512;

   if OpenDialog1.Execute then
        begin
             ProgressBar1.visible := True;
             ProgressBar1.Style:=pbstMarquee;
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
                     //Tempo
                     BytesRead:=Filestream.Read(Tempo,1);
                     BytesRead:=Filestream.Read(TempoK,1);
                     TempoR:= Tempo*2+TempoK/128; //No idea if i calculate it right. :)
                     //TempoK must have Values between 0.1 and 1.9
                     //
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
                      InstNode := Treeview1.Items.AddChild(NameNode, 'Drum 1');
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
                      BytesRead:=Filestream.Read(DEQTime,1);
                      Treeview1.Items.AddChild(InstNode, 'EQ Time ' + inttostr(DEQTime));

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
                      BytesRead:=Filestream.Read(DEQTime,1);
                      Treeview1.Items.AddChild(InstNode, 'EQ Time ' + inttostr(DEQTime));

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
                      BytesRead:=Filestream.Read(DEQTime,1);
                      Treeview1.Items.AddChild(InstNode, 'EQ Time ' + inttostr(DEQTime));

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
                      BytesRead:=Filestream.Read(DEQTime,1);
                      Treeview1.Items.AddChild(InstNode, 'EQ Time ' + inttostr(DEQTime));

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
                      BytesRead:=Filestream.Read(DEQTime,1);
                      Treeview1.Items.AddChild(InstNode, 'EQ Time ' + inttostr(DEQTime));

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
                      BytesRead:=Filestream.Read(DEQTime,1);
                      Treeview1.Items.AddChild(InstNode, 'EQ Time ' + inttostr(DEQTime));

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
                      BytesRead:=Filestream.Read(DEQTime,1);
                      Treeview1.Items.AddChild(InstNode, 'EQ Time ' + inttostr(DEQTime));

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
                      BytesRead:=Filestream.Read(DEQTime,1);
                      Treeview1.Items.AddChild(InstNode, 'EQ Time ' + inttostr(DEQTime));

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
                      BytesRead:=Filestream.Read(DEQTime,1);
                      Treeview1.Items.AddChild(InstNode, 'EQ Time ' + inttostr(DEQTime));

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
                      BytesRead:=Filestream.Read(DLevel,1);
                      Treeview1.Items.AddChild(InstNode, 'Level ' + inttostr(DLevel));
                      BytesRead:=Filestream.Read(DPan,1);
                      Treeview1.Items.AddChild(InstNode, 'Pan ' + inttostr(DPan));
                      BytesRead:=Filestream.Read(DEQTime,1);
                      Treeview1.Items.AddChild(InstNode, 'EQ Time ' + inttostr(DEQTime));
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
                      ParameterNode := Treeview1.Items.AddChild(InstNode, 'Synth 1 Notes&Gates');
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
                                        If Bit7 and not Bit6 then Gatetime := ((BoolToInt(Bit0)*1+BoolToInt(Bit1)*2+BoolToInt(Bit2)*4+BoolToInt(Bit3)*8+BoolToInt(Bit4)*16+BoolToInt(Bit5)*32)/2)+32+1/2;
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
                      BytesRead:=Filestream.Read(DLevel,1);
                      Treeview1.Items.AddChild(InstNode, 'Level ' + inttostr(DLevel));
                      BytesRead:=Filestream.Read(DPan,1);
                      Treeview1.Items.AddChild(InstNode, 'Pan ' + inttostr(DPan));
                      BytesRead:=Filestream.Read(DEQTime,1);
                      Treeview1.Items.AddChild(InstNode, 'EQ Time ' + inttostr(DEQTime));
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
                      ParameterNode := Treeview1.Items.AddChild(InstNode, 'Synth 2 Notes&Gates');
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
                                        If Bit7 and not Bit6 then Gatetime := ((BoolToInt(Bit0)*1+BoolToInt(Bit1)*2+BoolToInt(Bit2)*4+BoolToInt(Bit3)*8+BoolToInt(Bit4)*16+BoolToInt(Bit5)*32)/2)+32+1/2;
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
                      BytesRead:=Filestream.Read(DLevel,1);
                      Treeview1.Items.AddChild(InstNode, 'Level ' + inttostr(DLevel));
                      BytesRead:=Filestream.Read(DPan,1);
                      Treeview1.Items.AddChild(InstNode, 'Pan ' + inttostr(DPan));
                      BytesRead:=Filestream.Read(DEQTime,1);
                      Treeview1.Items.AddChild(InstNode, 'EQ Time ' + inttostr(DEQTime));
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
                      ParameterNode := Treeview1.Items.AddChild(InstNode, 'Synth 3 Notes&Gates');
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
                                        If Bit7 and not Bit6 then Gatetime := ((BoolToInt(Bit0)*1+BoolToInt(Bit1)*2+BoolToInt(Bit2)*4+BoolToInt(Bit3)*8+BoolToInt(Bit4)*16+BoolToInt(Bit5)*32)/2)+32+1/2;
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
                      BytesRead:=Filestream.Read(DLevel,1);
                      Treeview1.Items.AddChild(InstNode, 'Level ' + inttostr(DLevel));
                      BytesRead:=Filestream.Read(DPan,1);
                      Treeview1.Items.AddChild(InstNode, 'Pan ' + inttostr(DPan));
                      BytesRead:=Filestream.Read(DEQTime,1);
                      Treeview1.Items.AddChild(InstNode, 'EQ Time ' + inttostr(DEQTime));
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
                      ParameterNode := Treeview1.Items.AddChild(InstNode, 'Synth 4 Notes&Gates');
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
                                        If Bit7 and not Bit6 then Gatetime := ((BoolToInt(Bit0)*1+BoolToInt(Bit1)*2+BoolToInt(Bit2)*4+BoolToInt(Bit3)*8+BoolToInt(Bit4)*16+BoolToInt(Bit5)*32)/2)+32+1/2;
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
                      BytesRead:=Filestream.Read(DLevel,1);
                      Treeview1.Items.AddChild(InstNode, 'Level ' + inttostr(DLevel));
                      BytesRead:=Filestream.Read(DPan,1);
                      Treeview1.Items.AddChild(InstNode, 'Pan ' + inttostr(DPan));
                      BytesRead:=Filestream.Read(DEQTime,1);
                      Treeview1.Items.AddChild(InstNode, 'EQ Time ' + inttostr(DEQTime));
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
                      ParameterNode := Treeview1.Items.AddChild(InstNode, 'Synth 5 Notes&Gates');
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
                                        If Bit7 and not Bit6 then Gatetime := ((BoolToInt(Bit0)*1+BoolToInt(Bit1)*2+BoolToInt(Bit2)*4+BoolToInt(Bit3)*8+BoolToInt(Bit4)*16+BoolToInt(Bit5)*32)/2)+32+1/2;
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
                                //s := inttostr(Lo(OperationNo)) + inttostr(Hi(OperationNo));
                                s := HEXFN(Lo(OperationNo)) + HEXFN(Hi(OperationNo));

                                //s := HEXFN(OperationNo);
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
end;

procedure TMainForm.MenuItem15Click(Sender: TObject);
begin

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
        D1Sample.ItemIndex:=1;
        D1Sample1.AddItem(Samplename(i),Nil);
        D1Sample1.ItemIndex:=1;
        D1Sample2.AddItem(Samplename(i),Nil);
        D1Sample2.ItemIndex:=1;
        D1Sample3.AddItem(Samplename(i),Nil);
        D1Sample3.ItemIndex:=1;
        D1Sample4.AddItem(Samplename(i),Nil);
        D1Sample4.ItemIndex:=1;
        D1Sample5.AddItem(Samplename(i),Nil);
        D1Sample5.ItemIndex:=1;
        D1Sample6.AddItem(Samplename(i),Nil);
        D1Sample6.ItemIndex:=1;
        D1Sample7.AddItem(Samplename(i),Nil);
        D1Sample7.ItemIndex:=1;
        D1Sample8.AddItem(Samplename(i),Nil);
        D1Sample8.ItemIndex:=1;
end;


end;

procedure TMainForm.FileSelectionChange(Sender: TObject);
begin

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

procedure TMainForm.D1EQTimeChange(Sender: TObject);
begin
   D1EQTimeV.text := FloatToStr(round(D1EQTime.Position));
end;

procedure TMainForm.D1EQTime1Change(Sender: TObject);
begin
   D1EQTimeV1.text := FloatToStr(round(D1EQTime1.Position));
end;

procedure TMainForm.D1ModDepth3Change(Sender: TObject);
begin
   D1ModDepthV3.text := FloatToStr(round(D1ModDepth3.Position));
end;

procedure TMainForm.D1EQTime4Change(Sender: TObject);
begin
  D1EQTimeV4.text := FloatToStr(round(D1EQTime4.Position));
end;

procedure TMainForm.LevelSynth1Change(Sender: TObject);
begin
 LevelVSynth1.text := FloatToStr(round(LevelSynth1.Position));
end;

procedure TMainForm.ModDepthSynth1Change(Sender: TObject);
begin
  ModDepthVSynth1.text := FloatToStr(round(ModDepthSynth1.Position));
end;

procedure TMainForm.ModSpeedSynth1Change(Sender: TObject);
begin
  ModSpeedVSynth1.text := FloatToStr(round(ModSpeedSynth1.Position));
end;

procedure TMainForm.OscEdit1Synth1Change(Sender: TObject);
begin
  OscEdit1VSynth1.text := FloatToStr(round(OscEdit1Synth1.Position));
end;

procedure TMainForm.OscEdit2Synth1Change(Sender: TObject);
begin
  OscEdit2VSynth1.text := FloatToStr(round(OscEdit2Synth1.Position));
end;

procedure TMainForm.EGTimeSynth1Change(Sender: TObject);
begin
  EGTimeVSynth1.text := FloatToStr(round(EGTimeSynth1.Position));
end;

procedure TMainForm.CutoffSynth1Change(Sender: TObject);
begin
  CutoffVSynth1.text := FloatToStr(round(CutoffSynth1.Position));
end;

procedure TMainForm.DriveSynth1Change(Sender: TObject);
begin
  DriveVSynth1.text := FloatToStr(round(DriveSynth1.Position));
end;

procedure TMainForm.EGIntSynth1Change(Sender: TObject);
begin
  EGIntVSynth1.text := FloatToStr(round(EGIntSynth1.Position));
end;

procedure TMainForm.GlideSynth1Change(Sender: TObject);
begin
  GlideVSynth1.text := FloatToStr(round(GlideSynth1.Position));
end;

procedure TMainForm.PanSynth1Change(Sender: TObject);
begin
  PanVSynth1.text := FloatToStr(round(PanSynth1.Position));
end;

procedure TMainForm.ResonanceSynth1Change(Sender: TObject);
begin
  ResonanceVSynth1.text := FloatToStr(round(ResonanceSynth1.Position));
end;

procedure TMainForm.RndSoundClick(Sender: TObject);
begin
  SynthoscSynth1.ItemIndex:=Random(16);
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
 		Waveform := Waveform + 1;
 		WaveformSynth1.AddItem('PCM '+ inttostr(Waveform),NIL);
              WaveformSynthC1.Caption:='1';  //Wenn die Funktion PCMFunktion da ist 76
 end;
  WaveformSynth1.ItemIndex:=0;
  EGTimeSynth1.Position:=Random(127);
  TuneSynth1.Position:=Random(127);
  OscEdit1Synth1.Position:=Random(127);
  OscEdit2Synth1.Position:=Random(127);
  GlideSynth1.Position:=Random(127);
  FilterTypeSynth1.ItemIndex:=Random(4);
  CutoffSynth1.Position:=Random(127);
  ResonanceSynth1.Position:=Random(127);
  DriveSynth1.Position:=Random(127);
  ModSpeedSynth1.Position:=Random(127);
  ModDepthSynth1.Position:=Random(127);
  ModTypeSynth1.ItemIndex:=Random(5);
  ModDestSynth1.ItemIndex:=Random(6);
  WaveformSynth1.ItemIndex:=Random(StrToInt(WaveformSynthC1.Caption));

end;

procedure TMainForm.SynthoscSynth1Change(Sender: TObject);

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
 		Waveform := Waveform + 1;
 		WaveformSynth1.AddItem('PCM '+ inttostr(Waveform),NIL);
              WaveformSynthC1.Caption:='1';  //Wenn die Funktion PCMFunktion da ist 76
 end;
 WaveformSynth1.ItemIndex:=0;

end;

procedure TMainForm.TuneSynth1Change(Sender: TObject);
begin
  TuneVSynth1.text := FloatToStr(round(TuneSynth1.Position));
end;

procedure TMainForm.D1EQTime5Change(Sender: TObject);
begin
  D1EQTimeV5.text := FloatToStr(round(D1EQTime5.Position));
end;

procedure TMainForm.D1EQTime6Change(Sender: TObject);
begin
  D1EQTimeV6.text := FloatToStr(round(D1EQTime6.Position));
end;

procedure TMainForm.D1EQTime7Change(Sender: TObject);
begin
  D1EQTimeV7.text := FloatToStr(round(D1EQTime7.Position));
end;

procedure TMainForm.D1EQTime8Change(Sender: TObject);
begin
  D1EQTimeV8.text := FloatToStr(round(D1EQTime8.Position));
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

procedure TMainForm.D1EQTime2Change(Sender: TObject);
begin
   D1EQTimeV2.text := FloatToStr(round(D1EQTime2.Position));
end;

procedure TMainForm.D1EQTime3Change(Sender: TObject);
begin
  D1EQTimeV3.text := FloatToStr(round(D1EQTime3.Position));
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

procedure TMainForm.PatternChange(Sender: TObject);
begin

end;

procedure TMainForm.SALevelChange(Sender: TObject);
begin
  SALevelV.text :=  FloatToStr(round(SALevel.Position));
end;



procedure TMainForm.SaveFileBClick(Sender: TObject);
begin
   ShowMessage('Last time i used Pascal was in school 1998 only on paper. I did this in 6 days. ;)');
end;

procedure TMainForm.Led_ArpChange(Sender: TObject);
begin

end;

procedure TMainForm.WaveformSynth1Change(Sender: TObject);
begin

end;







end.
