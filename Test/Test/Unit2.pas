unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Menus, ComCtrls;

type
  TForm2 = class(TForm)
    PageControl1: TPageControl;
    TabSheet0: TTabSheet;
    Panel1: TPanel;
    MainMenu1: TMainMenu;
    N11: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure PageControl1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure WMDel(var Msg: TMessage); message WM_USER + 1;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  NumberOfVars: Integer;

implementation

uses Types;

{$R *.dfm}

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TForm2.FormDestroy(Sender: TObject);
begin
  Form2 := nil;
end;

procedure TForm2.Button6Click(Sender: TObject);
var
  Panel: TPanel;
  s: String;
begin
  inc(NumberOfVars);
  s := IntToStr(NumberOfVars);

  Panel := TPanel.Create(PageControl1.ActivePage.FindComponent('ScrollBox1'));
  with Panel do
  begin
    Tag := NumberOfVars;
    Height := 121;
    Name := 'Panel' + s;
    Caption := '';
    Top := TScrollBox(Panel.Owner).VertScrollBar.Range;
    Align := alTop;
    Parent := TWinControl(Panel.Owner);
  end;

  with TEdit.Create(Panel) do
  begin
    Tag := NumberOfVars;
    Top := 24;
    Left := 8;
    Width := Panel.ClientWidth - 16;
    Name := 'Edit' + s;
    Text := '';
    Anchors := Anchors + [akRight];
    Parent := Panel;
  end;

  with TEdit.Create(Panel) do
  begin
    Tag := NumberOfVars;
    Top := 56;
    Left := 8;
    Width := 370;
    Name := 'Edit0' + s;
    Text := '';
    Parent := Panel;
  end;

  with TButton.Create(Panel) do
  begin
    Tag := NumberOfVars;
    Top := 54;
    Left := 385;
    Name := 'Button' + s;
    Caption := 'Найти';
    OnClick := Button1Click;
    Parent := Panel;
  end;

  with TButton.Create(Panel) do
  begin
//    Tag := NumberOfVars;
    Top := 3;
    Left := Panel.Width - 17 - 8;
    Width := 17;
    Height := 17;
    Anchors := [akTop, akRight];
    Name := 'ButtonX' + s;
    Caption := 'X';
    OnClick := Button10Click;
    Parent := Panel;
  end;

  with TCheckBox.Create(Panel) do
  begin
    Tag := NumberOfVars;
    Top := 96;
    Left := 8;
    Anchors := [akLeft, akBottom];
    Name := 'CheckBox' + s;
    Caption := 'Правильный';
    Parent := Panel;
  end;

  with TLabel.Create(Panel) do
  begin
    Tag := NumberOfVars;
    Top := 8;
    Left := 8;
    Name := 'Label' + s;
    Caption := 'Вариант №' + s;
    Parent := Panel;
  end;

  TScrollBox(Panel.Owner).VertScrollBar.Position := TScrollBox(Panel.Owner).VertScrollBar.Range;
end;

procedure TForm2.Button1Click(Sender: TObject);
var
  Image: TImage;
  Panel: TPanel;
begin
  if not OpenDialog1.Execute then Exit;
  Panel := TPanel(TControl(Sender).Parent);
  Image := TImage(Panel.FindComponent('Image' + IntToStr(Panel.Tag)));

  if not Assigned(Image) then
  begin
    Image := TImage.Create(Panel);
    with Image do
    begin
      if Panel.Parent is TTabSheet then
      begin
        TLabel(Panel.FindComponent('Label2')).Anchors := [akLeft, akBottom];
        TLabel(Panel.FindComponent('Button111')).Anchors := [akLeft, akBottom];
        Top := 152;
      end else
        Top := 88; //110
      Left := 8;
      Width := 300;
      Height := 200;
//      Center := True;
      Stretch := True;
      Proportional := True;
      Name := 'Image' + IntToStr(Panel.Tag);
      Parent := Panel;
    end;
    Panel.Height := Panel.Height + 200;
  end;

  try
    Image.Picture.LoadFromFile(OpenDialog1.FileName);
  except
    if Image.Picture.Bitmap.Empty then
    begin
      Panel.Height := Panel.Height - 200;
      Image.Free;
    end;
    ShowMessage('Error!!!');
    Exit;
  end;
  
  TEdit(Panel.FindComponent('Edit0' + IntToStr(Panel.Tag))).Text := ExtractFileName(OpenDialog1.FileName);
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  Button2Click(nil);
end;

procedure TForm2.Button10Click(Sender: TObject);
begin
  PostMessage(Handle, WM_USER + 1, WPARAM(TControl(Sender).Owner{Parent}), LPARAM(0));
end;

