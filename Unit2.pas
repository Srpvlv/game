unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Toptions = class(TForm)
    GroupBox1: TGroupBox;
    ImageDirectory: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  options: Toptions;

implementation

{$R *.dfm}

end.
