unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, IniFiles;

type
  TForm10 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    RadioGroup3: TRadioGroup;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    TabSheet4: TTabSheet;
    RadioGroup4: TRadioGroup;
    TabSheet5: TTabSheet;
    RadioGroup5: TRadioGroup;
    Button4: TButton;
    Button5: TButton;
    TabSheet6: TTabSheet;
    RadioGroup6: TRadioGroup;
    Label2: TLabel;
    Label3: TLabel;
    Button6: TButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FTestOK      : Boolean;
    FAnswerCount : Integer;
  public
    { Public declarations }
  end;

var
  Form10: TForm10;
   Ini: TIniFile;
  B: Integer;

implementation

uses Unit1, Unit4;

{$R *.dfm}

procedure TForm10.Button1Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex = 2 then Inc(FAnswerCount); // ?????????? ????? - ?????? ???????
  TabSheet2.Show;
end;

procedure TForm10.Button2Click(Sender: TObject);
begin
  if RadioGroup2.ItemIndex = 1 then Inc(FAnswerCount); // ?????????? ????? - ?????? ???????
  TabSheet3.Show;
end;

procedure TForm10.Button3Click(Sender: TObject);
begin
  if RadioGroup3.ItemIndex = 0 then Inc(FAnswerCount); // ?????????? ????? - ?????? ???????
  TabSheet4.Show;
end;

procedure TForm10.Button4Click(Sender: TObject);
begin
if RadioGroup4.ItemIndex = 0 then Inc(FAnswerCount);
TabSheet5.Show;
end;

procedure TForm10.Button5Click(Sender: TObject);
begin
 if RadioGroup5.ItemIndex = 1 then Inc(FAnswerCount);
 TabSheet6.Show;
end;

procedure TForm10.Button6Click(Sender: TObject);
begin
  Ini := TIniFile.Create(ExtractFilePath(ParamStr(0))+'lala.ini');
  B := StrToInt(Edit1.Text);
  B := FAnswerCount;
  Ini.WriteInteger('?????1', '?????????? ????????????', B);

begin
 if RadioGroup6.ItemIndex = 2 then Inc(FAnswerCount);
 Case FAnswerCount of
    0: ShowMessage('?? ???????? 2');
    1: ShowMessage('?? ???????? 2');
    2: ShowMessage('?? ???????? 2');
    3: ShowMessage('?? ???????? 3');
    4: ShowMessage('?? ???????? 4');
  else
    ShowMessage('?? ???????? 5');
  end;
  FTestOK := FAnswerCount >=3; // ??? ?????????? ??????? 3 ? ?????? ???? ????????? ?????????
end;
end;
procedure TForm10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if FTestOK then Form4.Show  // ????????? ????????? ??????
             else Form1.Show; // ???????????? ? ??????
  Action := caHide;           // ???????? ????? ?????
end;

procedure TForm10.FormActivate(Sender: TObject);
begin
  FAnswerCount := 0; // ??? ?????? ????? ?????????? ??????? ???????
  TabSheet1.Show;    // ??????????????? ?????? ???????? ??? ?????????? ?????
  RadioGroup1.ItemIndex := -1;  // ?????????? ?????????? ??????
  RadioGroup2.ItemIndex := -1;
  RadioGroup3.ItemIndex := -1;
  RadioGroup4.ItemIndex := -1;
  RadioGroup5.ItemIndex := -1;
  RadioGroup6.ItemIndex := -1;
end;
 procedure TForm10.FormCreate(Sender: TObject);
begin
  Ini := TIniFile.Create(ExtractFilePath(ParamStr(0))+'lala.ini');
  Edit1.Text := IntToStr(Ini.ReadInteger('?????1', 'Rez', 0));
end;

procedure TForm10.FormDestroy(Sender: TObject);
begin
  Ini := TIniFile.Create(ExtractFilePath(ParamStr(0))+'lala.ini');
  Ini.WriteInteger('?????1', 'Rez', B);
end;
end.
