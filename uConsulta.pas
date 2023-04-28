unit uConsulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, uFrmPai;

type
  TConsultaPai = class(TfrmPai)
    edtChave: TEdit;
    btnPesquisar: TButton;
    DBGridPai: TDBGrid;
    btnSair: TButton;
    btnExcluir: TButton;
    btnAlterar: TButton;
    btnIncluir: TButton;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Pesquisar;                          virtual ;
    procedure Incluir;                            virtual;
    procedure Sair;                               virtual;
    Procedure Alterar;                            virtual;
    Procedure Excluir;                            virtual;
    procedure ConhecaObj (pObj, pCtrl: TObject);  Override;
    procedure SetCadastro (pObj: TObject);        virtual; abstract;
  end;

var
  ConsultaPai: TConsultaPai;

implementation

{$R *.dfm}

procedure TConsultaPai.Alterar;
begin

end;

procedure TConsultaPai.btnAlterarClick(Sender: TObject);
begin
  Alterar;
end;

procedure TConsultaPai.btnExcluirClick(Sender: TObject);
begin
  Excluir;
end;

procedure TConsultaPai.btnIncluirClick(Sender: TObject);
begin
  Incluir;
end;

procedure TConsultaPai.btnPesquisarClick(Sender: TObject);
begin
  Pesquisar;
end;

procedure TConsultaPai.btnSairClick(Sender: TObject);
begin
  Sair;
end;

procedure TConsultaPai.ConhecaObj(pObj, pCtrl: TObject);
begin

end;

procedure TConsultaPai.Excluir;
begin

end;

procedure TConsultaPai.Incluir;
begin

end;

procedure TConsultaPai.Pesquisar;
begin

end;

procedure TConsultaPai.Sair;
begin
  Close;
end;

end.
