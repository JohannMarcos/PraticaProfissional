unit uConsultaEstados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsulta, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls;

type
  TConsultaEstados = class(TConsultaPai)
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
  ConsultaEstados: TConsultaEstados;

implementation

{$R *.dfm}

{ TConsultaEstados }

procedure TConsultaEstados.Alterar;
begin
  inherited;

end;

procedure TConsultaEstados.ConhecaObj(pObj, pCtrl: TObject);
begin
  inherited;

end;

procedure TConsultaEstados.Excluir;
begin
  inherited;

end;

procedure TConsultaEstados.Incluir;
begin
  inherited;

end;

procedure TConsultaEstados.Pesquisar;
begin
  inherited;

end;

procedure TConsultaEstados.Sair;
begin
  inherited;

end;

procedure TConsultaEstados.SetCadastro(pObj: TObject);
begin
  inherited;

end;

end.
