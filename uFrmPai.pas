unit uFrmPai;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TfrmPai = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ConhecaObj (pObj, pCtrl: TObject); virtual;  abstract;
    function ehNumero (valor: String) : Boolean;
  end;

var
  frmPai: TfrmPai;

implementation

{$R *.dfm}

{ TfrmPai }

function TfrmPai.ehNumero(valor: String): Boolean;
var mValor, code, i:  integer;
    numero: boolean;
begin
  numero:= False;
  if trystrtoint(valor, mValor) then
    numero:= true;
  result := numero;
end;

end.
