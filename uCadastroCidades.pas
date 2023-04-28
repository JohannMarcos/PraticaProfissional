unit uCadastroCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastro, Vcl.StdCtrls;

type
  TCadastroCidades = class(TCadastroPai)
  private
    { Private declarations }
  public
    { Public declarations }
    procedure conhecaObj (pObj, pCtrl: TObject); override;
    procedure LimpaEdit;        override;
    procedure CarregaEdit;      override;
    procedure BloqueiaEdit;     override;
    procedure DesbloqueiaEdit;  override;
    procedure Salvar;           override;
  end;

var
  CadastroCidades: TCadastroCidades;

implementation

{$R *.dfm}

{ TCadastroCidades }

procedure TCadastroCidades.BloqueiaEdit;
begin
  inherited;

end;

procedure TCadastroCidades.CarregaEdit;
begin
  inherited;

end;

procedure TCadastroCidades.conhecaObj(pObj, pCtrl: TObject);
begin
  inherited;

end;

procedure TCadastroCidades.DesbloqueiaEdit;
begin
  inherited;

end;

procedure TCadastroCidades.LimpaEdit;
begin
  inherited;

end;

procedure TCadastroCidades.Salvar;
begin
  inherited;

end;

end.
