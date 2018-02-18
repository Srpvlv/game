unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, StdCtrls;

type
  TForm1 = class(TForm)
    WorkImage: TImage;
    BackImage: TImage;
    ReDraw: TButton;
    procedure FormShow(Sender: TObject);
    procedure ReDrawClick(Sender: TObject);
  private
    { Private declarations }
  public
    LevelNom: integer;
    DrawArray: array [0..6,0..8] of integer;
    BufferRect : TRect;
    BufferBmp : TBitmap;
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
var
 i,j:integer;
begin
 //��������� �������� ������
 LevelNom:=1;
 BufferBmp:=TBitmap.Create;
 //�������� ������ ��� ������
 BackImage.Picture.LoadFromFile(options.ImageDirectory.Text+'background\'+inttostr(LevelNom)+'.jpg');
 for i:=0 to 6 do
  for j:=0 to 8 do
   DrawArray[i][j]:=1;
 ReDrawClick(Sender);
end;

procedure TForm1.ReDrawClick(Sender: TObject);
var
 i,j:integer;
begin
 BufferBmp.Width:=80;
 BufferBmp.Height:=80;
 for i:=0 to 6 do
  for j:=0 to 8 do
   if DrawArray[i][j]<>0
    then
      begin
        WorkImage.Canvas.Draw(80*i,80*j, BufferBmp.Canvas);
      end;

end;

end.
