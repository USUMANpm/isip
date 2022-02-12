unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Menus, ComCtrls, IniFiles;

type

  TForm2 = class(TForm)
    Label1: TLabel;
    ListBox1: TListBox;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);


  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Types, Unit1;

{$R *.dfm}


procedure TForm2.Button1Click(Sender: TObject);
begin
ListBox1.Items.LoadFromFile('lala.ini');
end;

end.

