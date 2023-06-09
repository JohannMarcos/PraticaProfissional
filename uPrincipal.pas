unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, uInterfaces, uPaises, uCtrlPaises, uDM;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    MnCadastros: TMenuItem;
    SbmnPaises: TMenuItem;
    SbmnUF: TMenuItem;
    SbmnCidades: TMenuItem;
    N1: TMenuItem;
    SbmnPessoas: TMenuItem;
    SbmnProdutos: TMenuItem;
    SbmnServišos: TMenuItem;
    Servios1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure SbmnPaisesClick(Sender: TObject);
    procedure SbmnUFClick(Sender: TObject);
    procedure SbmnCidadesClick(Sender: TObject);
  private
    { Private declarations }
    aInter: Interfaces;
    oPais: Paises;
    aCtrlPaises: ctrlPaises;
    aDM: TDM;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}


procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  aInter:= interfaces.CrieObj;
  oPais:= Paises.crieObj;
  aCtrlPaises:= CtrlPaises.CrieObj;
  aDM:= TDM.Create(nil);

  aCtrlPaises.SetDm(aDM);
end;

procedure TfrmPrincipal.SbmnCidadesClick(Sender: TObject);
begin
  aInter.PDCidades(nil, nil);
end;

procedure TfrmPrincipal.SbmnPaisesClick(Sender: TObject);
begin
  aInter.PDPaises(oPais, aCtrlPaises);
end;

procedure TfrmPrincipal.SbmnUFClick(Sender: TObject);
begin
  aInter.PDEstados(nil, nil);
end;

end.
