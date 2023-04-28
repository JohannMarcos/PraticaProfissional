unit uConsultaCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsulta, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls;

type
  TConsultaCidades = class(TConsultaPai)
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Pesquisar;                          Override;
    procedure Incluir;                            Override;
    procedure Sair;                               Override;
    Procedure Alterar;                            Override;
    Procedure Excluir;                            Override;
    procedure ConhecaObj (pObj, pCtrl: TObject);  Override;
    procedure SetCadastro (pObj: TObject);        Override;
  end;

var
  ConsultaCidades: TConsultaCidades;

implementation

{$R *.dfm}

{ TConsultaCidades }

procedure TConsultaCidades.Alterar;
begin
  inherited;

end;

procedure TConsultaCidades.ConhecaObj(pObj, pCtrl: TObject);
begin
  inherited;

end;

procedure TConsultaCidades.Excluir;
begin
  inherited;

end;

procedure TConsultaCidades.Incluir;
begin
  inherited;


end;

procedure TConsultaCidades.Pesquisar;
begin
  inherited;

end;

procedure TConsultaCidades.Sair;
begin
  inherited;

end;

procedure TConsultaCidades.SetCadastro(pObj: TObject);
begin
  inherited;

end;

end.
