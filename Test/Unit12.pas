unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, IniFiles;

type
  TForm12 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    Label1: TLabel;
    RadioGroup1: TRadioGroup;
    Button1: TButton;
    Label2: TLabel;
    Button2: TButton;
    RadioGroup2: TRadioGroup;
    Label3: TLabel;
    Button3: TButton;
    RadioGroup3: TRadioGroup;
    Label4: TLabel;
    Button4: TButton;
    RadioGroup4: TRadioGroup;
    Label5: TLabel;
    Button5: TButton;
    RadioGroup5: TRadioGroup;
    Label6: TLabel;
    Button6: TButton;
    RadioGroup6: TRadioGroup;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button6Click(Sender: TObject);
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
  Form12: TForm12;
      Ini: TIniFile;
  B: Integer;
implementation

uses Unit4, Unit1, Unit7, Unit6;

{$R *.dfm}

procedure TForm12.Button1Click(Sender: TObject);
begin
if RadioGroup1.ItemIndex = 1 then Inc(FAnswerCount);
TabSheet2.Show;
end;

procedure TForm12.Button2Click(Sender: TObject);
begin
if RadioGroup2.ItemIndex = 3 then Inc(FAnswerCount);
TabSheet3.Show;
end;

procedure TForm12.Button3Click(Sender: TObject);
begin
if RadioGroup3.ItemIndex = 3 then Inc(FAnswerCount);
TabSheet4.Show;
end;

procedure TForm12.Button4Click(Sender: TObject);
begin
if RadioGroup4.ItemIndex = 0 then Inc(FAnswerCount);
TabSheet5.Show;
end;

procedure TForm12.Button5Click(Sender: TObject);
begin
if RadioGroup5.ItemIndex = 1 then Inc(FAnswerCount);
TabSheet6.Show;
end;

procedure TForm12.Button6Click(Sender: TObject);
begin
  Ini := TIniFile.Create(ExtractFilePath(ParamStr(0))+'lala.ini');
  B := StrToInt(Edit1.Text);
  B := FAnswerCount;
  Ini.WriteInteger('����4', '���������� ������������', B);
begin
if RadioGroup6.ItemIndex = 0 then Inc(FAnswerCount);
Case FAnswerCount of
    0: ShowMessage('�� �������� 2');
    1: ShowMessage('�� �������� 2');
    2: ShowMessage('�� �������� 2');
    3: ShowMessage('�� �������� 3');
    4: ShowMessage('�� �������� 4');
  else
    ShowMessage('�� �������� 5');
  end;
  FTestOK := FAnswerCount >=3; // ��� ���������� ������� 3 � ������ ���� ��������� ���������
end;
end;
procedure TForm12.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if FTestOK then Form7.Show  // ��������� ��������� ������
             else Form6.Show; // ������������ � ������
  Action := caHide;           // �������� ����� �����
end;

procedure TForm12.FormActivate(Sender: TObject);
begin
  FAnswerCount := 0; // ��� ������ ����� ���������� ������� �������
  TabSheet1.Show;    // ��������������� ������ �������� ��� ���������� �����
  RadioGroup1.ItemIndex := -1;  // ���������� ���������� ������
  RadioGroup2.ItemIndex := -1;
  RadioGroup3.ItemIndex := -1;
  RadioGroup4.ItemIndex := -1;
  RadioGroup5.ItemIndex := -1;
  RadioGroup6.ItemIndex := -1;
end;
procedure TForm12.FormCreate(Sender: TObject);
begin
  Ini := TIniFile.Create(ExtractFilePath(ParamStr(0))+'lala.ini');
  Edit1.Text := IntToStr(Ini.ReadInteger('����4', 'Rez', 0));
end;

procedure TForm12.FormDestroy(Sender: TObject);
begin
  Ini := TIniFile.Create(ExtractFilePath(ParamStr(0))+'lala.ini');
  Ini.WriteInteger('����4', 'Rez', B);
end;
end.
