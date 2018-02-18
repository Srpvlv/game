unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TForm1 = class(TForm)
    WorkImage: TImage;
    BackImage: TImage;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    LevelNom: integer;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
begin
 LevelNom:=1;
end;

end.
