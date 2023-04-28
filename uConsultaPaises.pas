unit uConsultaPaises;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsulta, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, uPaises, uCadastroPaises, uCtrlPaises;

type
  TConsultaPaises = class(TConsultaPai)
  private
    { Private declarations }
    oPais: paises;
    aCtrlPaises:ctrlPaises;

    oCadastroPaises: TCadastroPaises;
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
  ConsultaPaises: TConsultaPaises;

implementation

{$R *.dfm}

procedure TConsultaPaises.Alterar;
begin
  inherited;
  oCadastroPaises.ConhecaObj(oPais, nil);
  oCadastroPaises.ShowModal;
end;

procedure TConsultaPaises.ConhecaObj(pObj, pCtrl: TObject);
begin
  inherited;
  oPais:= Paises(pObj);
  aCtrlPaises:= ctrlPaises(pCtrl);

end;

procedure TConsultaPaises.Excluir;
begin
  inherited;
  oCadastroPaises.ConhecaObj(oPais, nil);
  oCadastroPaises.ShowModal;
end;

procedure TConsultaPaises.Incluir;
begin
  inherited;
  oCadastroPaises.ConhecaObj(oPais, aCtrlPaises);
  oCadastroPaises.CarregaEdit;
  oCadastroPaises.ShowModal;
end;

procedure TConsultaPaises.Pesquisar;
begin
  inherited;

end;

procedure TConsultaPaises.Sair;
begin
  inherited;

end;

procedure TConsultaPaises.SetCadastro(pObj: TObject);
begin
  inherited;
  oCadastroPaises := TCadastroPaises(pObj);

end;

end.