procedure TForm2.WMDel(var Msg: TMessage);
begin
  TControl(Msg.wParam).Free;
  if (PageControl1.ActivePageIndex = PageControl1.PageCount - 1) and
     (PageControl1.PageCount > 1) then
    PageControl1.ActivePageIndex := PageControl1.ActivePageIndex - 1;
end;

procedure TForm2.PageControl1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if PageControl1.ActivePageIndex = PageControl1.PageCount - 1 then
    Button2Click(Sender);
end;

procedure TForm2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RIGHT) and (PageControl1.ActivePageIndex = PageControl1.PageCount - 2) then
    Key := 0;
end;

procedure TForm2.Button2Click(Sender: TObject);
var
  Panel: TPanel;
  ScrollBox: TScrollBox;
  TabSheet: TTabSheet;
begin
  TabSheet := TTabSheet.Create(PageControl1);
  with TabSheet do
  begin
    PageControl := PageControl1;
    Caption := 'Вопрос №' + IntToStr(PageControl1.PageCount - 1);
    Name := 'Page' + IntToStr(PageControl1.PageCount - 1);
    PageIndex := PageControl1.PageCount - 2;
  end;
  PageControl1.ActivePage := TabSheet;

  Panel := TPanel.Create(TabSheet);
  with Panel do
  begin
//    Tag := NumberOfVars;
    Height := 185;
    Name := 'Panel' + '1';
    BevelOuter := bvNone;
    Caption := '';
//    Top := TScrollBox(Panel.Owner).VertScrollBar.Range;
    Align := alTop;
    Parent := TWinControl(Panel.Owner);
  end;

  with TLabel.Create(Panel) do
  begin
//    Tag := NumberOfVars;
    Top := 8;
    Left := 8;
//    Name := 'Label' + '1';
    Caption := 'Время на ответ:             сек.  (0 - время не ограничено)';
    Parent := Panel;
  end;

  with TEdit.Create(Panel) do
  begin
//    Tag := NumberOfVars;
    Top := 6;
    Left := 92;
    Width := 33;
    MaxLength := 3;
    Name := 'Edit' + '111';
    Text := '0';
    OnKeyPress := Edit1KeyPress;
    Parent := Panel;
  end;

  with TButton.Create(TabSheet) do
  begin
//    Tag := NumberOfVars;
    Top := 3;
    Left := Panel.ClientWidth - 17 - 8;
    Width := 17;
    Height := 17;
    Anchors := [akTop, akRight];
//    Name := 'ButtonX' + '1';
    Caption := 'X';
    OnClick := Button10Click;
    Parent := Panel;
  end;

  with TMemo.Create(Panel) do
  begin
//    Tag := NumberOfVars;
    Top := Panel.Controls[Panel.ControlCount-1].BoundsRect.Bottom + 8;
    Left := 8;
    Width := TabSheet.ClientWidth - 16;
    Name := 'Memo' + '1';
    Text := '';
    Anchors := Anchors + [akRight];
    Parent := Panel;
  end;

  with TEdit.Create(Panel) do
  begin
//    Tag := NumberOfVars;
    Top := Panel.Controls[Panel.ControlCount-1].BoundsRect.Bottom + 8;
    Left := 8;
    Width := 370;
    Name := 'Edit' + '1';
    Text := '';
    Parent := Panel;
  end;

  with TButton.Create(Panel) do
  begin
    Tag := NumberOfVars;
    Top := Panel.Controls[Panel.ControlCount-1].BoundsRect.Top - 2;
    Left := Panel.Controls[Panel.ControlCount-1].BoundsRect.Right + 8;
    Name := 'Button' + '1';
    Caption := 'Найти';
    OnClick := Button1Click;
    Parent := Panel;
  end;

  with TLabel.Create(Panel) do
  begin
//    Tag := NumberOfVars;
    Top := Panel.Controls[Panel.ControlCount - 1].BoundsRect.Bottom + 19;
    Left := 8;
//    Anchors := [akLeft, akBottom];
    Name := 'Label' + '2';
    Caption := 'Варианты ответов:';
    Parent := Panel;
  end;

  with TButton.Create(Panel) do
  begin
//    Tag := NumberOfVars;
    Top := Panel.Controls[Panel.ControlCount - 1].BoundsRect.Bottom + 8;
    Left := 120;
    Name := 'Button' + '111';
    Caption := 'Добавить';
    OnClick := Button6Click;
    Parent := Panel;
  end;

  ScrollBox := TScrollBox.Create(TabSheet);
  with ScrollBox do
  begin
//    Tag := NumberOfVars;
//    Top := TabSheet.Controls[TabSheet.ControlCount-1].BoundsRect.Bottom + 38;
    Name := 'ScrollBox' + '1';
    Align := alClient;
    Parent := TabSheet;
  end;

  Button6Click(nil);
end;

procedure TForm2.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in ['0'..'9', #8]) then
    Key := #0;
end;

end.

