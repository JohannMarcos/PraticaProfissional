unit uCadastroEstados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastro, Vcl.StdCtrls;

type
  TCadastroEstados = class(TCadastroPai)
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
  CadastroEstados: TCadastroEstados;

implementation

{$R *.dfm}

{ TCadastroEstados }

procedure TCadastroEstados.BloqueiaEdit;
begin
  inherited;

end;

procedure TCadastroEstados.CarregaEdit;
begin
  inherited;

end;

procedure TCadastroEstados.conhecaObj(pObj, pCtrl: TObject);
begin
  inherited;

end;

procedure TCadastroEstados.DesbloqueiaEdit;
begin
  inherited;

end;

procedure TCadastroEstados.LimpaEdit;
begin
  inherited;

end;

procedure TCadastroEstados.Salvar;
begin
  inherited;

end;

end.
